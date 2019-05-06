<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2019/4/12
  Time: 13:48
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>哈尔滨租房网|index</title>
    <link rel="stylesheet" href="${ctx}/static/layui/css/layui.css">
    <style>
        .main{
            background:url("${ctx}/img/background.jpg");
            width:100%;
            height:100%;
            position: relative;
            padding:1px;
            box-sizing:border-box;
            z-index:1;
        }
        .main:after{
            content: "";
            width:100%;
            height:100%;
            position: absolute;
            left:0;
            top:0;
            background: inherit;
            filter: blur(2px);
            z-index: 2;
        }
        .a{
            position: absolute;
            left:50%;
            top:50%;
            transform: translate(-50%,-50%);
            width:200px;
            height:200px;
            text-align: center;
            z-index:11;
        }
        a{
            width:200px;
            height:200px;
        }
    </style>
</head>
<body>
<div class="main">
    <div class="a">
        <a href="${ctx}/fore/tologin" class="layui-btn">网站前台</a><br><br>
        <a href="${ctx}/back/tologin" class="layui-btn">后台管理</a>
    </div>
</div>
<script src="${ctx}/static/layui/layui.js"></script>
</body>
</html>
