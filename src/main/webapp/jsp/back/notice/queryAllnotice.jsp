<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>哈尔滨租房网后台管理平台</title>
    <link rel="stylesheet" href="${ctx}/static/layui/css/layui.css">
    <link rel="script" href="${ctx}/static/jquery/jquery-3.4.0.js">
</head>
<body class="layui-layout-body">
<div class="layui-layout layui-layout-admin">

    <jsp:include page="/jsp/common/headerback.jsp"/>
    <div class="layui-body">
        <!-- 内容主体区域 -->
        <div style="padding: 15px;">
            <table class="layui-table">
                <colgroup>
                    <col width="150">
                    <col width="200">
                    <col>
                </colgroup>
                <thead>
                <tr><th colspan="8"><h2>公告列表 <a href="${ctx}/back/notice/toaddNotice" style="color: gold;text-decoration: underline;">添加</a></h2></th></tr>
                <tr>
                    <th>公告ID</th>
                    <th>标题</th>
                    <th>内容</th>
                    <th>操作</th>
                </tr>
                </thead>
                <tbody>
                <c:forEach items="${notices}" var="obj">
                    <tr>
                        <td>${obj.id}</td>
                        <td>${obj.title}</td>
                        <td>${obj.detail}</td>
                        <td>
                            <a href="${ctx}/back/notice/deleteNotice/${obj.id}">删除</a>
                        </td>
                    </tr>
                </c:forEach>
                </tbody>
            </table>
        </div>
    </div>

    <jsp:include page="/jsp/common/footer.jsp"/>
</div>
<script src="${ctx}/static/layui/layui.js"></script>
<script src="${ctx}/static/jquery/jquery-3.4.0.js"></script>
<script>
    $(function () {

        if('${sucnotice}'!=null && '${sucnotice}'!=''){
            if("${sucnotice}==true")
                alert("添加成功");
            else if("${sucnotice}==false") alert("添加失败");
        }

        if('${sucdelete}'!=null && '${sucdelete}'!=''){
            if("${sucdelete}==true")
                alert("删除成功");
            else if("${sucdelete}==false") alert("删除失败");
        }
    })
</script>
</body>
</html>