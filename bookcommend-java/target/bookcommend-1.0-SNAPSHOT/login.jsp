<%--
  Created by IntelliJ IDEA.
  User: lip
  Date: 2021/7/1
  Time: 16:22
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<style>
    * {
        padding: 0;
        margin: 0;
    }

    .border{
        padding: 30px;
        height:300px;
        width: 400px;
        position: absolute;
        top: 50%;
        left: 50%;
        transform: translate(-50%,-50%);
        background-color: #fff;
        border-radius: 20px;
        text-align: center;
    }
    .title{
        color: rgb(89, 90, 92);
        font-size: 26px;
    }
    .userName{
        border-radius: 20px;
        margin-left: 16px;
        margin-top: 30px;
        border: none;
        height: 30px;
        width: 200px;
        outline: none;
        border:1px solid #eaeaea;
        padding-left: 10px;
    }
    .passWord{
        border-radius: 20px;
        margin-left: 16px;
        border: none;
        height: 30px;
        width: 200px;
        outline: none;
        margin-top: 50px;
        border:1px solid #eaeaea;
        padding-left: 10px;
    }
    .btnLogin{
        color: #FFF;
        background-color: #6695FF;
        font-size: 16px;
        margin-top: 34px;
        height: 40px;
        width: 200px;
        border-radius: 20px;
        outline: none;
        border: none;
        cursor: pointer;
    }
    .name{
        color: rgb(89, 90, 92);
        font-size: 20px;
    }
</style>

<body style="background-color: #F2F4F7;">
<div id="app">
    <div class="border">
        <p class="title">登&nbsp&nbsp&nbsp录</p>

        <form action="${pageContext.request.contextPath}/login" method="post">
            <span class="name">用户名:</span><input class="userName" type="text" name="name" ><br>
            <span class="name">密&nbsp&nbsp&nbsp码:</span><input class="passWord" type="password" name="password" >
            <br>
            <span style="font-size: 10px;color: red">
                ${msg}
            </span>
            <br>
            <button class="btnLogin">登&nbsp&nbsp&nbsp录</button>
        </form>
    </div>

</div>
</body>
<script>
</script>
</html>