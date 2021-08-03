<%--
  Created by IntelliJ IDEA.
  User: lip
  Date: 2021/7/1
  Time: 18:44
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %><!DOCTYPE html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <script src="https://cdn.bootcss.com/jquery/3.4.1/jquery.js"></script>
    <meta charset="utf-8">
    <title>图书页面</title>
    <style>
        .clearfix:after {
            content: '';
            display: block;
            width: 0px;
            height: 0px;
            clear: both;
        }
        .item{
            margin-top: 30px;
        }
        .item_left{
            float: left;
        }

        .item_img{
             height: 240px;
        }
        .item_right{
         }
        .item_name{
            font-size: 24px;
            margin-left: 20px;
        }
        .item_author{
            display: inline-block;
            font-size: 16px;
            margin-top: 30px;
            margin-left: 20px;
        }
        .item_text{
            display: inline-block;
            font-size: 16px;
            margin-top: 10px;
            margin-left: 20px;
        }
        /*评分*/
        .item_rank{
            float: right;
            margin-top: 20px;
            margin-right:100px;
        }
    </style>
</head>
<body>
<div class="box">
    <img src="" alt="">
</div>
</body>
<script>
    window.onload = ()=>{
        let res = (sessionStorage.getItem("res"));
        console.log(JSON.parse(res));
        res = JSON.parse(res);
        if(res.length===0){
            message = '<h1>暂无搜索结果</h1>'
            $(".box").append(message)
        }else{
            let item = ''
            console.log(res[0].name)
            for (let i = 0; i<res.length;i++){
                item = item + '<div class="item clearfix">'+
                    '<div class="item_left">'+
                    '<img class="item_img"  src="'+ res[i].img+ '" alt="" />'+
                    '</div>'+
                    '<div class="item_rank">'+
                    ' <span>评分：'+res[i].grade+'</span>'+
                    '<br>'+
                    ' <span>评价人数：'+res[i].evalnum+'</span>'+
                    '</div>'+
                    '<div class="item_right">'+
                    ' <span class="item_name">书名：'+res[i].name+'</span><br>'+
                    '<span class="item_author">作者：'+res[i].author+'</span><br>'+
                    '<span class="item_text">出版社：'+res[i].publisher+'</span><br>'+
                    '<span class="item_text">出版年：'+res[i].ptime+'</span><br>'+
                    ' <span class="item_text">定价：'+res[i].price+'</span><br>'+
                    '<span class="item_text">ISBN：'+res[i].isbn+'</span>'+
                    '</div>'+
                    '</div>'
            }
            $(".box").append(item)
        }

    }
</script>
</html>
