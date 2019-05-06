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

        <table >
            <thead>
            <tr><td colspan="2" style="font-weight: bolder;color: #2E2D3C;"><h2>房屋详细信息</h2></td></tr>
            </thead>
            <tbody style="color: #4E5465;">
                <tr>
                    <td rowspan="3" width="310px"><c:if test="${rent.img!=null}">
                        <img id="images" alt="暂未上传房源图片" src="${ctx}/${rent.img}" style="width: 300px;height: 250px;">
                    </c:if>
                    </td>
                    <td style="font-weight: bold;font-size: 17px;">${rent.title}</td>
                </tr>
                <tr>
                    <td>户型：${rent.type}</td>
                </tr>
                <tr>
                    <td>面积：${rent.area}</td>
                </tr>
                <tr>
                    <td></td><td>租金：${rent.rentMoney}</td>
                </tr>
                <tr>
                    <td></td><td>地址：${rent.category1} ${rent.category2} 详细地址${rent.detailAddress}</td>
                </tr>
                <tr>
                    <td></td><td>系统房源：${rent.systemboolean}</td>
                </tr>
                <tr>
                    <td></td><td>创建时间：<fmt:formatDate value="${rent.createDate}" pattern="yyyy-mm-dd HH:MM:ss"></fmt:formatDate></td>
                </tr>
                <tr>
                    <td></td><td>联系人电话：${rent.phonenumber}</td>
                </tr>
                <tr>
                    <td></td><td>状态：${rent.state}</td>
                </tr>
                <tr>
                    <td></td><td>更多信息：${rent.more}</td>
                </tr>
                <tr>
                    <td></td><td><button id="confirm" formaction="${ctx}/fore/house/addcontract/${rent.id}">租房</button>
                        <a href="javascript:history.go(-1)">返回</a></td>
                </tr>
            </tbody>
        </table>
    </div>

    <jsp:include page="/jsp/common/footerfore.jsp"/>
</div>
<script src="${ctx}/static/layui/layui.js"></script>
<script src="${ctx}/static/jquery/jquery-3.4.0.js"></script>
<script>
    $(function () {
        $("#confirm").click(function () {
            if('${foreUser.role}'=="寻租者"){
                alert("确认租房？");
                location.href="${ctx}/fore/house/addcontract/${rent.id}";
            }
            else{
                alert("抱歉！您的身份角色不是承租者不可租房！");
            }
        })
    })
</script>
</body>
</html>