<%--
  Created by IntelliJ IDEA.
  User: fjq
  Date: 2022/4/11
  Time: 20:46
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
            + path + "/";
%>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <base href="<%=basePath%>">
    <title>防疫志愿者人员信息管理</title>


    <link rel="icon" href="images/loginIcon.png">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css" integrity="sha384-p1KAotb3W9ndluCsqePPYnjRm3c6abdnIjo0tQwYUv83VsbsYd43RuofnFAaDo0E" crossorigin="anonymous">
    <%--    <link rel="stylesheet" href="./login.css">--%>
    <style>
        *{
            margin: 0;
            padding: 0;
        }
        #box{
            background: url("images/5.jpg");
            position:fixed;
            top: 0;
            left: 0;
            width:100%;
            height:100%;
            min-width: 1000px;
            z-index:-10;
            zoom: 1;
            background-color: #fff;
            background-repeat: no-repeat;
            background-size: cover;
            -webkit-background-size: cover;
            -o-background-size: cover;
            background-position: center 0;

        }
        .login{
            position: fixed;
            top:50%;
            left:50%;
            transform: translate(-50%,-50%);
        }
        .login_title{
            text-align: center;
            margin: 10px 0;
            font-size: 30px;
            color: white;
            font-family: "华文行楷";
        }
        .login_container{
            padding: 20px 30px;
            background: rgba(0,0,0,0.3);
        }
        .login_titles{
            margin-bottom: 10px;
            text-align: center;
            font-size: 16px;
            color: #eee;
        }
        .login_user{
            position: relative;
            margin: 20px 0;
        }
        .login_user img{
            position: absolute;
            height: 20px;
            top: 50%;
            left: 8px;
            transform: translateY(-50%);
        }
        .login_user input{
            outline: none;
            border: none;
            padding: 7px 0px 7px 35px;
            width: 250px;
            font-family: "Microsoft soft";
            font-size: 14px;
            opacity: 0.4;
        }
        .login_remenber{
            font-family: "Microsoft soft";
            font-size: 14px;
            color: #eee;
        }
        .login_remenber input {
            outline: none;
            border: none;
            opacity: 0.7;
            vertical-align: middle;
        }
        .login_submit div{
            cursor: pointer;
            background: #00a1ff;
            opacity: 0.8;
            text-align: center;
            color: white;
            font-size: 16px;
            height: 30px;
            line-height: 30px;
            margin: 10px 0;
        }
        .login_message div{
            background: red;
            opacity: 0.8;
            text-align: center;
            color: white;
            font-size: 16px;
            height: 30px;
            line-height: 30px;
            margin: 10px 0;
            display: none;
            transition:  2s;
        }
        .login_message{
            -webkit-animation: login_message 2s linear;
            -moz-animation: login_message 2s linear;
            animation:login_message 2s linear;
        }
        @-webkit-keyframes login_message{ /*设置内容由显示变为隐藏*/
            0%{opacity: 0;}
            100%{opacity: 1;}

        }
    </style>

</head>
<body>
<div id="box"></div>
<div class="login">
    <div class="login_title">防疫志愿者人员信息管理</div>
    <div class="login_container">
        <div class="login_titles">管理员登陆系统</div>
        <div class="login_message">
            <div id="login_message">提示信息</div>
        </div>
        <form action="LoginServlet" method="post">
            <div class="login_user">
                <img src="./images/user.png">
                <input id="user" name="pname" type="text" placeholder="请输入用户名">
            </div>
            <div class="login_pwd login_user">
                <img src="./images/pwd.png">
                <input id="pwd" type="password" name="pwd" placeholder="请输入密码">
            </div>
            <div class="login_remenber">
                <input id="remenber_pwd" type="checkbox" value="1" checked> 记住密码
            </div>
            <div class="login_submit" onclick="login()">
                <div><input type="submit" style="height: 100%;display: inline-block;width: 100%;background-color: #00a1ff" value="登录" class="submit"></div>
            </div>
        </form>
    </div>
</div>
</body>
<script src="./login.js"></script>
</html>

