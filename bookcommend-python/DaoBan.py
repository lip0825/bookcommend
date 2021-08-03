import random

import pymysql as pymysql
import requests
import re
from requests import RequestException
from bs4 import BeautifulSoup
import time

# connection = pymysql.connect(host='localhost', user='root', password='1234', charset='utf8')
# with connection.cursor() as cursor:
#     sql = "USE db_lp;"
#     cursor.execute(sql)
# connection.commit()


def get_one_page(url):
    try:
        head = ['Mozilla/5.0', 'Chrome/78.0.3904.97', 'Safari/537.36']
        headers = {
            'user-agent': head[random.randint(0, 2)]
        }
        response = requests.get(url, headers=headers)
        if response.status_code == 200:
            return response.text
        return None
    except RequestException:
        return None


def get_page_url(html, selector):

    # html = get_one_page(url)
    if html is not None:
        soup = BeautifulSoup(html, 'lxml')
        res = soup.select(selector)
        pattern = re.compile('href="(.*?)"', re.S)
        src = re.findall(pattern, str(res))
        return src
    else:
        return []


# 正则表达式搜索
def get_request_res(pattern_text, html):
    pattern = re.compile(pattern_text, re.S)
    res = re.findall(pattern, html)
    if len(res) > 0:
        return res[0].split('<', 1)[0][1:]
    else:
        return 'NULL'


# 页面标签搜索
def get_bs_res(selector, html):

    soup = BeautifulSoup(html, 'lxml')
    res = soup.select(selector)
    if res is None:
        return 'NULL'
    elif len(res) == 0:
        return 'NULL'
    else:
        return res[0].string


def get_bs_img_res(selector, html):
     soup = BeautifulSoup(html, 'lxml')
     res = soup.select(selector)
     if len(res) != 0:
         return str(res[0])
     else:
         return 'NULL'


def parse_one_page(html):

    book_info = []

    book_name = get_bs_res('div > h1 > span', html)
    print('Book-name', book_name)
    # book_info['book_name'] = book_name
    book_info.append(book_name)
    # info > a:nth-child(2)

    author = get_bs_res('div > span:nth-child(1) > a', html)
    if author is None:
        author = get_bs_res('#info > a:nth-child(2)', html)
    print('Author', author)
    author = author.replace(" ", "")
    author = author.replace("\n", "")
    # book_info['author'] = author
    book_info.append(author)

    publisher = get_request_res(u'出版社:</span>(.*?)<br/>', html)
    print('Publisher', publisher)
    # book_info['publisher'] = publisher
    book_info.append(publisher)

    publish_time = get_request_res(u'出版年:</span>(.*?)<br/>', html)
    print('Publish-time', publish_time)
    # book_info['publish_time'] = publish_time
    book_info.append(publish_time)

    img_label = get_bs_img_res('#mainpic > a > img', html)
    pattern = re.compile('src="(.*?)"', re.S)
    img = re.findall(pattern, img_label)
    if len(img) != 0:
        print('img-src', img[0])
        # book_info['img_src'] = img[0]
        book_info.append(img[0])
    else:
        # book_info['img_src'] = 'NULL'
        book_info.append('NULL')

    page_num = get_request_res(u'页数:</span>(.*?)<br/>', html)
    print('page_num', page_num)
    # book_info['page_num'] = page_num
    book_info.append(page_num)

    price = get_request_res(u'定价:</span>(.*?)<br/>', html)
    print('price', price)
    # book_info['price'] = price
    book_info.append(price)

    ISBN = get_request_res(u'ISBN:</span>(.*?)<br/>', html)
    print('ISBN', ISBN)
    # book_info['ISBN'] = ISBN
    book_info.append(ISBN)

    book_intro = get_bs_res('#link-report > div:nth-child(1) > div > p', html)
    print('book introduction', book_intro)
    # book_info['book_intro'] = book_intro
    book_info.append(book_intro)

    grade = get_bs_res('div > div.rating_self.clearfix > strong', html)
    print(grade)
    # book_info['grade'] = grade
    book_info.append(grade)

    evaluation_num = get_bs_res('#interest_sectl > div > div.rating_self.clearfix > div > div.rating_sum > span > a > span', html)
    print('evaluation_num', evaluation_num)
    # book_info['evaluation_num'] = evaluation_num
    book_info.append(evaluation_num)

    five_stars = get_bs_res('#interest_sectl > div > span:nth-child(5)', html)
    print('five-stars', five_stars)
    # book_info['five_stars'] = five_stars
    book_info.append(five_stars)

    four_stars = get_bs_res('#interest_sectl > div > span:nth-child(9)', html)
    print('four-stars', four_stars)
    # book_info['four_stars'] = four_stars
    book_info.append(four_stars)

    three_stars = get_bs_res('#interest_sectl > div > span:nth-child(13)', html)
    print('three-stars', three_stars)
    # book_info['three_stars'] = three_stars
    book_info.append(three_stars)

    two_stars = get_bs_res('#interest_sectl > div > span:nth-child(17)', html)
    print('2-stars', two_stars)
    # book_info['two_stars'] = two_stars
    book_info.append(two_stars)

    one_stars = get_bs_res('#interest_sectl > div > span:nth-child(21)', html)
    print('one-stars', one_stars)
    # book_info['one_stars'] = one_stars
    book_info.append(one_stars)

    return book_info


if __name__ == '__main__':
    for page_index in range(0, 50):
        page_url = 'https://book.douban.com/tag/%E5%A4%96%E5%9B%BD%E6%96%87%E5%AD%A6?start=' + str(page_index * 20) + '&type=T'
        page_html = get_one_page(page_url)
        for book_index in range(1, 21):
            selector = '#subject_list > ul > li:nth-child(' + str(book_index) + ') > div.info > h2'
            # print(selector)
            book_url = get_page_url(page_html, selector)
            # print(book_url)
            book_html = get_one_page(book_url[0])
            # print(book_html)
            book_info = parse_one_page(book_html)
            # print(book_info)
            # with connection.cursor() as cursor:
            #     sql = "select * from book_info where ISBN = %s"
            #     if cursor.execute(sql,book_info[7]) == 0:
            #         sql = '''INSERT INTO book_info (
            #     book_name, author, publisher, publish_time, img_src, page_num, price, ISBN, book_intro,
            #     grade, evaluation_num, five_stars, four_stars, three_stars, two_stars, one_stars)
            #     VALUES (%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s)'''
            #         cursor.execute(sql, book_info)
            #     connection.commit()
            time.sleep(2)

# if connection.open:
#     connection.close()