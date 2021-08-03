package org.example.spark.recommend

import org.apache.spark.ml.recommendation.ALS
import org.apache.spark.sql.{SaveMode, SparkSession}

object BookRecommend {

  def main(args: Array[String]): Unit = {

    val spark = SparkSession.builder().master("local").getOrCreate()
    val driver = "com.mysql.jdbc.Driver"
    val url = "jdbc:mysql://localhost:3306/db_lp?useSSL=false&useUnicode=true&characterEncoding=utf-8"
    val user = "root"
    val password = "1234"

    var eval_df = spark.read
      .option("driver",driver)
      .option("url",url)
      .option("user",user)
      .option("password",password)
      .option("dbtable","evaluation")
      .format("jdbc").load()
    //eval_df.show()

    var book_df = spark.read
      .option("driver",driver)
      .option("url",url)
      .option("user",user)
      .option("password",password)
      .option("dbtable","book_context")
      .format("jdbc").load()
    //book_df.show()

    eval_df.createTempView("eval")
    val sql = "select u_id,b_id,score from eval"
    eval_df = spark.sql(sql)
    //eval_df.show()

    val als = new ALS().setMaxIter(3)
      .setUserCol("u_id")
      .setItemCol("b_id")
      .setRatingCol("score")

    val model = als.fit(eval_df)
    val recs_df = model.recommendForAllUsers(3)
//    recs_df.show(3,false)
//    recs_df.printSchema()
    recs_df.createTempView("recs")
    val sql1 = "select u_id,recommendations[0].b_id b_id0,recommendations[1].b_id b_id1,recommendations[2].b_id b_id2 from recs"

    val rating_df = spark.sql(sql1)
//    rating_df.show()
    rating_df.createTempView("rating")

    book_df.createTempView("book")
    val sql2 = "select u_id,b_name,b_id from book b,rating r where b.b_id in (b_id0,b_id1,b_id2)"
    val final_df = spark.sql(sql2)
    //final_df.show()
    final_df.createTempView("recommend")

    val sql3 = "select u_id,b_id from recommend"
    val recommend_df = spark.sql(sql3)
    recommend_df.show()
//    recommend_df.write.format("jdbc")
//      .option("driver",driver)
//      .option("url",url)
//      .option("user",user)
//      .option("password",password)
//      .option("dbtable","recommend")
//      .mode(SaveMode.Append)
//      .save()
  }

}
