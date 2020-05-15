package io.github.musicnova.calculator.loggers

import org.apache.spark.sql.{DataFrame, SaveMode, SparkSession}
import io.github.musicnova.calculator.GriffonConfig

class SimpleLogger(protected val spark: SparkSession, protected val config: GriffonConfig) extends Serializable {

  def logEvent(schemaName: String, tableName: String, targetScchemaTableName: String): String = {
    "event"
  }

}