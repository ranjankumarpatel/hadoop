package org.scala.pract.gmr

import org.apache.spark.SparkContext
import org.apache.spark.SparkContext._
import org.apache.spark.SparkConf

object GMRScore {
  def main(args: Array[String]): Unit = {

    System.setProperty("hadoop.home.dir", "F:/spark/winutils-master/winutils-master/hadoop-2.6.0/bin")

    val conf = new SparkConf().setAppName("chkspark").setMaster("local[*]")
    val sc = new SparkContext(conf)

    val serverDir: String = "D:/HashiCorp"

    case class Score(name: String, ethics: Float, engage: Float)

    val scoreText = sc.textFile(serverDir + "/gmr_score.csv")
    val scoreNoHead = scoreText.filter { line => !line.contains("Emp Name") }
    val scoreData = scoreNoHead.map(_.split(","))
    for (arr <- scoreData.collect()) {
      println(arr(0), arr(27), arr(28))
    }
    val engageScore = scoreData.map(attributes => Score(attributes(0), attributes(27).trim.toFloat, attributes(28).trim.toFloat))

    engageScore.collect()

  }
}
