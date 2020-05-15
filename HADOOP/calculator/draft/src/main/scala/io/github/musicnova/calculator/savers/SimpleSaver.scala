package io.github.musicnova.calculator.savers

import io.github.musicnova.calculator.GriffonConfig
import io.github.musicnova.calculator.loggers.SimpleLogger

import org.apache.spark.sql.DataFrame
import org.apache.spark.sql.SparkSession
import io.github.musicnova.calculator.GriffonConfig

import scala.util.Try

class SimpleSaver(simpleLogger: SimpleLogger) {

  case class SaverResult(error: Try[Unit], sourceSchemaTableName: String, targetSchemaTableName: String)

  def saveDataFrames(dataFrameNames: Map[String, DataFrame], chunkNum: Integer)(implicit spark: SparkSession, config: GriffonConfig): List[SaverResult] = {
    List[SaverResult]()
  }

}