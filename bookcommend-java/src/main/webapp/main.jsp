<%--
  Created by IntelliJ IDEA.
  User: lip
  Date: 2021/7/1
  Time: 16:23
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>

    <meta charset="utf-8">
    <script type="text/javascript" src="https://assets.pyecharts.org/assets/echarts.min.js"></script>
    <script src="https://cdn.bootcss.com/jquery/3.4.1/jquery.js"></script>
    <title>图书推荐</title>
    <style>
        div {
            display: block;
            margin: 0px;
            padding: 0px;

        }
        a:link {text-decoration:none;}
        .nav-wrap {
            border-color: #e9e9e2;
            border-bottom: 1px solid #e5ebe4;
        }
        .nav-primary{
            width: 1040px;
            margin: 0 auto;
            overflow: visible !important;
            position: relative;
            padding: 10px 0 5px;
            zoom: 1;
        }
        .nav-logo a{
            font-size: 20px;
        }
        .nav-search {
            margin-left: 145px;
            overflow: visible !important;
            position: relative;
            zoom: 1;
            padding: 10px 0 15px 0;
        }
        .nav-search fieldset {
            border: none;
            padding: 0;
            margin: 0;
            position: static;
        }
        .nav-search legend {
            display: none;
        }
        .nav-search label {
            position: absolute;
            left: 11px;
            top: 10px;
            line-height: 30px;
            cursor: text;
            color: #bbb;
            width: auto;
        }
        .nav-search .inp {
            float: left;
            width: 470px;
            height: 34px;
            text-align: center;
            margin-right: -3px;
            cursor: text;
        }
        .nav-search .inp input {
            background: #fff;
            width: 96%;
            margin: 0;
            text-align: left;
            height: 30px;
            padding-left: 10px;
            height: 28px\9;
            line-height: 28px\9;
            outline: none;
        }
        .nav-search .inp-btn {
            position: relative;
            width: 50px;
            height: 34px;
            zoom: 1;
            overflow: hidden;
        }
        .nav-search .inp-btn input {
            width: 100%;
            height: 100%;


            cursor: pointer;
        }
        form {
            margin: 0;
            padding: 0;
            border: 0px;
        }
        .list-summary {
            font-size: 0;
            margin-bottom: -30px;
        }
        .bd li{
            width: 370px;
            height: 160px;
        }
        .bd li img{
            width: 90px;
            height: 120px;
        }
        .list-col li{float:none;display:inline-block;*display:inline;zoom:1;vertical-align:top}
        .list-col2 li{width:337px}.list-summary{font-size:0;margin-bottom:-30px}
        .list-summary li{margin-bottom:30px}
        .list-summary .cover{float:left;margin-right:18px}
        .list-summary .info{font-size:13px;margin-right:20px}
        .list-summary .info p{margin:0;word-wrap:break-word}
        .list-summary .title{font-size:15px;height:auto;margin:0;line-height:auto;background:none}
        .list-summary .extra-info{color:#aaa}
        .list-summary .reviews{color:#666;clear:both;padding-top:15px}

    </style>
</head>
<body>
<div class="nav-wrap">
    <div class="nav-primary">
        <div class="nav-logo">
            <a href="">图书搜索</a>
        </div>
        <div class="nav-search">
                <fieldset>
                    <label for="inp-query">
                    </label>
                    <!-- 搜素框 -->
                    <div class="inp"><input id="inp-query" name="ISBN" size="22" maxlength="60" placeholder="书名、ISBN" value="" ></div>
                    <!-- 提交点击 -->
                    <div class="inp-btn">
                        <input id="sbumitBtn" type="button" value="搜索">
                    </div>
                </fieldset>
        </div>
    </div>
    <div class="section popular-books">
        <div class="hd">
            <h2>
                <span>最受关注图书榜</span>
            </h2>
        </div>
        <div class="bd">
            <ul class="list-col list-col2 list-summary s" data-dstat-areaid="61" data-dstat-mode="click,expose">
                <!-- 第一本推荐书      -->
                <li class="" id="item_one">
                    <div class="cover">
                        <!-- 图片跳转 -->
                            <img id="item_first_img" src="../image/1.jpg" alt="心灵侦探城塚翡翠" class="">
                    </div>
                    <div class="info">
                        <h4 class="title" id="item_first_name">
                            <!-- 书名跳转 -->
                           心灵侦探城塚翡翠
                        </h4>
                        <p class="entry-star-small">
                                    <span class="allstar45 star-img">
                                    </span>
                            <!-- 评分 -->
                            <span class="average-rating" id="item_first_rank">
                                    8.3
                                    </span>
                        </p>
                        <!-- 作者 -->
                        <p class="author" id="item_first_author">
                            作者：相泽沙呼
                        </p>

                    </div>
                </li>

                <li class="" id="item_two">
                    <div class="cover">
                            <img id="item_second_img" src="../image/1.jpg" alt="心灵侦探城塚翡翠" class="">
                    </div>
                    <div class="info">
                        <h4 class="title" id="item_second_name">
                           心灵侦探城塚翡翠
                        </h4>
                        <p class="entry-star-small">
                                    <span class="allstar45 star-img">
                                    </span>
                            <span class="average-rating" id="item_second_rank">
                                    8.3
                                    </span>
                        </p>
                        <p class="author" id="item_second_author">
                            作者：相泽沙呼
                        </p>

                    </div>
                </li>

                <li class="" id="item_three">
                    <div class="cover">
                            <img id="item_third_img" src="" alt="心灵侦探城塚翡翠" class="">
                    </div>
                    <div class="info">
                        <h4 class="title" id="item_third_name">
                           心灵侦探城塚翡翠
                        </h4>
                        <p class="entry-star-small">
                                    <span class="allstar45 star-img">
                                    </span>
                            <span class="average-rating" id="item_third_rank">
                                    8.3
                                    </span>
                        </p>
                        <p class="author"  id="item_third_author">
                            作者：相泽沙呼
                        </p>

                    </div>
                </li>
            </ul>
        </div>
    </div>
</div>
<div id="feb8291c787443b081b8ebff26c8fdf0" class="chart-container" style="width:600px; height:500px; margin-bottom:30px;display: block; float: left;"></div>
<div id="c4b184619bf649be8a064d4cff88af08" class="chart-container" style="width:600px; height:500px;display: block; float: left;"></div>
<script>
    window.onload=function(){
        initFn()
    }
    $("#item_one").click(()=>{
        let bookList = window.res.bookList[0];
        console.log(window.res.bookList[0]);
        let book = [];
        book.push(bookList);
        sessionStorage.setItem("res",JSON.stringify(book));
        window.location.href="/book.jsp"
    })
    $("#item_two").click(()=>{
        let bookList = window.res.bookList[1];
        console.log(window.res.bookList[1]);
        let book = [];
        book.push(bookList);
        sessionStorage.setItem("res",JSON.stringify(book));
        window.location.href="/book.jsp"
    })
    $("#item_three").click(()=>{
        let bookList = window.res.bookList[2];
        console.log(window.res.bookList[2]);
        let book = [];
        book.push(bookList);
        sessionStorage.setItem("res",JSON.stringify(book));
        window.location.href="/book.jsp"
    })
    $("#sbumitBtn").click(()=>{
        getSearch();
    })
    function initFn(){
        $.ajax({
            url:'/selectRecommend/'+2,
            method:'GET',
            data:null,
            success:function (res){
                window.res = res
                $("#item_first_name").text(res.bookList[0].name);
                $("#item_first_rank").text(res.bookList[0].grade);
                $("#item_first_author").text(res.bookList[0].author);
                $("#item_first_img").attr("src",res.bookList[0].img);

                $("#item_second_name").text(res.bookList[1].name);
                $("#item_second_rank").text(res.bookList[1].grade);
                $("#item_second_author").text(res.bookList[1].author);
                $("#item_second_img").attr("src",res.bookList[1].img);

                $("#item_third_name").text(res.bookList[2].name);
                $("#item_third_rank").text(res.bookList[2].grade);
                $("#item_third_author").text(res.bookList[2].author);
                $("#item_third_img").attr("src",res.bookList[2].img);
            }
        })
    }
    function reqFn(url,data){
        let searchUrl = url;
        let searchData = data;
        $.ajax({
            url:searchUrl,
            method:'GET',
            data:searchData,
            success:function (res){
                console.log(res)
                sessionStorage.setItem("res",JSON.stringify(res));
                window.location.href="/book.jsp"
            }
        })
    }
    function getSearch () {
        let content = $("#inp-query").val();
        let url = '/selectBookByISBNOrName';
        let data = {
            ISBN : content,
            name:  content
        }
        reqFn(url,data);
    }
    var chart_feb8291c787443b081b8ebff26c8fdf0 = echarts.init(
        document.getElementById('feb8291c787443b081b8ebff26c8fdf0'), 'white', {renderer: 'canvas'});
    var chart_c4b184619bf649be8a064d4cff88af08 = echarts.init(
        document.getElementById('c4b184619bf649be8a064d4cff88af08'), 'white', {renderer: 'canvas'});

    var option_feb8291c787443b081b8ebff26c8fdf0 = {
        "animation": true,
        "animationThreshold": 2000,
        "animationDuration": 1000,
        "animationEasing": "cubicOut",
        "animationDelay": 0,
        "animationDurationUpdate": 300,
        "animationEasingUpdate": "cubicOut",
        "animationDelayUpdate": 0,
        "color": [
            "#6d8346",
            "#c23531",
            "#2f4554",
            "#61a0a8",
            "#d48265",
            "#749f83",
            "#ca8622",
            "#bda29a",
            "#6e7074",
            "#546570",
            "#c4ccd3",
            "#f05b72",
            "#ef5b9c",
            "#f47920",
            "#905a3d",
            "#fab27b",
            "#2a5caa",
            "#444693",
            "#726930",
            "#b2d235",
            "#6d8346",
            "#ac6767",
            "#1d953f",
            "#6950a1",
            "#918597"
        ],
        "series": [
            {
                "type": "bar",
                "name": "\u8bc4\u5206",
                "legendHoverLink": true,
                "data": [
                    "8.8",
                    "8.4",
                    "8.3",
                    "8.9",
                    "8.7",
                    "8.1",
                    "7.8",
                    "9.5",
                    "8.8",
                    "8.3",
                    "8.1",
                    "9.2",
                    "9.4",
                    "8.4",
                    "8.7",
                    "8",
                    "8.6",
                    "8.7",
                    "8.5",
                    "9.1",
                    "8.7",
                    "9.1",
                    "8.7",
                    "8.4",
                    "8.5",
                    "8.2",
                    "8.6",
                    "9.1",
                    "8.4",
                    "8.9",
                    "8.9",
                    "8.8",
                    "8.1",
                    "8.1",
                    "8.1",
                    "8.7",
                    "9.1",
                    "8.6",
                    "8.9",
                    "8.9",
                    "8.8",
                    "8.8",
                    "8",
                    "8.2",
                    "8.7",
                    "8.2",
                    "9.1",
                    "9",
                    "8",
                    "9.2",
                    "8.1",
                    "8.5",
                    "8.1",
                    "8.7",
                    "8.3",
                    "8.8",
                    "9.6",
                    "9.1",
                    "8.2",
                    "9",
                    "7.6",
                    "9.6",
                    "9",
                    "8.4",
                    "9.1",
                    "9.2",
                    "7.8",
                    "9.3",
                    "7.8",
                    "8.7",
                    "8",
                    "8.8",
                    "9",
                    "9",
                    "8.8",
                    "8.1",
                    "7.8",
                    "9.1",
                    "8.6",
                    "9.5",
                    "9.2",
                    "8.6",
                    "8.5",
                    "8.5",
                    "7.8",
                    "7.2",
                    "8.4",
                    "8.4",
                    "8.7",
                    "8.9",
                    "9.1",
                    "8.9",
                    "9",
                    "9.5",
                    "8.1",
                    "8.7",
                    "8.9",
                    "8.6",
                    "8.5",
                    "9.5",
                    "8.3",
                    "9",
                    "8.1",
                    "9.3",
                    "9",
                    "9",
                    "7.7",
                    "8.2",
                    "9.4",
                    "8.3",
                    "9.1",
                    "9",
                    "7.2",
                    "7.1",
                    "9.2",
                    "8.3",
                    "9",
                    "8.1",
                    "8.2",
                    "8.4",
                    "8",
                    "8.4",
                    "8.8",
                    "8.3",
                    "7.5",
                    "8.7",
                    "7.8",
                    "9.1",
                    "8.8",
                    "8.6",
                    "8.1",
                    "8.6",
                    "9.3",
                    "9.7",
                    "8.8",
                    "9",
                    "8.9",
                    "8.5",
                    "8.5",
                    "8.7",
                    "8.7",
                    "7.5",
                    "8.1",
                    "8.3",
                    "8.8",
                    "8.9",
                    "8.9",
                    "9.3",
                    "8.4",
                    "8.7",
                    "8.7",
                    "8.7",
                    "7.8",
                    "9.1",
                    "9.4",
                    "8.6",
                    "8.5",
                    "8.3",
                    "9",
                    "8.9",
                    "7.7",
                    "8.6",
                    "8.1",
                    "8.7",
                    "8.8",
                    "8.1",
                    "9.1",
                    "9",
                    "8.1",
                    "8.9",
                    "8.9",
                    "7.4",
                    "8.6",
                    "9.3",
                    "8.4",
                    "9.1",
                    "9",
                    "9.2",
                    "7.7",
                    "8.6",
                    "8.7",
                    "8.9",
                    "9",
                    "8.9",
                    "8.4",
                    "7.8",
                    "9.4",
                    "7.6",
                    "8.4",
                    "8.5",
                    "9.4",
                    "8.5",
                    "9.1",
                    "8.9",
                    "9.3",
                    "9.3",
                    "9.1",
                    "9.1",
                    "9",
                    "9",
                    "8.2",
                    "8.8",
                    "9.2",
                    "9.4",
                    "8.7",
                    "9.1",
                    "8.1",
                    "8.4",
                    "8.4",
                    "8.4",
                    "8.9",
                    "9.2",
                    "9.1",
                    "8.8",
                    "9.1",
                    "9.2",
                    "9.1",
                    "8.6",
                    "8.9",
                    "9.1",
                    "7.8",
                    "8.7",
                    "8.6",
                    "8.1",
                    "8.5",
                    "8.5",
                    "8.4",
                    "8.9",
                    "9.1",
                    "8.7",
                    "8.6",
                    "8.8",
                    "9.3",
                    "7.1",
                    "8.6",
                    "8.8",
                    "8.2",
                    "8.8",
                    "8",
                    "8.2",
                    "8.6",
                    "7.6",
                    "8.3",
                    "8.7",
                    "8.7",
                    "8.6",
                    "8.9",
                    "8.4",
                    "9",
                    "9.3",
                    "9.1",
                    "8.7",
                    "7.6",
                    "9.2",
                    "9",
                    "8.7",
                    "8.9",
                    "9",
                    "8.7",
                    "9.4",
                    "8.9",
                    "8.7",
                    "8.5",
                    "8.3",
                    "8.7",
                    "8.2",
                    "8.9",
                    "9.6",
                    "8.6",
                    "8.2",
                    "9.7",
                    "8.7",
                    "8.9",
                    "7.9",
                    "8.3",
                    "9",
                    "7.7",
                    "9.4",
                    "8.9",
                    "6.4",
                    "8.3",
                    "9",
                    "8.9",
                    "8.9",
                    "8.5",
                    "8.5",
                    "8.2",
                    "7.5",
                    "8",
                    "9.2",
                    "8.4",
                    "9",
                    "8.4",
                    "8.8",
                    "8.8",
                    "7.1",
                    "8.5",
                    "8.7",
                    "9.4",
                    "8.6",
                    "8.8",
                    "8",
                    "9.1",
                    "9",
                    "9.1",
                    "8.5",
                    "8.3",
                    "8.2",
                    "8.8",
                    "9.2",
                    "7.1",
                    "9.1",
                    "8.7",
                    "8.6",
                    "8.4",
                    "8.1",
                    "8.7",
                    "8.4",
                    "8.7",
                    "8.7",
                    "8.7",
                    "8.8",
                    "8.6",
                    "8.7",
                    "9",
                    "8.5",
                    "9",
                    "9",
                    "9.2",
                    "9.4",
                    "8.4",
                    "6",
                    "7.8",
                    "8.9",
                    "8.6",
                    "8.9",
                    "9.5",
                    "9.4",
                    "9.4",
                    "9.1",
                    "9.3",
                    "8.1",
                    "9",
                    "8",
                    "8.9",
                    "8.4",
                    "8.8",
                    "8.7",
                    "8.2",
                    "8.2",
                    "9",
                    "8.3",
                    "8.5",
                    "9.2",
                    "8.5",
                    "8.1",
                    "8.7",
                    "8.9",
                    "8.4",
                    "8.8",
                    "8",
                    "8",
                    "8.5",
                    "8.3",
                    "8.5",
                    "8.6",
                    "7.8",
                    "8.2",
                    "8.4",
                    "8.7",
                    "7.9",
                    "9.4",
                    "8.5",
                    "7.3",
                    "8",
                    "7.8",
                    "9",
                    "9.4",
                    "9",
                    "8.3",
                    "8.5",
                    "8.7",
                    "8.7",
                    "8.1",
                    "9.3",
                    "9.2",
                    "9.2",
                    "9.2",
                    "8.8",
                    "8.8",
                    "9.1",
                    "8.6",
                    "8.7",
                    "9.4",
                    "9.6",
                    "8.1",
                    "9.1",
                    "8.9",
                    "7.4",
                    "8.6",
                    "8.5",
                    "8.5",
                    "8.5",
                    "9.2",
                    "9.4",
                    "7.7",
                    "8.8",
                    "8.6",
                    "9",
                    "8.7",
                    "9.2",
                    "7.9",
                    "8.2",
                    "8.5",
                    "9.2",
                    "9.1",
                    "8.8",
                    "7.1",
                    "8.6",
                    "8.6",
                    "8.5",
                    "9",
                    "7.7",
                    "9.3",
                    "8.1",
                    "8.5",
                    "7.9",
                    "9.4",
                    "8",
                    "8.6",
                    "8",
                    "8",
                    "9.2",
                    "7.7",
                    "8.9",
                    "9.6",
                    "9",
                    "8.6",
                    "8.7",
                    "8.2",
                    "8.7",
                    "8.2",
                    "9.2",
                    "8",
                    "9.8",
                    "9.1",
                    "8.4",
                    "8.9",
                    "8",
                    "8.8",
                    "7.8",
                    "8.6",
                    "9.1",
                    "8.2",
                    "7.8",
                    "8.6",
                    "9",
                    "8.1",
                    "8.6",
                    "8.9",
                    "9.2",
                    "8.7",
                    "9.1",
                    "8.1",
                    "8.6",
                    "9.3",
                    "8.2",
                    "8.8",
                    "8.3",
                    "9.2",
                    "8.5",
                    "9.4",
                    "8.8",
                    "9",
                    "8.1",
                    "8.6",
                    "7.3",
                    "9.1",
                    "8.1",
                    "8.4",
                    "7.9",
                    "7.6",
                    "9.3",
                    "8.3",
                    "8.5",
                    "8.9",
                    "9.3",
                    "8.6",
                    "8.6",
                    "8.4",
                    "9.2",
                    "9.2",
                    "9.1",
                    "8",
                    "8.6",
                    "9.3",
                    "9",
                    "8.3",
                    "8.6",
                    "8",
                    "8.4",
                    "8.8",
                    "9",
                    "8.6",
                    "6.7",
                    "9.2",
                    "9",
                    "8.7",
                    "8.8",
                    "8",
                    "8.7",
                    "8.2",
                    "8.3",
                    "9.2",
                    "8.3",
                    "8.2",
                    "8.7",
                    "9.2",
                    "9.5",
                    "8.7",
                    "8.1",
                    "8.1",
                    "8.4",
                    "9",
                    "8.9",
                    "8.7",
                    "7.5",
                    "8.3",
                    "8.7",
                    "8.8",
                    "9",
                    "8.3",
                    "8.7",
                    "8",
                    "8.4",
                    "9.3",
                    "8.9",
                    "8.9",
                    "8.5",
                    "8.8",
                    "9",
                    "9.1",
                    "8.3",
                    "8.7",
                    "9.1",
                    "8.6",
                    "8.8",
                    "8.9",
                    "8.8",
                    "8.4",
                    "8.8",
                    "9.3",
                    "9.4",
                    "7.2",
                    "8.8",
                    "8.9",
                    "8",
                    "8.4",
                    "8.9",
                    "8.3",
                    "8",
                    "8.2",
                    "9.1",
                    "9.1",
                    "9.5",
                    "8.6",
                    "8.2",
                    "7.5",
                    "8.2",
                    "9",
                    "8.3",
                    "8.7",
                    "7.7",
                    "7.4",
                    "8.3",
                    "8.1",
                    "8.2",
                    "8.5",
                    "8.2",
                    "8.4",
                    "8.4",
                    "8.9",
                    "8.1",
                    "9.2",
                    "8.5",
                    "8.5",
                    "8.9",
                    "8.9",
                    "9",
                    "9.1",
                    "8.2",
                    "8.1",
                    "8.9",
                    "9",
                    "8.9",
                    "8.9",
                    "8.8",
                    "9.4",
                    "9",
                    "8.5",
                    "8.4",
                    "8.2",
                    "9.2",
                    "8.8",
                    "8.3",
                    "8.6",
                    "8.1",
                    "9",
                    "7.9",
                    "8.9",
                    "7.7",
                    "8.7",
                    "7.6",
                    "8.4",
                    "8.3",
                    "8.4",
                    "9.1",
                    "9",
                    "8.4",
                    "7.4",
                    "9.2",
                    "9",
                    "8.5",
                    "9.2",
                    "7.6",
                    "9.1",
                    "8.8",
                    "9.5",
                    "8.4",
                    "8.9",
                    "8.9",
                    "8.4",
                    "8.4",
                    "8.9",
                    "8.2",
                    "8.9",
                    "7.5",
                    "8.6",
                    "8.8",
                    "8",
                    "8.4",
                    "9.5",
                    "8",
                    "9.1",
                    "8.6",
                    "8.7",
                    "8.6"
                ],
                "showBackground": false,
                "barMinHeight": 0,
                "barCategoryGap": "20%",
                "barGap": "30%",
                "large": false,
                "largeThreshold": 400,
                "seriesLayoutBy": "column",
                "datasetIndex": 0,
                "clip": true,
                "zlevel": 0,
                "z": 2,
                "label": {
                    "show": true,
                    "position": "top",
                    "margin": 8
                }
            }
        ],
        "legend": [
            {
                "data": [
                    "\u8bc4\u5206"
                ],
                "selected": {
                    "\u8bc4\u5206": true
                },
                "show": true,
                "padding": 5,
                "itemGap": 10,
                "itemWidth": 25,
                "itemHeight": 14
            }
        ],
        "tooltip": {
            "show": true,
            "trigger": "item",
            "triggerOn": "mousemove|click",
            "axisPointer": {
                "type": "line"
            },
            "showContent": true,
            "alwaysShowContent": false,
            "showDelay": 0,
            "hideDelay": 100,
            "textStyle": {
                "fontSize": 14
            },
            "borderWidth": 0,
            "padding": 5
        },
        "xAxis": [
            {
                "show": true,
                "scale": false,
                "nameLocation": "end",
                "nameGap": 15,
                "gridIndex": 0,
                "inverse": false,
                "offset": 0,
                "splitNumber": 5,
                "minInterval": 0,
                "splitLine": {
                    "show": false,
                    "lineStyle": {
                        "show": true,
                        "width": 1,
                        "opacity": 1,
                        "curveness": 0,
                        "type": "solid"
                    }
                },
                "data": [
                    "\u91cd\u8fd4\u6697\u591c",
                    "\u74e6\u5c14\u767b\u6e56",
                    "\u517b\u8702\u4eba\u4e4b\u6b7b",
                    "\u5982\u679c\u5728\u51ac\u591c\uff0c\u4e00\u4e2a\u65c5\u4eba",
                    "\u94f6\u6cb3\u7cfb\u642d\u8f66\u5ba2\u6307\u5357",
                    "\u5e7f\u5c9b\u4e4b\u604b",
                    "\u4e14\u542c\u98ce\u541f",
                    "\u9b54\u6212",
                    "\u91ce\u6027\u7684\u547c\u5524",
                    "1Q84 BOOK 1",
                    "\u540d\u4eba\u4f20",
                    "\u6876\u5ddd\u8ddf\u8e2a\u72c2\u6740\u4eba\u4e8b\u4ef6",
                    "\u5c0f\u738b\u5b50",
                    "\u591c\u7684\u547d\u540d\u672f",
                    "\u6076\u4e4b\u82b1",
                    "\u5b89\u5409\u62c9\u00b7\u5361\u7279\u7684\u7cbe\u602a\u6545\u4e8b\u96c6",
                    "\u81ea\u6df1\u6df1\u5904",
                    "\u79fb\u6c11",
                    "\u4e0d\u80fd\u627f\u53d7\u7684\u751f\u547d\u4e4b\u8f7b",
                    "\u6253\u5f00\u4e00\u9897\u5fc3",
                    "\u7ea6\u7ff0\u00b7\u514b\u5229\u65af\u6735\u592b",
                    "\u5b89\u5f92\u751f\u7ae5\u8bdd",
                    "\u9b54\u5c71",
                    "\u5580\u8033\u523b",
                    "\u5b58\u5728\u4e3b\u4e49\u662f\u4e00\u79cd\u4eba\u9053\u4e3b\u4e49",
                    "\u6ca1\u6709\u8272\u5f69\u7684\u591a\u5d0e\u4f5c\u548c\u4ed6\u7684\u5de1\u793c\u4e4b\u5e74",
                    "\u76f2\u523a\u5ba2",
                    "\u6211\u4eb2\u7231\u7684\u751c\u6a59\u6811",
                    "\u5df4\u9ece\u5723\u6bcd\u9662",
                    "\u5965\u514b\u8bfa\u65af",
                    "\u50b2\u6162\u4e0e\u504f\u89c1",
                    "\u5f53\u547c\u5438\u5316\u4e3a\u7a7a\u6c14",
                    "\u96fe\u90fd\u5b64\u513f",
                    "\u5047\u5982\u7ed9\u6211\u4e09\u5929\u5149\u660e",
                    "\u5bc2\u5bde\u4e4b\u4e95",
                    "\u6d41\u653e\u8005\u5f52\u6765",
                    "\u4e0d\u80fd\u627f\u53d7\u7684\u751f\u547d\u4e4b\u8f7b",
                    "\u9cc4\u9c7c\u8857",
                    "\u7eb5\u60c5\u590f\u65e5",
                    "\u6700\u540e\u4e00\u7247\u53f6\u5b50",
                    "\u56de\u5f52\u6545\u91cc",
                    "\u94f6\u6cb3\u7cfb\u6f2b\u6e38\u6307\u5357",
                    "\u6700\u521d\u7684\u7231\u60c5 \u6700\u540e\u7684\u4eea\u5f0f",
                    "\u4f0a\u8c46\u7684\u821e\u5973",
                    "\u65e0\u4eba\u751f\u8fd8",
                    "\u9ed1\u6697\u7684\u5fc3",
                    "\u7eff\u5c71\u5899\u7684\u5b89\u59ae",
                    "\u6559\u7236",
                    "\u68a6\u7684\u89e3\u6790",
                    "\u9ed1\u585e\u7ae5\u8bdd",
                    "\u9a82\u89c2\u4f17",
                    "\u5384\u820d\u5e9c\u7684\u5d29\u584c",
                    "\u9ea6\u7530\u91cc\u7684\u5b88\u671b\u8005",
                    "\u7f57\u751f\u95e8",
                    "\u7b49\u5f85\u6208\u591a",
                    "\u9065\u8fdc\u7684\u5730\u7403\u4e4b\u6b4c",
                    "\u767e\u5e74\u5b64\u72ec\uff08\u63d2\u56fe\u7eaa\u5ff5\u7248\uff09",
                    "\u8c61\u68cb\u7684\u6545\u4e8b",
                    "\u5510\u5409\u8bc3\u5fb7",
                    "\u4e8c\u5341\u4e16\u7eaa\u897f\u65b9\u6587\u5b66\u7406\u8bba",
                    "\u65c5\u4eba",
                    "\u5341\u4e5d\u4e16\u7eaa\u6587\u5b66\u4e3b\u6d41",
                    "\u53e6\u4e00\u4e2a\uff0c\u540c\u4e00\u4e2a",
                    "\u8001\u5b9e\u4eba",
                    "\u7d2b\u4e0e\u9ed1",
                    "\u5b89\u5a1c\u00b7\u5361\u5217\u5c3c\u5a1c",
                    "\u6d3e\u5bf9\u6050\u60e7\u75c7",
                    "\u751f\u6d3b\u4e0e\u547d\u8fd0",
                    "\u4f01\u9e45\u7684\u5fe7\u90c1",
                    "\u7ae5\u5e74\u7684\u7ec8\u7ed3",
                    "\u91d1\u9e21",
                    "\u4e0d\u80fd\u627f\u53d7\u7684\u751f\u547d\u4e4b\u8f7b",
                    "\u683c\u6797\u7ae5\u8bdd\u5168\u96c6",
                    "\u7ea2\u661f\u7167\u8000\u4e2d\u56fd",
                    "\u82cf\u83f2\u7684\u4e16\u754c",
                    "\u9c81\u6ee8\u900a\u6f02\u6d41\u8bb0",
                    "\u4e61\u4e0b\u4eba\u7684\u60b2\u6b4c",
                    "\u5ba1\u5224",
                    "\u8336\u82b1\u5973",
                    "\u592a\u591a\u503c\u5f97\u601d\u8003\u7684\u4e8b\u7269\uff1a\u7d22\u5c14\u2022\u8d1d\u5a04\u6563\u6587\u90091940-2000",
                    "\u4e00\u95f4\u53ea\u5c5e\u4e8e\u81ea\u5df1\u7684\u623f\u95f4",
                    "\u4e00\u4e2a\u5973\u4eba\u4e00\u751f\u4e2d\u7684\u4e8c\u5341\u56db\u5c0f\u65f6",
                    "\u82cf\u83f2\u7684\u4e16\u754c",
                    "\u8461\u8404\u7259\u7684\u9ad8\u5c71",
                    "\u516b\u767e\u4e07\u79cd\u6b7b\u6cd5",
                    "\u4e16\u754c\u5c3d\u5934\u7684\u5496\u5561\u9986",
                    "\u4f7f\u5973\u7684\u6545\u4e8b",
                    "\u6f2b\u957f\u7684\u661f\u671f\u516d",
                    "\u7ea2\u4e0e\u9ed1",
                    "\u57c3\u6d85\u963f\u65af\u7eaa",
                    "\u54c8\u5229\u00b7\u6ce2\u7279\u4e0e\u9b54\u6cd5\u77f3",
                    "\u4e16\u754c\u6742\u8d27\u5e97",
                    "\u54c8\u5229\u00b7\u6ce2\u7279\u4e0e\u706b\u7130\u676f",
                    "\u53cc\u57ce\u8bb0",
                    "\u60c5\u4eba",
                    "\u571f\u661f\u4e4b\u73af",
                    "\u54c8\u5229\u00b7\u6ce2\u7279\u4e0e\u6df7\u8840\u738b\u5b50",
                    "\u53e4\u90fd",
                    "\u6f2b\u957f\u7684\u544a\u522b",
                    "\u5965\u65af\u7ef4\u8f9b",
                    "\u6e3a\u5c0f\u4e00\u751f",
                    "\u6b32\u671b\u53f7\u8857\u8f66",
                    "\u9ea6\u7530\u91cc\u7684\u5b88\u671b\u8005",
                    "\u767e\u5e74\u5b64\u72ec",
                    "\u60b2\u60e8\u4e16\u754c\uff08\u4e0a\u4e2d\u4e0b\uff09",
                    "\u5361\u592b\u5361\u5c0f\u8bf4\u5168\u96c6\uff08\u5168\u4e09\u518c\uff09",
                    "\u60c5\u4eba",
                    "\u8fd8\u4e61",
                    "\u5361\u62c9\u9a6c\u4f50\u592b\u5144\u5f1f",
                    "\u6c64\u59c6\u53d4\u53d4\u7684\u5c0f\u5c4b",
                    "\u897f\u7ebf\u65e0\u6218\u4e8b",
                    "\u9762\u7eb1",
                    "\u739b\u683c\u4e3d\u7279\u5c0f\u9547",
                    "\u8c01\u52a8\u4e86\u6211\u7684\u5976\u916a\uff1f",
                    "\u4eba\u6027\u7684\u67b7\u9501",
                    "\u7eaf\u771f\u5e74\u4ee3",
                    "\u73bb\u7483\u7403\u6e38\u620f",
                    "\u7406\u667a\u4e0e\u60c5\u611f",
                    "\u8336\u82b1\u5973",
                    "\u5929\u4f7f\u4e0e\u9b54\u9b3c",
                    "\u8d28\u6570\u7684\u5b64\u72ec",
                    "\u5f02\u89c1\u65f6\u523b",
                    "\u7b2c\u4e8c\u5341\u4e8c\u6761\u519b\u89c4",
                    "\u96ea\u5d29",
                    "\u4e4c\u514b\u5170\u62d6\u62c9\u673a\u7b80\u53f2",
                    "\u91d1\u9601\u5bfa",
                    "\u88ab\u63a9\u57cb\u7684\u5de8\u4eba",
                    "\u7eff\u5c71\u5899\u7684\u5b89\u59ae",
                    "\u65e5\u74e6\u6208\u533b\u751f",
                    "\u6bd2\u6728\u5723\u7ecf",
                    "\u76f4\u5230\u4e16\u754c\u53cd\u6620\u4e86\u7075\u9b42\u6700\u6df1\u5c42\u7684\u9700\u8981",
                    "\u4e00\u4e2a\u77e5\u8bc6\u5973\u6027\u7684\u601d\u8003\u7cfb\u5217",
                    "\u8377\u9a6c\u53f2\u8bd7\u00b7\u5965\u5fb7\u8d5b",
                    "\u54c8\u5229\u00b7\u6ce2\u7279",
                    "\u83ab\u5931\u83ab\u5fd8",
                    "\u5df4\u9ece\u8bc4\u8bba\u00b7\u4f5c\u5bb6\u8bbf\u8c081",
                    "\u5c40\u5916\u4eba",
                    "\u53d8\u5316\u7684\u4f4d\u9762",
                    "\u72d0\u72f8\u90a3\u65f6\u5df2\u662f\u730e\u4eba",
                    "\u4e0e\u7f57\u6469\u76f8\u4f1a",
                    "\u5230\u706f\u5854\u53bb",
                    "\u523a\u6740\u9a91\u58eb\u56e2\u957f",
                    "\u6b63\u5e38\u4eba",
                    "24\u4e2a\u6bd4\u5229",
                    "\u4f60\u4e00\u751f\u7684\u6545\u4e8b",
                    "\u7fa4\u661f\u707f\u70c2\u7684\u5e74\u4ee3",
                    "\u4e1c\u65b9\u5feb\u8f66\u8c0b\u6740\u6848",
                    "\u5a1c\u5854\u838e\u4e4b\u821e",
                    "\u9879\u94fe",
                    "\u53f6\u752b\u76d6\u5c3c\u00b7\u5965\u6d85\u91d1",
                    "2666",
                    "\u94f6\u6cb3\u5e1d\u56fd1\uff1a\u57fa\u5730",
                    "\u5b64\u72ec\u7684\u57ce\u5e02",
                    "\u76f4\u6363\u8702\u7a9d\u7684\u5973\u5b69",
                    "\u4e00\u4e5d\u516b\u56db",
                    "\u8346\u68d8\u9e1f",
                    "\u7eb3\u535a\u79d1\u592b\u77ed\u7bc7\u5c0f\u8bf4\u5168\u96c6",
                    "\u8fbe\u6d1b\u7ef4\u592b\u4eba",
                    "\u5965\u52c3\u6d1b\u83ab\u592b",
                    "\u6708\u4eae\u4e0e\u516d\u4fbf\u58eb",
                    "\u7f8e\u56fd\u4f17\u795e",
                    "\u970d\u6bd4\u7279\u4eba",
                    "ABC\u8c0b\u6740\u6848",
                    "\u591c\u822a\u897f\u98de",
                    "\u79d8\u5bc6\u82b1\u56ed",
                    "\u6b7b\u9b42\u7075",
                    "\u6124\u6012\u7684\u8461\u8404",
                    "\u957f\u889c\u5b50\u76ae\u76ae",
                    "\u767d\u9cb8",
                    "\u5de8\u4eba\u7684\u9668\u843d",
                    "\u6625\u96ea",
                    "\u5931\u843d\u7684\u79d8\u7b26",
                    "\u6076\u5fc3",
                    "\u6d77\u98ce\u4e2d\u5931\u843d\u7684\u8840\u8272\u9988\u8d60",
                    "\u7b80\u00b7\u7231",
                    "\u9152\u5427\u957f\u8c08",
                    "\u53ea\u662f\u5b69\u5b50",
                    "\u535a\u5c14\u8d6b\u65af\u5c0f\u8bf4\u96c6",
                    "\u6c99\u4e18",
                    "\u9057\u5fd8\u901a\u8bba",
                    "\u4eba\u90fd\u662f\u8981\u6b7b\u7684",
                    "\u9c7c\u738b",
                    "\u9a6c\u5c14\u591a\u7f57\u4e4b\u6b4c",
                    "\u897f\u897f\u5f17\u65af\u795e\u8bdd",
                    "\u7f16\u821f\u8bb0",
                    "\u7f8e\u56fd\u5e95\u5c42",
                    "\u6211\u4eec\u7684\u7956\u5148",
                    "\u8863\u67dc",
                    "\u5c0f\u5987\u4eba",
                    "\u7ea2\u4e0e\u9ed1",
                    "\u52a8\u7269\u519c\u573a",
                    "\u4e00\u95f4\u81ea\u5df1\u7684\u623f\u95f4",
                    "\u65b0\u540d\u5b57\u7684\u6545\u4e8b",
                    "\u5df4\u9ece\u5723\u6bcd\u9662",
                    "\u7c73\u5fb7\u5c14\u9a6c\u5951",
                    "\u6d77\u4f2f\u5229\u5b89\u56db\u90e8\u66f2",
                    "\u6811\u4e0a\u7684\u7537\u7235",
                    "\u4f60\u5f80\u4f55\u5904\u53bb",
                    "\u9f20\u75ab",
                    "\u57fa\u7763\u5c71\u4f2f\u7235",
                    "\u4e8c\u5341\u9996\u60c5\u8bd7\u548c\u4e00\u9996\u7edd\u671b\u7684\u6b4c",
                    "\u5df4\u9ece\u70e7\u4e86\u5417?",
                    "\u5965\u53e4\u65af\u90fd",
                    "\u6628\u65e5\u7684\u4e16\u754c",
                    "\u6ca1\u6709\u4eba\u7ed9\u4ed6\u5199\u4fe1\u7684\u4e0a\u6821",
                    "\u5efa\u7b51\u5e08",
                    "\u6d77\u8fb9\u7684\u5361\u592b\u5361",
                    "\u5348\u591c\u4e4b\u5b50",
                    "\u547c\u5578\u5c71\u5e84",
                    "\u4eba\u7c7b\u7fa4\u661f\u95ea\u8000\u65f6",
                    "\u9053\u6797\u00b7\u683c\u96f7\u7684\u753b\u50cf",
                    "\u6628\u65e5\u7684\u4e16\u754c",
                    "\u6d77\u4f2f\u5229\u5b89",
                    "\u6708\u4eae\u4e0e\u516d\u4fbf\u58eb",
                    "\u751f\u5b58\u4e0e\u547d\u8fd0",
                    "\u9965\u997f\u827a\u672f\u5bb6",
                    "\u6b7b\u4ea1\u8d4b\u683c",
                    "\u65c5\u884c\u7684\u827a\u672f",
                    "\u5305\u6cd5\u5229\u592b\u4eba",
                    "\u5931\u660e\u75c7\u6f2b\u8bb0",
                    "\u9ea6\u7530\u91cc\u7684\u5b88\u671b\u8005",
                    "\u5fc3\u662f\u5b64\u72ec\u7684\u730e\u624b",
                    "\u54c8\u59c6\u83b1\u7279",
                    "\u96ea\u4eba",
                    "\u4e94\u53ea\u5c0f\u732a",
                    "\u4e09\u4e2a\u706b\u67aa\u624b",
                    "\u4fee\u9053\u9662\u7eaa\u4e8b",
                    "\u54c8\u5229\u00b7\u6ce2\u7279\u4e0e\u5bc6\u5ba4",
                    "\u975e\u7406\u6027\u7684\u4eba",
                    "\u4eba\u7c7b\u7684\u7fa4\u661f\u95ea\u8000\u65f6",
                    "\u9601\u697c\u4e0a\u7684\u75af\u5973\u4eba",
                    "\u4e16\u4e0a\u6700\u7f8e\u7684\u6eba\u6c34\u8005",
                    "\u6218\u4e89\u4e0e\u548c\u5e73\uff08\u5168\u56db\u518c\uff09",
                    "\u661f\u4e4b\u7ee7\u627f\u80053 \u5de8\u4eba\u4e4b\u661f",
                    "\u7edd\u5bf9\u7b11\u55b7\u4e4b\u5f03\u4e1a\u533b\u751f\u65e5\u5fd7",
                    "\u767d\u9cb8",
                    "\u7ea2\u4e0e\u9ed1",
                    "\u71c3\u70e7\u7684\u539f\u91ce",
                    "\u6697\u591c\u4e0e\u9ece\u660e",
                    "\u65e0\u58f0\u544a\u767d",
                    "\u725b\u867b",
                    "\u94a2\u94c1\u662f\u600e\u6837\u70bc\u6210\u7684",
                    "\u80a0\u5b50",
                    "\u68a6\u4e2d\u7684\u6b22\u5feb\u846c\u793c\u548c\u5341\u4e8c\u4e2a\u5f02\u4e61\u6545\u4e8b",
                    "\u4e00\u4e2a\u964c\u751f\u5973\u4eba\u7684\u6765\u4fe1",
                    "\u8fbe\u00b7\u82ac\u5947\u5bc6\u7801",
                    "\u8bc1\u8a00",
                    "\u96e8",
                    "\u5927\u5e08\u548c\u739b\u683c\u4e3d\u7279",
                    "\u7fa4\u9b54",
                    "\u5207\u5c14\u8bfa\u8d1d\u5229\u7684\u60b2\u9e23",
                    "\u56fd\u738b\u97a0\u8eac\uff0c\u56fd\u738b\u6740\u4eba",
                    "\u94a2\u94c1\u662f\u600e\u6837\u70bc\u6210\u7684",
                    "\u6162\u6162\u5fae\u7b11",
                    "\u4ee5\u8272\u5217",
                    "\u7231\u5fb7\u534e\u7684\u5947\u5999\u4e4b\u65c5",
                    "\u5951\u79d1\u592b\u77ed\u7bc7\u5c0f\u8bf4\u7cbe\u9009",
                    "\u7ed9\u9752\u5e74\u8bd7\u4eba\u7684\u4fe1",
                    "\u7f57\u751f\u95e8",
                    "\u84dd\u718a\u8239\u957f\u768413\u6761\u534a\u547d",
                    "\u970d\u4e71\u65f6\u671f\u7684\u7231\u60c5",
                    "\u4f60\u4e00\u751f\u7684\u6545\u4e8b",
                    "\u7ea2\u4e0e\u9ed1",
                    "\u5217\u514b\u661f\u6566\u7684\u5e7d\u7075",
                    "\u5df4\u9ece\u4f26\u6566\u843d\u9b44\u8bb0",
                    "\u81ea\u79c1\u7684\u57fa\u56e0",
                    "\u91d1\u8272\u68a6\u4e61",
                    "\u673a\u5668\u4eba\u5927\u5e08",
                    "\u4e00\u95f4\u81ea\u5df1\u7684\u623f\u95f4",
                    "\u5c11\u5e74\u7ef4\u7279\u7684\u70e6\u607c",
                    "\u7a7f\u8d8a",
                    "\u5fae\u6697\u7684\u706b",
                    "\u5200\u950b",
                    "\u5c0f\u591c\u66f2",
                    "\u6f2b\u957f\u7684\u544a\u522b",
                    "\u4e00\u4e2a\u53eb\u6b27\u7ef4\u7684\u7537\u4eba\u51b3\u5b9a\u53bb\u6b7b",
                    "\u5077\u5f71\u5b50\u7684\u4eba",
                    "\u6218\u4e89\u4e0e\u548c\u5e73",
                    "\u7231\u5fb7\u534e\u00b7\u5df4\u7eb3\u5fb7\u7684\u5815\u843d",
                    "\u77e5\u66f4\u9e1f\u5973\u5b69",
                    "\u7edd\u5bc6\u624b\u7a3f",
                    "\u8352\u539f\u72fc",
                    "\u5c40\u5916\u4eba",
                    "\u4f11\u6218",
                    "\u5149\u5e74",
                    "\u4e8b\u7269\u7684\u5473\u9053\uff0c\u6211\u5c1d\u5f97\u592a\u65e9\u4e86",
                    "\u88ab\u4ef0\u671b\u4e0e\u88ab\u9057\u5fd8\u7684",
                    "\u87ba\u4e1d\u5728\u62e7\u7d27",
                    "\u5c0f\u5987\u4eba",
                    "\u6740\u6b7b\u4e00\u53ea\u77e5\u66f4\u9e1f",
                    "\u53d8\u5f62\u8bb0",
                    "\u5fb7\u7c73\u5b89",
                    "\u8001\u4eba\u4e0e\u6d77",
                    "\u9999\u6c34",
                    "\u592a\u53e4\u548c\u5176\u4ed6\u7684\u65f6\u95f4",
                    "\u522b\u653e\u5f00\u6211\u7684\u624b",
                    "\u957f\u817f\u53d4\u53d4",
                    "\u9762\u7eb1",
                    "\u6089\u8fbe\u591a",
                    "\u5e03\u96f7\u987f\u89d2\u7684\u53f9\u606f",
                    "\u4f60\u5f53\u50cf\u9e1f\u98de\u5f80\u4f60\u7684\u5c71",
                    "\u795e\u7ecf\u6f2b\u6e38\u8005",
                    "\u675c\u64b0\u96c6",
                    "\u770b\u4e0d\u89c1\u7684\u57ce\u5e02",
                    "\u9759\u9759\u7684\u987f\u6cb3",
                    "\u7231\u7684\u8fdb\u5316\u8bba",
                    "\u6b7b\u4e8e\u5a01\u5c3c\u65af",
                    "\u65af\u666e\u7279\u5c3c\u514b\u604b\u4eba",
                    "\u88ab\u7981\u9522\u7684\u5934\u8111",
                    "\u7f6a\u4e0e\u7f5a",
                    "\u6211\u7684\u59b9\u59b9\u662f\u8fde\u73af\u6740\u624b",
                    "\u8096\u7533\u514b\u7684\u6551\u8d4e",
                    "\u4e00\u6869\u4e8b\u5148\u5f20\u626c\u7684\u51f6\u6740\u6848",
                    "\u5fb7\u7c73\u5b89:\u5f77\u5fa8\u5c11\u5e74\u65f6",
                    "\u5947\u60f3\u4e4b\u5e74",
                    "24\u4e2a\u6bd4\u5229",
                    "\u5fae\u7269\u4e4b\u795e",
                    "\u4f0a\u65af\u5766\u5e03\u5c14",
                    "\u82d4\u4e1d",
                    "\u4e86\u4e0d\u8d77\u7684\u76d6\u8328\u6bd4",
                    "\u8ff7\u5bab\u4e2d\u7684\u5c06\u519b",
                    "\u5f53\u5c3c\u91c7\u54ed\u6ce3",
                    "\u767d\u9cb8\u8bb0",
                    "\u65b9\u5411",
                    "\u82cf\u83f2\u7684\u4e16\u754c",
                    "\u5fc3\u662f\u5b64\u72ec\u7684\u730e\u624b",
                    "\u54c8\u5229\u00b7\u6ce2\u7279\u4e0e\u963f\u5179\u5361\u73ed\u7684\u56da\u5f92",
                    "\u4f0a\u5229\u4e9a\u7279",
                    "\u4eba\u95f4\u559c\u5267",
                    "\u6bdb\u59c6\u4f20",
                    "\u57ce\u5821",
                    "\u65e0\u4eba\u77e5\u6653\u7684\u771f\u7531\u5b50",
                    "\u683c\u5217\u4f5b\u6e38\u8bb0",
                    "\u6cf0\u6208\u5c14\u8bd7\u96c6",
                    "\u5b87\u5b99\u5c3d\u5934\u7684\u9910\u9986",
                    "\u91d1\u9601\u5bfa",
                    "\u9b54\u6212",
                    "\u74e6\u5c14\u767b\u6e56",
                    "\u4ece\u9a6c\u5c14\u514b\u65af\u5230\u7565\u8428",
                    "\u661f\u4e4b\u7ee7\u627f\u8005",
                    "\u838e\u58eb\u6bd4\u4e9a\u5341\u56db\u884c\u8bd7",
                    "\u65f6\u95f4\u65c5\u884c\u8005\u7684\u59bb\u5b50",
                    "\u6708\u4eae\u548c\u516d\u4fbf\u58eb",
                    "\u8428\u62c9\u6208\u8428\u624b\u7a3f",
                    "\u8fc7\u4e8e\u55a7\u56a3\u7684\u5b64\u72ec",
                    "\u5ba0\u513f",
                    "\u8352\u91ce\u4fa6\u63a2",
                    "\u51fa\u57c3\u53ca\u8bb0",
                    "\u6c64\u59c6\u00b7\u7d22\u4e9a\u5386\u9669\u8bb0",
                    "\u838e\u4e50\u7f8e",
                    "\u5c0f\u738b\u5b50",
                    "\u96ea\u843d\u9999\u6749\u6811",
                    "\u5bcc\u5170\u514b\u6797\u81ea\u4f20",
                    "\u52a8\u7269\u519c\u573a",
                    "\u7267\u7f8a\u5c11\u5e74\u5947\u5e7b\u4e4b\u65c5",
                    "\u8eab\u4efd\u7684\u7126\u8651",
                    "\u5916\u9762\u662f\u590f\u5929",
                    "\u591c\u83ba\u4e0e\u73ab\u7470",
                    "\u7fa4\u5c71\u56de\u5531",
                    "\u8eab\u4efd\u7684\u7126\u8651",
                    "\u5916\u5a46\u7684\u9053\u6b49\u4fe1",
                    "\u5348\u591c\u9633\u5149",
                    "\u96fe\u90fd\u5b64\u513f",
                    "\u5c0f\u624b",
                    "\u6d77\u5e95\u4e24\u4e07\u91cc",
                    "\u4e16\u754c\u5c3d\u5934\u4e0e\u51b7\u9177\u4ed9\u5883",
                    "\u8292\u679c\u8857\u4e0a\u7684\u5c0f\u5c4b",
                    "\u4f24\u5fc3\u5496\u5561\u9986\u4e4b\u6b4c",
                    "\u4e27\u949f\u4e3a\u8c01\u800c\u9e23",
                    "\u6708\u4eae\u548c\u516d\u4fbf\u58eb",
                    "\u6211\u9047\u89c1\u4e86\u4eba\u7c7b",
                    "\u6211\u5728\u4f0a\u6717\u957f\u5927",
                    "\u6211\u8111\u888b\u91cc\u7684\u602a\u4e1c\u897f",
                    "\u6a58\u5b50\u4e0d\u662f\u552f\u4e00\u7684\u6c34\u679c",
                    "\u632a\u5a01\u7684\u68ee\u6797",
                    "\u82e6\u5993\u56de\u5fc6\u5f55",
                    "\u5c40\u5916\u4eba",
                    "\u6628\u65e5\u7684\u4e16\u754c",
                    "\u970d\u4e71\u65f6\u671f\u7684\u7231\u60c5",
                    "\u6076\u68cd\u5217\u4f20",
                    "\u5c3c\u5c14\u65af\u9a91\u9e45\u65c5\u884c\u8bb0",
                    "\u54c8\u5229\u00b7\u6ce2\u7279\u4e0e\u51e4\u51f0\u793e",
                    "\u6708\u4eae\u4e0e\u516d\u4fbf\u58eb",
                    "\u9c81\u6ee8\u5b59\u5386\u9669\u8bb0",
                    "\u52a8\u7269\u5e84\u56ed",
                    "\u963f\u83b1\u592b",
                    "\u795e\u66f2",
                    "\u57fa\u7763\u5c71\u4f2f\u7235",
                    "\u683c\u6797\u7ae5\u8bdd",
                    "\u5927\u5e08\u7684\u76db\u5bb4",
                    "\u732e\u7ed9\u963f\u5c14\u5409\u4fac\u7684\u82b1\u675f",
                    "\u6211\u7684\u5929\u624d\u5973\u53cb",
                    "\u5e03\u9c81\u514b\u6797\u6709\u68f5\u6811",
                    "\u82e6\u70bc",
                    "\u57fa\u7763\u5c71\u4f2f\u7235",
                    "\u5723\u8bde\u9882\u6b4c",
                    "\u6708\u4eae\u548c\u516d\u4fbf\u58eb",
                    "\u6307\u5320",
                    "\u67e0\u6aac\u684c\u5b50",
                    "\u8bf7\u4ee5\u4f60\u7684\u540d\u5b57\u547c\u5524\u6211",
                    "\u82f9\u679c\u9152\u5c4b\u7684\u89c4\u5219",
                    "\u9605\u8bfb\u662f\u4e00\u5ea7\u968f\u8eab\u643a\u5e26\u7684\u907f\u96be\u6240",
                    "\u4f01\u9e45\u7ecf\u5178\uff1a\u5c0f\u9ed1\u4e66 \u7b2c\u4e00\u8f91",
                    "\u5931\u8e2a\u7684\u5b69\u5b50",
                    "\u5409\u5c14\u4f3d\u7f8e\u4ec0\u53f2\u8bd7",
                    "\u7ae5\u5e74 \u5728\u4eba\u95f4 \u6211\u7684\u5927\u5b66",
                    "\u5947\u8ff9\u7537\u5b69",
                    "\u730e\u4eba\u7b14\u8bb0",
                    "\u5df4\u9ece\u8bc4\u8bba\u00b7\u5973\u6027\u4f5c\u5bb6\u8bbf\u8c08",
                    "\u5965\u4e3d\u8299\u00b7\u57fa\u7279\u91cc\u5947",
                    "\u5148\u77e5",
                    "\u4eba\u751f\u590d\u672c",
                    "\u6f02\u4eae\u670b\u53cb",
                    "\u756a\u77f3\u69b4\u98d8\u9999",
                    "\u5b89\u5f92\u751f\u7ae5\u8bdd\u6545\u4e8b\u96c6",
                    "\u5c24\u5229\u897f\u65af",
                    "\u4e8c\u624b\u65f6\u95f4",
                    "\u4e86\u4e0d\u8d77\u7684\u76d6\u8328\u6bd4",
                    "\u6c89\u601d\u5f55",
                    "\u9ea6\u742a\u7684\u793c\u7269",
                    "\u7b80\u7231\uff08\u82f1\u6587\u5168\u672c\uff09",
                    "\u4eba\u9f20\u4e4b\u95f4",
                    "\u7ae5\u5e74",
                    "\u5c24\u5229\u897f\u65af",
                    "\u597d\u9aa8\u5934",
                    "\u5f69\u753b\u96c6",
                    "82\u5e74\u751f\u7684\u91d1\u667a\u82f1",
                    "\u798f\u5c14\u6469\u65af\u63a2\u6848\u5168\u96c6\u8bfa\u987f\u6ce8\u91ca\u672c \u7b2c\u4e00\u5377",
                    "\u6076\u4e4b\u82b1",
                    "\u6c89\u9ed8",
                    "\u94f6\u6cb3\u7cfb\u8fb9\u7f18\u7684\u5c0f\u5931\u5e38",
                    "\u4e66\u5e97\u65e5\u8bb0",
                    "\u7b80\u00b7\u7231",
                    "\u522b\u4eba\u5bb6\u7684\u5b69\u5b50",
                    "\u7eb3\u5c14\u9f50\u65af\u4e0e\u6b4c\u5c14\u5fb7\u8499",
                    "\u5929\u4e0b\u9a8f\u9a6c",
                    "\u5200\u950b",
                    "\u7b80\u7231",
                    "\u9b54\u6212",
                    "\u767d\u591c",
                    "\u5730\u6d77\u4f20\u5947\uff1a\u5730\u6d77\u5deb\u5e08",
                    "\u8747\u738b",
                    "\u6e34\u671b\u751f\u6d3b",
                    "\u6700\u521d\u7684\u7231\u60c5\uff0c\u6700\u540e\u7684\u4eea\u5f0f",
                    "\u5951\u8bc3\u592b\u620f\u5267\u5168\u96c6",
                    "\u5965\u72c4\u6d66\u65af\u738b",
                    "\u5361\u95e8",
                    "\u83ab\u65af\u79d1\u7ec5\u58eb",
                    "\u7236\u4e0e\u5b50",
                    "\u79bb\u5f00\u7684\uff0c\u7559\u4e0b\u7684",
                    "\u5f53\u6211\u4eec\u8c08\u8bba\u7231\u60c5\u65f6\u6211\u4eec\u5728\u8c08\u8bba\u4ec0\u4e48",
                    "\u67cf\u6797\u8c0d\u5f71",
                    "\u7f8e\u4e3d\u65b0\u4e16\u754c",
                    "\u7f8a\u8102\u7403",
                    "\u5728\u8def\u4e0a",
                    "\u5929\u84dd\u8272\u7684\u5f7c\u5cb8",
                    "\u94c1\u76ae\u9f13",
                    "\u6211\u4e0d\u8981\u4f60\u6b7b\u4e8e\u4e00\u4e8b\u65e0\u6210",
                    "\u4e25\u5bc6\u76d1\u89c6\u7684\u5217\u8f66",
                    "\u8ffd\u98ce\u7b5d\u7684\u4eba",
                    "\u8ffd\u5fc6\u4f3c\u6c34\u5e74\u534e",
                    "\u8fdc\u5927\u524d\u7a0b",
                    "\u98ce\u6c99\u661f\u8fb0",
                    "\u67af\u679d\u8d25\u53f6",
                    "\u65e0\u4eba\u751f\u8fd8",
                    "\u5802\u5409\u8bc3\u5fb7",
                    "\u56fd\u5883\u4ee5\u5357 \u592a\u9633\u4ee5\u897f",
                    "\u65af\u901a\u7eb3",
                    "\u5730\u7403\u4e0a\u6700\u540e\u7684\u591c\u665a",
                    "\u82f1\u56fd\u75c5\u4eba",
                    "\u5973\u592a\u76d1",
                    "1984",
                    "\u6708\u4eae\u4e0e\u516d\u4fbf\u58eb",
                    "\u4eba\u751f\u7684\u67b7\u9501",
                    "\u8424\u706b\u866b\u5c0f\u5df7",
                    "\u8336\u82b1\u5973",
                    "\u5bfb\u627e\u65f6\u95f4\u7684\u4eba",
                    "\u738b\u5c14\u5fb7\u7ae5\u8bdd",
                    "\u5bc2\u9759\u7684\u6625\u5929",
                    "\u767e\u4e07\u82f1\u9551",
                    "\u906e\u853d\u7684\u5929\u7a7a",
                    "\u6a58\u5b50\u4e0d\u662f\u552f\u4e00\u7684\u6c34\u679c",
                    "\u57fa\u7763\u5c71\u4f2f\u7235(\u4e0a\u4e0b)",
                    "\u7591\u95ee\u96c6",
                    "\u5927\u536b\u00b7\u79d1\u6ce2\u83f2\u5c14",
                    "\u82f1\u56fd\u7279\u5de5\u963f\u7533\u767b",
                    "\u98d8",
                    "\u590f\u6d1b\u7684\u7f51",
                    "\u6211\u7684\u540d\u5b57\u53eb\u7ea2",
                    "\u53d1\u6761\u6a59",
                    "\u5feb\u4e50\u738b\u5b50",
                    "\u4f20\u5bb6\u4e4b\u7269",
                    "\u6e38\u96bc",
                    "\u7cdc\u9aa8\u4e4b\u58e4",
                    "\u73ab\u7470\u7684\u540d\u5b57",
                    "\u51b0\u4e0e\u706b\u4e4b\u6b4c\uff08\u5377\u4e00\uff09",
                    "\u60f6\u7136\u5f55",
                    "\u5317\u6b27\u795e\u8bdd",
                    "\u6211\u4eec\u751f\u6d3b\u7684\u6545\u4e8b",
                    "\u7eaf\u771f\u535a\u7269\u9986",
                    "\u5bfb\u6b22\u4f5c\u4e50",
                    "\u897f\u897f\u5f17\u7684\u795e\u8bdd",
                    "\u591c\u822a\u897f\u98de",
                    "\u767d\u5929\u7684\u623f\u5b50\uff0c\u591c\u665a\u7684\u623f\u5b50",
                    "\u949d\u611f\u529b",
                    "\u4f0a\u51e1\u00b7\u4f0a\u91cc\u5947\u4e4b\u6b7b",
                    "\u5207\u5c14\u8bfa\u8d1d\u5229\u7684\u796d\u7977",
                    "\u83ab\u6cca\u6851\u77ed\u7bc7\u5c0f\u8bf4\u9009",
                    "\u707f\u70c2\u5343\u9633",
                    "\u5317\u56de\u5f52\u7ebf",
                    "\u590d\u660e\u75c7\u6f2b\u8bb0",
                    "\u8fdc\u5c71\u6de1\u5f71",
                    "\u67e5\u6cf0\u83b1\u592b\u4eba\u7684\u60c5\u4eba",
                    "\u764c\u75c7\u697c",
                    "\u5609\u8389\u59b9\u59b9",
                    "\u552f\u6709\u5b64\u72ec\u6052\u5e38\u5982\u65b0",
                    "\u8d4e\u7f6a",
                    "\u57fa\u7763\u5c71\u4f2f\u7235\uff08\u4e0a\u4e0b\u518c\uff09",
                    "\u60b2\u60e8\u4e16\u754c",
                    "\u4e07\u7269\u9759\u9ed8\u5982\u8c1c",
                    "\u6211\u8fd9\u6837\u7684\u673a\u5668",
                    "\u5b89\u59ae\u65e5\u8bb0",
                    "\u803b",
                    "\u54c8\u5229\u00b7\u6ce2\u7279\u4e0e\u6b7b\u4ea1\u5723\u5668",
                    "\u5965\u65af\u7279\u5229\u8328",
                    "\u8001\u4eba\u4e0e\u6d77",
                    "\u7231\u60c5\u3001\u75af\u72c2\u548c\u6b7b\u4ea1\u7684\u6545\u4e8b",
                    "\u5bd2\u6817",
                    "\u5c3c\u7f57\u6cb3\u4e0a\u7684\u60e8\u6848",
                    "\u6717\u8bfb\u8005",
                    "\u6211\u5c06\u5982\u4f55\u547c\u5524\u4f60",
                    "\u67e5\u4ee4\u5341\u5b57\u885784\u53f7",
                    "\u7b2c\u4e8c\u5341\u4e8c\u6761\u519b\u89c4",
                    "\u795e\u7684\u5b69\u5b50\u5168\u8df3\u821e",
                    "\u5760\u7269\u4e4b\u58f0",
                    "\u88ab\u6df9\u6ca1\u548c\u88ab\u62ef\u6551\u7684",
                    "\u6211\u66fe\u4f8d\u5019\u8fc7\u82f1\u56fd\u56fd\u738b",
                    "\u518d\u5ea6\u89c9\u9192",
                    "\u9003\u79bb",
                    "\u8001\u4eba\u4e0e\u6d77",
                    "\u7a7f\u6761\u7eb9\u7761\u8863\u7684\u7537\u5b69",
                    "\u706f\u5854",
                    "\u4f0a\u7d22\u5bd3\u8a00",
                    "\u7b49\u5f85\u6208\u591a",
                    "\u50b2\u6162\u4e0e\u504f\u89c1\uff08\u82f1\u6587\u672c\uff09",
                    "\u632a\u5a01\u7684\u68ee\u6797",
                    "\u8fc7\u4e8e\u55a7\u56a3\u7684\u5b64\u72ec",
                    "\u6d3b\u7740\u4e3a\u4e86\u8bb2\u8ff0",
                    "\u535a\u5c14\u8d6b\u65af\u8c08\u8bdd\u5f55",
                    "\u547c\u5578\u5c71\u5e84",
                    "\u7d22\u62c9\u91cc\u65af\u661f",
                    "\u9759\u9759\u7684\u987f\u6cb3",
                    "\u8349\u53f6\u96c6",
                    "\u804a\u5929\u8bb0\u5f55",
                    "\u9f20\u75ab",
                    "\u6240\u6709\u6211\u4eec\u770b\u4e0d\u89c1\u7684\u5149",
                    "\u4f60\u5728\u5929\u5802\u91cc\u9047\u89c1\u7684\u4e94\u4e2a\u4eba",
                    "\u5728\u8f6e\u4e0b",
                    "\u5fb7\u7c73\u5b89",
                    "\u6c38\u522b\u4e86\uff0c\u6b66\u5668",
                    "\u604b\u60c5\u7684\u7ec8\u7ed3",
                    "\u5c0f\u5c0f\u5c0f\u5c0f\u7684\u706b",
                    "\u91d1\u8537\u8587",
                    "\u6811\u4e0a\u7684\u7537\u7235",
                    "\u767e\u5e74\u5b64\u72ec",
                    "\u90fd\u67cf\u6797\u4eba",
                    "\u67e5\u4ee4\u5341\u5b57\u885784\u53f7",
                    "\u514b\u82cf\u9c81\u795e\u8bdd",
                    "\u8fbe\u00b7\u82ac\u5947\u5bc6\u7801",
                    "\u8001\u4eba\u4e0e\u6d77",
                    "\u821e\uff01\u821e\uff01\u821e\uff01",
                    "\u897f\u897f\u5f17\u795e\u8bdd",
                    "\u94a2\u94c1\u662f\u600e\u6837\u70bc\u6210\u7684",
                    "\u65f6\u95f4\u7684\u793c\u7269",
                    "\u540d\u5229\u573a",
                    "\u6124\u6012\u7684\u73a9\u5076",
                    "\u5957\u4e2d\u4eba",
                    "\u6d77\u8fb9\u7684\u5361\u592b\u5361",
                    "\u6b27\u00b7\u4ea8\u5229\u77ed\u7bc7\u5c0f\u8bf4\u7cbe\u9009",
                    "\u76f8\u7ea6\u661f\u671f\u4e8c",
                    "\u9c81\u6ee8\u900a\u6f02\u6d41\u8bb0",
                    "\u91cc\u5c14\u514b\u8bd7\u9009",
                    "\u96f6K",
                    "\u6743\u529b\u4e4b\u8def",
                    "\u659c\u9633",
                    "\u6d77\u5e95\u4e24\u4e07\u91cc",
                    "\u7729\u6655",
                    "\u4e0d\u5b58\u5728\u7684\u9a91\u58eb",
                    "\u7f8a\u8102\u7403",
                    "\u6bdb\u59c6\u77ed\u7bc7\u5c0f\u8bf4\u7cbe\u9009\u96c6",
                    "\u5e1d\u56fd\u6e38\u620f",
                    "\u7a84\u95e8",
                    "\u9a6c\u53ef\u74e6\u5c14\u591a",
                    "\u5df4\u9ece\u5723\u6bcd\u9662",
                    "\u67f3\u6797\u98ce\u58f0",
                    "\u957f\u65e5\u5c06\u5c3d",
                    "\u7b2c\u4e8c\u6027\u2160",
                    "\u5927\u5e08\u4e0e\u739b\u683c\u4e3d\u7279",
                    "\u788e\u7247",
                    "\u6ca1\u6709\u4eba\u7ed9\u4ed6\u5199\u4fe1\u7684\u4e0a\u6821",
                    "\u4e5e\u529b\u9a6c\u624e\u7f57\u7684\u96ea",
                    "\u5341\u4e00\u79cd\u5b64\u72ec",
                    "\u6bdb\u6bdb",
                    "\u770b\u4e0d\u89c1\u7684\u57ce\u5e02",
                    "\u8d4e\u7f6a",
                    "\u4e91\u6e38",
                    "\u590d\u6d3b",
                    "\u6c38\u6052\u7684\u7ec8\u7ed3",
                    "\u67af\u679d\u8d25\u53f6",
                    "\u98de\u9e1f\u96c6",
                    "\u6d1b\u4e3d\u5854",
                    "\u5206\u6210\u4e24\u534a\u7684\u5b50\u7235",
                    "\u6211\u4e3a\u4ec0\u4e48\u81ea\u5df1\u7684\u4e66\u4e00\u672c\u6ca1\u5199",
                    "\u81f4D",
                    "\u5929\u771f\u7684\u548c\u611f\u4f24\u7684\u5c0f\u8bf4\u5bb6",
                    "\u795e\u4eec\u81ea\u5df1",
                    "\u4e5d\u4e09\u5e74",
                    "\u7eff\u91ce\u4ed9\u8e2a",
                    "\u751f\u6d3b\u5728\u522b\u5904",
                    "\u5973\u5b69\u4eec",
                    "\u4f69\u5fb7\u7f57\u00b7\u5df4\u62c9\u83ab",
                    "\u4eba\u5de5\u547c\u5438",
                    "\u9f99\u6587\u8eab\u7684\u5973\u5b69",
                    "\u897f\u897f\u5f17\u795e\u8bdd",
                    "\u90ae\u5dee\u603b\u6309\u4e24\u904d\u94c3",
                    "\u5c0f\u738b\u5b50\u7684\u661f\u8fb0\u4e0e\u73ab\u7470",
                    "\u9ea6\u514b\u767d",
                    "\u53e4\u5178\u4f20\u7edf",
                    "\u91cd\u9022",
                    "\u5947\u98ce\u5c81\u6708",
                    "\u767d\u591c",
                    "ABC\u8c0b\u6740\u6848",
                    "\u4e86\u4e0d\u8d77\u7684\u76d6\u8328\u6bd4",
                    "\u50b2\u6162\u4e0e\u504f\u89c1",
                    "\u7ef4\u7f57\u59ae\u5361\u51b3\u5b9a\u53bb\u6b7b",
                    "\u5927\u5510\u72c4\u516c\u6848",
                    "\u6d88\u5931\u7684\u5730\u5e73\u7ebf",
                    "\u4e0d\u5b89\u4e4b\u4e66",
                    "\u9192\u6765\u7684\u5973\u6027",
                    "\u6e90\u6c0f\u7269\u8bed",
                    "\u7b80\u00b7\u7231",
                    "\u5802\u5409\u8bc3\u5fb7",
                    "\u602a\u8bde\u6545\u4e8b\u96c6",
                    "\u6211\u4e0d\u77e5\u9053\u8be5\u8bf4\u4ec0\u4e48\uff0c\u5173\u4e8e\u6b7b\u4ea1\u8fd8\u662f\u7231\u60c5",
                    "\u7ea2\u4e0e\u9ed1",
                    "\u7f8e\u4e3d\u65b0\u4e16\u754c",
                    "\u706b\u661f\u7f16\u5e74\u53f2"
                ]
            }
        ],
        "yAxis": [
            {
                "show": true,
                "scale": false,
                "nameLocation": "end",
                "nameGap": 15,
                "gridIndex": 0,
                "inverse": false,
                "offset": 0,
                "splitNumber": 5,
                "minInterval": 0,
                "splitLine": {
                    "show": false,
                    "lineStyle": {
                        "show": true,
                        "width": 1,
                        "opacity": 1,
                        "curveness": 0,
                        "type": "solid"
                    }
                }
            }
        ],
        "title": [
            {
                "text": "\u56fe\u4e66-\u8bc4\u5206",
                "padding": 5,
                "itemGap": 10
            }
        ],
        "dataZoom": [
            {
                "show": true,
                "type": "slider",
                "realtime": true,
                "start": 20,
                "end": 80,
                "orient": "horizontal",
                "zoomLock": false,
                "filterMode": "filter"
            },
            {
                "show": true,
                "type": "inside",
                "realtime": true,
                "start": 20,
                "end": 80,
                "orient": "horizontal",
                "zoomLock": false,
                "filterMode": "filter"
            }
        ]
    };
    chart_feb8291c787443b081b8ebff26c8fdf0.setOption(option_feb8291c787443b081b8ebff26c8fdf0);
    var option_c4b184619bf649be8a064d4cff88af08 = {
        "animation": true,
        "animationThreshold": 2000,
        "animationDuration": 1000,
        "animationEasing": "cubicOut",
        "animationDelay": 0,
        "animationDurationUpdate": 300,
        "animationEasingUpdate": "cubicOut",
        "animationDelayUpdate": 0,
        "color": [
            "#546570",
            "#c23531",
            "#2f4554",
            "#61a0a8",
            "#d48265",
            "#749f83",
            "#ca8622",
            "#bda29a",
            "#6e7074",
            "#546570",
            "#c4ccd3",
            "#f05b72",
            "#ef5b9c",
            "#f47920",
            "#905a3d",
            "#fab27b",
            "#2a5caa",
            "#444693",
            "#726930",
            "#b2d235",
            "#6d8346",
            "#ac6767",
            "#1d953f",
            "#6950a1",
            "#918597"
        ],
        "series": [
            {
                "type": "bar",
                "name": "\u56fe\u4e66\u672c\u6570",
                "legendHoverLink": true,
                "data": [
                    "1",
                    "1",
                    "1",
                    "4",
                    "3",
                    "2",
                    "4",
                    "6",
                    "6",
                    "9",
                    "14",
                    "6",
                    "25",
                    "32",
                    "31",
                    "29",
                    "44",
                    "38",
                    "47",
                    "57",
                    "44",
                    "53",
                    "50",
                    "43",
                    "33",
                    "17",
                    "19",
                    "8",
                    "4",
                    "1",
                    "1"
                ],
                "showBackground": false,
                "barMinHeight": 0,
                "barCategoryGap": "20%",
                "barGap": "30%",
                "large": false,
                "largeThreshold": 400,
                "seriesLayoutBy": "column",
                "datasetIndex": 0,
                "clip": true,
                "zlevel": 0,
                "z": 2,
                "label": {
                    "show": true,
                    "position": "top",
                    "margin": 8
                }
            }
        ],
        "legend": [
            {
                "data": [
                    "\u56fe\u4e66\u672c\u6570"
                ],
                "selected": {
                    "\u56fe\u4e66\u672c\u6570": true
                },
                "show": true,
                "padding": 5,
                "itemGap": 10,
                "itemWidth": 25,
                "itemHeight": 14
            }
        ],
        "tooltip": {
            "show": true,
            "trigger": "item",
            "triggerOn": "mousemove|click",
            "axisPointer": {
                "type": "line"
            },
            "showContent": true,
            "alwaysShowContent": false,
            "showDelay": 0,
            "hideDelay": 100,
            "textStyle": {
                "fontSize": 14
            },
            "borderWidth": 0,
            "padding": 5
        },
        "xAxis": [
            {
                "show": true,
                "scale": false,
                "nameLocation": "end",
                "nameGap": 15,
                "gridIndex": 0,
                "inverse": false,
                "offset": 0,
                "splitNumber": 5,
                "minInterval": 0,
                "splitLine": {
                    "show": false,
                    "lineStyle": {
                        "show": true,
                        "width": 1,
                        "opacity": 1,
                        "curveness": 0,
                        "type": "solid"
                    }
                },
                "data": [
                    "6.0",
                    "6.4",
                    "6.7",
                    "7.1",
                    "7.2",
                    "7.3",
                    "7.4",
                    "7.5",
                    "7.6",
                    "7.7",
                    "7.8",
                    "7.9",
                    "8.0",
                    "8.1",
                    "8.2",
                    "8.3",
                    "8.4",
                    "8.5",
                    "8.6",
                    "8.7",
                    "8.8",
                    "8.9",
                    "9.0",
                    "9.1",
                    "9.2",
                    "9.3",
                    "9.4",
                    "9.5",
                    "9.6",
                    "9.7",
                    "9.8"
                ]
            }
        ],
        "yAxis": [
            {
                "show": true,
                "scale": false,
                "nameLocation": "end",
                "nameGap": 15,
                "gridIndex": 0,
                "inverse": false,
                "offset": 0,
                "splitNumber": 5,
                "minInterval": 0,
                "splitLine": {
                    "show": false,
                    "lineStyle": {
                        "show": true,
                        "width": 1,
                        "opacity": 1,
                        "curveness": 0,
                        "type": "solid"
                    }
                }
            }
        ],
        "title": [
            {
                "text": "\u8bc4\u5206-\u672c\u6570",
                "padding": 5,
                "itemGap": 10
            }
        ],
        "dataZoom": [
            {
                "show": true,
                "type": "slider",
                "realtime": true,
                "start": 20,
                "end": 80,
                "orient": "horizontal",
                "zoomLock": false,
                "filterMode": "filter"
            },
            {
                "show": true,
                "type": "inside",
                "realtime": true,
                "start": 20,
                "end": 80,
                "orient": "horizontal",
                "zoomLock": false,
                "filterMode": "filter"
            }
        ]
    };
    chart_c4b184619bf649be8a064d4cff88af08.setOption(option_c4b184619bf649be8a064d4cff88af08);
</script>
</body>
</html>