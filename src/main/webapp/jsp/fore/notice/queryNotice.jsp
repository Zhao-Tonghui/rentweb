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
        <c:forEach items="${notices}" var="obj">
            <article style="padding-left: 20px;padding-right: 20px;padding-top: 20px;padding-bottom: 20px;">
                <h2>公告${obj.id}：${obj.title}</h2><br>
                <p style="left: 60%;color: #4E5465;"><fmt:formatDate value="${obj.date}" pattern="yyyy-MM-dd"></fmt:formatDate></p><br>
                <p>${obj.detail}</p>
            </article>
        </c:forEach>
    </div>
    <jsp:include page="/jsp/common/footerfore.jsp"/>
</div>
<script src="${ctx}/static/layui/layui.js"></script>
<script src="${ctx}/static/jquery/jquery-3.4.0.js"></script>

</body>
</html>