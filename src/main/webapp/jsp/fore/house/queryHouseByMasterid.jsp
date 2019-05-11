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
    <jsp:include page="/jsp/common/sidefore.jsp"/>

    <div style="padding-left: 15%;">
        <table class="layui-table">
            <colgroup>
                <col width="50">
                <col width="200">
                <col width="100">
                <col width="70">
                <col width="70">
                <col width="100">
                <col width="70">
            </colgroup>
            <thead>
            <tr><th colspan="8"><h2>房源信息列表</h2></th></tr>
            <tr>
                <th>房源ID</th>
                <th>房源标题</th>
                <th>房源类型</th>
                <th>房源面积</th>
                <th>房源租金</th>
                <th>房主联系方式</th>
                <th>房源区域</th>
                <th>房源小区</th>
                <th>房源详细地址</th>
                <th>操作</th>
            </tr>
            </thead>
            <tbody>
            <c:forEach items="${houses}" var="obj">
                <tr>
                    <td>${obj.id}</td>
                    <td>${obj.title}</td>
                    <td>${obj.type}</td>
                    <td>${obj.area}</td>
                    <td>${obj.rentMoney}</td>
                    <td>${obj.phonenumber}</td>
                    <td>${obj.category1}</td>
                    <td>${obj.category2}</td>
                    <td>${obj.detailAddress}</td>
                    <td>
                        <c:if test="${obj.state eq '已租'}">
                            <a href="${ctx}/fore/house/queryContract/${obj.id}">查看合同</a>
                        </c:if>
                        <c:if test="${obj.state ne '已租'}">
                            <a href="${ctx}/fore/house/deleteHouse/${obj.id}">删除</a>
                        </c:if>
                    </td>
                </tr>
            </c:forEach>
            </tbody>
        </table>
    </div>

    <jsp:include page="/jsp/common/footerfore.jsp"/>
</div>
<script src="${ctx}/static/layui/layui.js"></script>
<script src="${ctx}/static/jquery/jquery-3.4.0.js"></script>
<script>

    $(function () {
            if('${sucdel}'!=null && '${sucdel}'!=''){
                if("${sucdel}"==true)
                    alert("删除成功");
                else if("${sucdel}"==false) alert("删除失败");
            }
        }
    )
</script>
</body>
</html>

