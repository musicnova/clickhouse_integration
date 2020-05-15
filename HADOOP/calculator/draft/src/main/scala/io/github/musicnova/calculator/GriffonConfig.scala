package io.github.musicnova.calculator

import org.apache.spark.sql.SparkSession

class GriffonConfig(params: Map[String, String]) {

  lazy val spark: SparkSession = SparkSession.builder().getOrCreate()

}