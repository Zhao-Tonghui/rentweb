<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
        <table>
            <thead>
            <tr><td colspan="2" style="font-weight: bolder;color: #2E2D3C;"><h2>热门房源</h2></td></tr>
            </thead>
            <tbody>
            <c:forEach items="${houses}" var="obj">
                <tr>
                    <td rowspan="3"><c:if test="${obj.img!=null}">
                        <img id="images" alt="暂未上传房源图片" src="${ctx}/${obj.img}" style="width: 200px;height: 150px;">
                    </c:if>
                    </td>
                    <td style="font-weight: bold;font-size: 17px;"><a href="${ctx}/fore/house/queryHousedetailById/${obj.id}">${obj.title}</a></td>
                </tr>
                <tr>
                    <td style="color: #4E5465;">${obj.type} | 房屋面积${obj.area} | 租金${obj.rentMoney}</td>
                </tr>
                <tr>
                    <td style="color: #4E5465;">${obj.category1} ${obj.category2}</td>
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

        if('${suchouse}'!=null && '${suchouse}'!=''){
            if("${suchouse}==true")
                alert("添加成功");
            else if("${suchouse}==false") alert("添加失败");
        }
        if('${addstate}'!=null && '${addstate}'!=''){
            alert("${addstate}");
        }
    })
</script>
</body>
</html>