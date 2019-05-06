<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt_rt" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>哈尔滨租房网后台管理平台</title>
    <link rel="stylesheet" href="${ctx}/static/layui/css/layui.css">
    <link rel="script" href="${ctx}/static/jquery/jquery-3.4.0.js">
    <style type="text/css">
        #images{
            width: 50px;
            height: 50px;
        }
    </style>

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
                    <th>系统房源</th>
                    <th>创建时间</th>
                    <th>房源图片</th>

                    <th>状态</th>
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
                        <td>${obj.systemboolean}</td>
                        <td><fmt:formatDate value="${obj.createDate}" pattern="yyyy-mm-dd HH:MM:ss"></fmt:formatDate></td>
                        <td><c:if test="${obj.img!=null}">
                            <img id="images" alt="暂未上传房源图片" src="${ctx}/${obj.img}">
                            </c:if>
                        </td>

                        <td>${obj.state}
                            <c:if test="${obj.state eq '未审核'}">
                                <a href="${ctx}/back/house/updateHousestate/${obj.id}">审核通过</a>
                            </c:if>
                        </td>
                        <td>
                            <a href="${ctx}/back/house/deleteHouse/${obj.id}">删除</a>
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