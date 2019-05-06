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
            top: 25%;
            left:50%;
            transform: translate(-50%,-50%);
            width:500px;
            height:200px;
            text-align: center;
            z-index:11;
        }

    </style>
</head>
<body>
<div class="main">
    <div class="form">
        <form class="layui-form" action="${ctx}/fore/user/adduser">
            <div class="layui-form-item">
                <label class="layui-form-label">用户名</label>
                <div class="layui-input-inline">
                    <input type="text" name="commonUsername" required  lay-verify="required" placeholder="请输入用户名" autocomplete="off" class="layui-input">
                </div>
            </div>
            <div class="layui-form-item">
                <label class="layui-form-label">密码框</label>
                <div class="layui-input-inline">
                    <input type="password" name="password" required lay-verify="required" placeholder="请输入密码" autocomplete="off" class="layui-input">
                </div>
            </div>
            <div class="layui-form-item">
                <label class="layui-form-label">真实姓名</label>
                <div class="layui-input-inline">
                    <input type="text" name="realName" required  lay-verify="required" placeholder="请输入用户真实姓名" autocomplete="off" class="layui-input">
                </div>
            </div>
            <div class="layui-form-item">
                <label class="layui-form-label">联系方式</label>
                <div class="layui-input-inline">
                    <input type="text" name="phonenumber" required  lay-verify="required" placeholder="请输入用户联系方式" autocomplete="off" class="layui-input">
                </div>
            </div>
            <div class="layui-form-item">
                <label class="layui-form-label">身份证号</label>
                <div class="layui-input-inline">
                    <input type="text" id="idnumber" name="idnumber" required  lay-verify="required" placeholder="请输入用户身份证号" autocomplete="off" class="layui-input">
                </div>
                <div class="layui-form-mid layui-word-aux"><span id="msg">正确格式18位哦</span></div>
            </div>
            <div class="layui-form-item">
                <label class="layui-form-label">固定住址</label>
                <div class="layui-input-inline">
                    <input type="text" name="address" required  lay-verify="required" placeholder="请输入用户固定住址" autocomplete="off" class="layui-input">
                </div>
            </div>
            <div class="layui-form-item">
                <label class="layui-form-label">用户角色</label>
                <div class="layui-input-inline">
                    <select name="role" lay-verify="required">
                        <option value="寻租者">寻租者</option>
                        <option value="中介">中介</option>
                        <option value="房东">房东</option>
                    </select>
                </div>
                <div style="font-size: 16px;color: #0C0C0C;">---寻租者不可出租房屋---房东/中介不可承租房屋</div>
            </div>

                    <button class="layui-btn" lay-submit lay-filter="formDemo">注册</button>
                    <button type="reset" class="layui-btn layui-btn-primary">重填</button>

        </form>
    </div>
</div>
<script src="${ctx}/static/layui/layui.js"></script>
<script src="${ctx}/static/jquery/jquery-3.4.0.js"></script>
<script>
    layui.use('form', function(){
        var form = layui.form();
        form.render();
    });
</script>
<script>

    $(function () {

            $("#idnumber").blur(function () {
                var text=$(this).val();
                if(text.length!=18){
                    $("#msg").html("错误格式");
                    $("#msg").addClass("red");
                }
                else{
                    $("#msg").html("当前为正确格式");
                    $("#msg").addClass("green");
                }
            })
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
