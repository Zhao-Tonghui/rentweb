<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>哈尔滨租房网后台管理平台</title>
    <link rel="stylesheet" href="${ctx}/static/layui/css/layui.css">
    <link rel="script" href="${ctx}/static/jquery/jquery-3.4.0.js">
    <style>
        .red{color: red;}
        .green{color: mediumseagreen;}
    </style>
</head>
<body class="layui-layout-body">
<div class="layui-layout layui-layout-admin">

    <jsp:include page="/jsp/common/headerback.jsp"/>
    <div class="layui-body">
        <!-- 内容主体区域 -->
        <form class="layui-form" action="${ctx}/back/user/adduser">
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
            </div>
            <div class="layui-form-item">
                <div class="layui-input-block">
                    <button class="layui-btn" lay-submit lay-filter="formDemo">添加</button>
                    <button type="reset" class="layui-btn layui-btn-primary">重置</button>
                </div>
            </div>
        </form>
    </div>

    <jsp:include page="/jsp/common/footer.jsp"/>
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
        }
    )
</script>
</body>
</html>