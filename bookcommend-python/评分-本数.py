from pyecharts import options as opts
from pyecharts.charts import Bar
from pyecharts.faker import Faker
from pymysql import *

namelist = []
numlist = []

def getdata():
    conn = connect(host='localhost',
                   port=3306,
                   user='root',
                   password='1234',
                   database='db_lp',
                   charset='utf8')
    cursor = conn.cursor()
    try:
        sql_name = """ SELECT b_grade FROM statistics """
        cursor.execute(sql_name)
        names = cursor.fetchall()
        for name in names:
            namelist.append(name[0])
        # print(namelist)
        sql_num = """ SELECT count FROM statistics """
        cursor.execute(sql_num)
        nums = cursor.fetchall()
        for num in nums:
            numlist.append(num[0])
        # print(numlist)
    except:
        print("未查询到数据！")
        conn.rollback()
    finally:
        conn.close()

def drawecharts():
    bar = Bar()
    bar.add_xaxis(namelist)
    bar.add_yaxis("图书本数", numlist, color=Faker.rand_color())
    bar.set_global_opts(
        title_opts=opts.TitleOpts(title="评分-本数"),
        datazoom_opts=[opts.DataZoomOpts(), opts.DataZoomOpts(type_="inside")],
    )
    bar.render("评分-本数.html")


if __name__ == '__main__':
    getdata()
    drawecharts()
