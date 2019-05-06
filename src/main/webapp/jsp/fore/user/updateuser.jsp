<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt_rt" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>哈尔滨租房网</title>
    <link rel="stylesheet" href="${ctx}/static/layui/css/layui.css">
    <link rel="script" href="${ctx}/static/jquery/jquery-3.4.0.js">
    <link rel="stylesheet" href="${ctx}/jsp/common/footerfore.css">
    <style>
        .red{color: red;}
        .green{color: mediumseagreen;}
    </style>
</head>
<body>
<div class="layui-layout layui-layout-admin">
    <jsp:include page="/jsp/common/headerfore.jsp"/>
    <jsp:include page="/jsp/common/sidefore.jsp"/>

    <div style="padding-left: 15%;" class="main">
        <form class="layui-form" action="${ctx}/fore/user/updateuser">
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
                <div class="layui-input-block">
                    <button class="layui-btn" lay-submit lay-filter="formDemo">确认修改</button>
                    <button type="reset" class="layui-btn layui-btn-primary">重置</button>
                </div>
            </div>
        </form>
    </div>

    <jsp:include page="/jsp/common/footerfore.jsp"/>
</div>
<script src="${ctx}/static/layui/layui.js"></script>
<script src="${ctx}/static/jquery/jquery-3.4.0.js"></script>
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

