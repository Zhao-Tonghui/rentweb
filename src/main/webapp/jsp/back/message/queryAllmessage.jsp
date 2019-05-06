<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt_rt" %>
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
                    <col width="50">
                    <col width="100">
                    <col width="400">
                </colgroup>
                <thead>
                <tr><th colspan="5"><h2>留言列表</h2></th></tr>
                <tr>
                    <th>ID</th>
                    <th>留言人</th>
                    <th>留言内容</th>
                    <th>留言时间</th>
                    <th>操作</th>
                </tr>
                </thead>
                <tbody>
                <c:forEach items="${messages}" var="obj">
                    <tr>
                        <td>${obj.id}</td>
                        <td>${obj.username}</td>
                        <td>${obj.detail}</td>
                        <td>${obj.createDate}</td>
                        <td>
                            <a href="${ctx}/back/message/toaddreplyByMessageid/${obj.id}">回复列表</a>
                            <a href="${ctx}/back/message/deleteMessageById/${obj.id}">删除</a>
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

        if('${sucuser}'!=null && '${sucuser}'!=''){
            if("${sucuser}==true")
                alert("添加成功");
            else if("${sucuser}==false") alert("添加失败");
        }

        if('${sucdelete}'!=null && '${sucdelete}'!=''){
            if("${sucdelete}==true")
                alert("删除成功");
            else if("${sucdelete}==false") alert("删除失败");
        }
        if('${sucupdate}'!=null && '${sucupdate}'!=''){
            if("${sucupdate}==true")
                alert("审核通过");
            else if("${sucupdate}==false") alert("审核失败");
        }
    })
</script>
</body>
</html>