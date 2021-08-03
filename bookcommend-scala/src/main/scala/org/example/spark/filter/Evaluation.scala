package org.example.spark.filter

import org.apache.spark.sql.{SaveMode, SparkSession}

object Evaluation {

  def main(args: Array[String]): Unit = {
    val driver = "com.mysql.jdbc.Driver"
    val url = "jdbc:mysql://localhost:3306/db_lp?useSSL=false&useUnicode=true&characterEncoding=utf-8"
    val user = "root"
    val password = "1234"
    val path = "src/data/u.data"
    val spark=SparkSession.builder().master("local[*]").getOrCreate()
    spark.sparkContext.setLogLevel("WARN")
    var df=spark.read.format("csv")
      .option("sep","\t").option("inferSchema",true)
      .load(path).selectExpr("_c0 u_id","_c1 b_id","_c2 score","_c3 type")
    df.createTempView("eval")
    val sql = "select u_id,b_id,score from eval where b_id < 648"
    df = spark.sql(sql)
    df.show()
//    df.write.format("jdbc")
//      .option("driver",driver)
//      .option("url",url)
//      .option("user",user)
//      .option("password",password)
//      .option("dbtable","evaluation")
//      .mode(SaveMode.Append)
//      .save()
  }

}
