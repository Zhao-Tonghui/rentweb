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
</head>
<body>
<div class="layui-layout layui-layout-admin">

    <jsp:include page="/jsp/common/headerfore.jsp"/>
    <div class="main">

        <form class="layui-form" style="padding-top: 10px;padding-left: 10px;" action="${ctx}/fore/message/queryAndaddmessage">
            <div class="layui-form-item">
                <label class="layui-form-label">留言昵称</label>
                <div class="layui-input-inline">
                    <input type="text" name="username" required  lay-verify="required" autocomplete="off" class="layui-input">
                </div>
            </div>
            <div class="layui-form-item layui-form-text">
                <label class="layui-form-label">留言内容</label>
                <div class="layui-input-inline">
                    <textarea name="detail" placeholder="请输入内容" class="layui-textarea"></textarea>
                </div>
            </div>
            <div class="layui-form-item">
                <div class="layui-input-block">
                    <button class="layui-btn" lay-submit lay-filter="formDemo">留言</button>
                </div>
            </div>
        </form>
        <h2>留言列表</h2>
        <c:forEach items="${messages}" var="obj">
            <article style="padding-left: 20px;padding-right: 20px;padding-top: 10px;padding-bottom: 10px;">
                留言人昵称【${obj.username}】<br>
                <p style="left: 60%;color: #4E5465;font-size: small;"><fmt:formatDate value="${obj.createDate}" pattern="yyyy-MM-dd"></fmt:formatDate></p><br>
                留言内容：${obj.detail}<br>
                <a href="${ctx}/fore/message/toaddreply/${obj.id}" style="font-weight: bolder;color: #2D93CA;">回复</a>
                <p style="color: #2E2D3C;">_________________________</p>
            </article>
        </c:forEach>
    </div>
    <jsp:include page="/jsp/common/footerfore.jsp"/>
</div>
<script src="${ctx}/static/layui/layui.js"></script>
<script src="${ctx}/static/jquery/jquery-3.4.0.js"></script>
<script>
    $(function () {

        if('${sucmes}'!=null && '${sucmes}'!=''){
            if("${sucmes}"==true)
                alert("留言成功");
            else if("${sucmes}"==false) alert("留言失败");
        }

    })
</script>
</body>
</html>