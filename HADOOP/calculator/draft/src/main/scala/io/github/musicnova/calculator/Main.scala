package io.github.musicnova.calculator

import org.apache.spark.sql.SparkSession
import org.apache.spark.internal.Logging

import io.github.musicnova.calculator.loaders.SimpleLoader
import io.github.musicnova.calculator.loggers.SimpleLogger
import io.github.musicnova.calculator.models.SimpleModel
import io.github.musicnova.calculator.savers.SimpleSaver
import scala.util.Try

trait Profiler {
  self: Logging =>

  def timeit[T](comment: String)(block: => T): T = {

    val t1 = System.currentTimeMillis()
    val res1 = Try {
      block
    }
    val t2 = System.currentTimeMillis()
    self.logInfo(s"${if (comment == "") "Elapsed time:" else comment} ${formatTimeInterval(t1, t2)}")
    res1.get
  }

  def formatTimeInterval(start: Long, end: Long): String = {
    val intr = end - start
    val hours = math.floor(intr / 3600000)
    val minutes = math.floor((intr - hours * 3600000) / 60000)
    val seconds = (intr - hours * 3600000 - minutes * 60000) / 1000
    s"${hours}h ${minutes}m ${seconds}s"
  }
}

abstract class GenericBaseMainClass[T <: GriffonConfig] extends Logging with Profiler {

  def main(args: Array[String]): Unit = {
    val params = args
      .map(_.split("="))
      .filter(_.length > 0)
      .map(x => if (x.length > 1) (x(0), x(1)) else (x(0), ""))
      .toMap[String, String]

    val config = obtainConfig(params)

    timeit("Total time for module is ") {
      run(config)
    }
  }

  def obtainConfig(params: Map[String, String]): T

  def run(config: T): Unit

}

abstract class BaseMainClass extends GenericBaseMainClass[GriffonConfig] {

  override def obtainConfig(params: Map[String, String]): GriffonConfig = {
    new GriffonConfig(params)
  }

}

abstract class BaseMainClassWithSpark(appName: String) extends BaseMainClass {

  override def run(config: GriffonConfig): Unit = {
    val spark = SparkSession
      .builder()
      .enableHiveSupport()
      .config("hive.exec.dynamic.partition", "true")
      .config("hive.exec.dynamic.partition.mode", "nonstrict")
      .appName(appName)
      .getOrCreate()
    run(spark, config)
  }

  def run(spark: SparkSession, config: GriffonConfig): Unit

}

object Main extends BaseMainClassWithSpark("Calculator") {

  override def run(spark: SparkSession, config: GriffonConfig): Unit = {
    val simpleLoader = new SimpleLoader()
    val simpleLogger = new SimpleLogger(spark, config)
    val simpleModel = new SimpleModel()
    val simpleSaver = new SimpleSaver(simpleLogger)
    val chunkNum = 1
    val emptyDF = simpleModel.buildEmpty()(spark, config)
    val sourceMP = simpleLoader.loadResource("mp_stg.csv", "mp_stg"
      , "sbx_retail_mp_FT_CLNT_AGGR_MONTH")(spark).getOrElse(emptyDF)
    val sources = Map("mp" -> sourceMP)
    val paramsIn = simpleModel.buildParams()
    val destinations = simpleModel.prepareTables(sources, paramsIn, chunkNum)(spark, config)
    val paramsOut = simpleModel.buildParams()
    val result = simpleModel.buildTable(destinations, paramsOut, "features")(spark, config).getOrElse(emptyDF)
    simpleSaver.saveDataFrames(Map("result" -> result), chunkNum)(spark, config)
  }



}