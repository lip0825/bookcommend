package org.example.spark.recommend

import org.apache.spark.ml.clustering.KMeans
import org.apache.spark.ml.evaluation.ClusteringEvaluator
import org.apache.spark.sql.SparkSession

object ItemCF {
  def main(args: Array[String]): Unit = {

    val spark = SparkSession.builder().master("local").getOrCreate()
    val driver = "com.mysql.jdbc.Driver"
    val url = "jdbc:mysql://localhost:3306/db_lp?useSSL=false&useUnicode=true&characterEncoding=utf-8"
    val user = "root"
    val password = "1234"

    var dataset = spark.read
      .option("driver",driver)
      .option("url",url)
      .option("user",user)
      .option("password",password)
      .option("dbtable","evaluation")
      .format("jdbc").load()


    // Trains a k-means model.
    val kmeans = new KMeans().setK(2).setSeed(1L)
    val model = kmeans.fit(dataset)

    // Make predictions
    val predictions = model.transform(dataset)

    // Evaluate clustering by computing Silhouette score
    val evaluator = new ClusteringEvaluator()

    val silhouette = evaluator.evaluate(predictions)
    println(s"Silhouette with squared euclidean distance = $silhouette")

    // Shows the result.
    println("Cluster Centers: ")
    model.clusterCenters.foreach(println)

  }

}
