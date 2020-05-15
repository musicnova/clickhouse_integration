package io.github.musicnova.calculator.models

import java.text.SimpleDateFormat
import java.time.LocalDate
import java.time.format.DateTimeFormatter
import java.util.Locale

import org.apache.spark.sql.types.{StringType, StructField, StructType}
import org.apache.spark.sql.{DataFrame, Row, SparkSession, functions => F}
import io.github.musicnova.calculator.GriffonConfig

import scala.util.Try

class SimpleModel {

  def prepareTables(dataFramesNames: Map[String, DataFrame]
                   , params: Map[String, String], chunkNum: Integer)(implicit spark: SparkSession
                   , config: GriffonConfig): Map[String, List[DataFrame]] = {
    val dfEmpty = buildEmpty()(spark, config)
    val defaultDay = LocalDate.now().withDayOfMonth(1)
    val formDefault = new SimpleDateFormat("yyyy-MM-dd")
    val defaultDttm = formDefault.format(defaultDay)
    val startDttm = params.getOrElse("first_day_of_month", defaultDttm)
    val formatDay = DateTimeFormatter.ofPattern("yyyy-MM-dd").withLocale(Locale.US)
    val startDay = LocalDate.parse(startDttm, formatDay)
    val reportDays = (1 to 31).toList.map(x => startDay.withDayOfMonth(x)).filter(d => d.getMonth == startDay.getMonth)
    val rddReport = spark.sparkContext.parallelize(reportDays.map(Row(_)))
    val dfReport = spark.createDataFrame(rddReport, StructType(List(StructField("REPORT_DT"
      , StringType)))).withColumn("join_num", F.lit(1))

    val dfSbxRetailMpFtClntAggrMonth = dataFramesNames.getOrElse("mp", dfEmpty).withColumn("num", F.lit(1)).join(dfReport
    , F.col("num") === dfReport.col("join_num"), "inner").withColumn("hash_num"
    , F.hash(F.col("REPORT_DT"), F.col("CLIENT_DK")).mod(F.lit(16))).repartition(F.col("hash_num"))

    val rddMp = spark.sparkContext.parallelize((0 to 1).toList.map(x => Row(x.toString)))
    val dfMp = spark.createDataFrame(rddMp, StructType(List(StructField("REPORT_DT", StringType))))
    Map("features" -> List[DataFrame](dfMp))
  }

  def buildParams(): Map[String, String] = {
    Map[String, String]()
  }

  def buildEmpty()(implicit spark: SparkSession, config: GriffonConfig): DataFrame = {
    spark.emptyDataFrame
  }

  def buildTable(tableMap: Map[String, List[DataFrame]]
                , params: Map[String, String], resultName: String)(implicit spark: SparkSession
                , config: GriffonConfig) : Try[DataFrame] = {
    Try {
      val df = spark.emptyDataFrame
      df
    }
  }

}