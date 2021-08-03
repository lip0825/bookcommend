package org.example.spark.filter

import org.apache.spark.sql.{SaveMode, SparkSession}

object BookFilter {
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
      .option("dbtable","book_info")
      .format("jdbc").load()

    df = df.drop("id")
    df = df.where("grade > 0 and page_num > 0")
    df = df.dropDuplicates()
    df.createTempView("book")
    //df.printSchema()
    val sql = "select * from book where price like '%元'"
    df = spark.sql(sql)
    df.show()
//    df.write.format("jdbc")
//      .option("driver",driver)
//      .option("url",url)
//      .option("user",user)
//      .option("password",password)
//      .option("dbtable","book_filt")
//      .mode(SaveMode.Append)
//      .save()


  }
}
