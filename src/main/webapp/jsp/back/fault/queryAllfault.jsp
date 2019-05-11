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
                    <col width="100">
                    <col width="100">
                    <col width="300">
                    <col width="300">
                </colgroup>
                <thead>
                <tr><th colspan="8"><h2>待管理报障列表</h2></th></tr>
                <tr>
                    <th>编号</th>
                    <th>报障人ID</th>
                    <th>报障地址</th>
                    <th>保障内容</th>
                    <th>操作</th>
                </tr>
                </thead>
                <tbody>
                <c:forEach items="${faults}" var="obj">
                    <tr>
                        <td>${obj.id}</td>
                        <td>${obj.userid}</td>
                        <td>${obj.address}</td>
                        <td>${obj.detail}</td>
                        <td>
                        <a href="${ctx}/back/fault/updateFaultstate/${obj.id}">点击确定已维修</a>
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

        if('${sucupdate}'!=null && '${sucupdate}'!=''){
            if("${sucupdate}"==true)
                alert("更新通过");
            else if("${sucupdate}"==false) alert("更新失败");
        }
    })
</script>
</body>
</html>