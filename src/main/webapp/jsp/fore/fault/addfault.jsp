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
        <form class="layui-form" action="${ctx}/fore/fault/addfault">
            <input type="hidden" name="userid" value="${foreUser.id}">
            <div class="layui-form-item">
                <label class="layui-form-label">报障住址</label>
                <div class="layui-input-block">
                    <input type="text" name="address" required  lay-verify="required" placeholder="请输入报障住址" autocomplete="off" class="layui-input">
                </div>
            </div>
            <div class="layui-form-item layui-form-text">
                <label class="layui-form-label">保障内容</label>
                <div class="layui-input-block">
                    <textarea name="detail" placeholder="请输入内容" class="layui-textarea"></textarea>
                </div>
            </div>
            <div class="layui-form-item">
                <div class="layui-input-block">
                    <button class="layui-btn" lay-submit lay-filter="formDemo">确认报障</button>
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
            if('${sucfault}'!=null && '${sucfault}'!=''){
                if("${sucfault}==true")
                    alert("已报障");
                else if("${sucfault}==false") alert("报障失败");
            }
        }
    )
</script>
</body>
</html>

