package org.scala.pract.gmr

object GMRScoreSes {
  def main(args: Array[String]): Unit = {
    import org.apache.spark.sql.SparkSession

    val spark = SparkSession
      .builder().master("local[*]")
      .appName("chkspark")
      .getOrCreate()

    // For implicit conversions like converting RDDs to DataFrames
    import spark.implicits._

    case class Score(name: String, ethics: Float, engage: Float)

    val serverDir: String = "D:/HashiCorp"

    val score = spark.read.csv(serverDir + "/gmr_score.csv")
  }
}
