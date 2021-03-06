<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2019/4/22
  Time: 16:23
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>网站登录</title>
    <link rel="stylesheet" href="${ctx}/static/layui/css/layui.css">
    <style>
        .main{
            background:url("${ctx}/upload/background.jpg");
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
        .form{
                     position: absolute;
                     left:50%;
                     top:50%;
                     transform: translate(-50%,-50%);
                     width:200px;
                     height:200px;
                     text-align: center;
                     z-index:11;
                 }

    </style>
</head>
<body>
<div class="main">
    <div class="form">
        <form class="layui-form" action="${ctx}/fore/login">
            <h2 style="left: 15px;">哈尔滨租房网</h2><br>
            <input type="text" name="commonUsername" required lay-verify="required" placeholder="请输入用户名" autocomplete="off" class="layui-input"><br>
            <input type="password" name="password" required lay-verify="required" placeholder="用户密码" autocomplete="off" class="layui-input"><br>
            <button class="layui-btn" lay-submit lay-filter="formDemo">登录</button>
            <a href="${ctx}/fore/user/toadduser">注册</a>
        </form>
    </div>
</div>
<script src="${ctx}/static/layui/layui.js"></script>
<script src="${ctx}/static/jquery/jquery-3.4.0.js"></script>
<script type="application/javascript">
    $(function () {
            if('${errmsg}'!=null && '${errmsg}'!='')
                alert("${errmsg}");

        if('${sucuser}'!=null && '${sucuser}'!=''){
            if("${sucuser}==true")
                alert("注册成功");
            else if("${sucuser}==false") alert("注册失败");
        }
        }


    )
</script>
</body>
</html>
