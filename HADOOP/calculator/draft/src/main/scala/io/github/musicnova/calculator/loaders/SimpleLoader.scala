package io.github.musicnova.calculator.loaders

import java.sql.Timestamp

import org.apache.spark.sql.types._
import org.apache.spark.sql.{Row, SparkSession}
import org.apache.spark.sql.DataFrame

import scala.util.Try

class SimpleLoader {

  def loadResource(csvFile: String, hdfsSchemaTable: String, sheetName: String = "")(implicit spark: SparkSession): Try[DataFrame] = {
    Try {
      val schema = spark.table(hdfsSchemaTable).schema
      val df = spark.emptyDataFrame
      df
    }
  }

  def mapper(cl: Any, dt: StructField): Any = {
    dt.dataType match {
      case dt: ByteType => cl.asInstanceOf[Byte]
      case dt: ShortType => cl.asInstanceOf[Short]
      case dt: IntegerType => math.round(cl.asInstanceOf[Double])
      case dt: LongType => math.round(cl.asInstanceOf[Double])
      case dt: FloatType => cl.asInstanceOf[Float]
      case dt: DoubleType => cl.asInstanceOf[Double]
      // case dt: DecimalType => BigDecimal(1)
      case dt: StringType => cl.toString
      // case dt: BinaryType => cl.asInstanceOf[Binary]
      case dt: BooleanType => cl.asInstanceOf[Boolean]
      case dt: TimestampType => new Timestamp(cl.asInstanceOf[java.util.Date].getTime)
      case dt: DateType => cl.asInstanceOf[java.sql.Date]
      case _ => Row.empty
    }
  }
}