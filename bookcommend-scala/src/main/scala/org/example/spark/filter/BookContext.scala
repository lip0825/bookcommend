package org.example.spark.filter

import org.apache.spark.sql.{SaveMode, SparkSession}

object BookContext {
  def main(args: Array[String]): Unit = {

    val spark = SparkSession.builder().master("local").getOrCreate()
    val driver = "com.mysql.jdbc.Driver"
    val url = "jdbc:mysql://localhost:3306/db_lp?useSSL=false&useUnicode=true&characterEncoding=utf-8"
    val user = "root"
    val password = "1234"

    var df = spark.read
      .option("driver",driver)
      .option("url",url)
      .option("user",user)
      .option("password",password)
      .option("dbtable","book_filt")
      .format("jdbc").load()

    df = df.drop("id")
    df.createTempView("book")
    val sql = "select book_name as b_name,author as b_author,publisher as b_publisher,publish_time as b_ptime,img_src as b_img," +
      "page_num as b_pnum, price as b_price ,ISBN as b_ISBN,grade as b_grade,evaluation_num as b_enum from book"
    df = spark.sql(sql)
    df.show()
//    df.write.format("jdbc")
//      .option("driver",driver)
//      .option("url",url)
//      .option("user",user)
//      .option("password",password)
//      .option("dbtable","book_context")
//      .mode(SaveMode.Append)
//      .save()
  }
}
