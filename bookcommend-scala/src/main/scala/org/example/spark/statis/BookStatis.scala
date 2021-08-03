package org.example.spark.statis

import org.apache.spark.sql.{DataFrame, SaveMode, SparkSession}

object BookStatis {

  val driver = "com.mysql.jdbc.Driver"
  val url = "jdbc:mysql://localhost:3306/db_lp?useSSL=false&useUnicode=true&characterEncoding=utf-8"
  val user = "root"
  val password = "1234"

  def getStatis(spark:SparkSession):DataFrame = {


    val book_df = spark.read
      .option("driver",driver)
      .option("url",url)
      .option("user",user)
      .option("password",password)
      .option("dbtable","book_context")
      .format("jdbc").load()
    book_df
  }




  def main(args: Array[String]): Unit = {
    val spark = SparkSession.builder().master("local").getOrCreate()
    val book_df = getStatis(spark)
    book_df.createTempView("book")
    // df.show()
    val sql = "select b_grade,count(*) as count from book where b_grade between 6 and 10 and b_enum > 100 GROUP BY b_grade ORDER BY b_grade"
    val grade_df = spark.sql(sql)
    grade_df.show()

//    grade_df.write.format("jdbc")
//      .option("driver",driver)
//      .option("url",url)
//      .option("user",user)
//      .option("password",password)
//      .option("dbtable","statistics")
//      .mode(SaveMode.Append)
//      .save()


  }

}
