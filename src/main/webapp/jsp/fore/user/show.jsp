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
        p{
            padding-bottom: 10px;
            font-size: 18px;
        }
    </style>
</head>
<body>
<div class="layui-layout layui-layout-admin">
    <jsp:include page="/jsp/common/headerfore.jsp"/>
    <jsp:include page="/jsp/common/sidefore.jsp"/>


    <div style="padding-left: 15%;" class="main">
        <p>用户名：${user.commonUsername}</p>
        <p>真实姓名：${user.realName}</p>
        <p>联系电话：${user.phonenumber}</p>
        <p>身份证号：${user.idnumber}</p>
        <p>固定住址：${user.address}</p>
        <p>用户角色：${user.role}</p>
        <p><a style="color: #2E2D3C;text-decoration: underline;" href="${ctx}/fore/user/toupdateuser">修改</a> </p>
    </div>

    <jsp:include page="/jsp/common/footerfore.jsp"/>
</div>
<script src="${ctx}/static/layui/layui.js"></script>
<script src="${ctx}/static/jquery/jquery-3.4.0.js"></script>
<script>

    $(function () {
            if('${upduser}'!=null && '${upduser}'!=''){
                if("${upduser}==true")
                    alert("修改成功");
                else if("${upduser}==false") alert("修改失败");
            }
        }
    )
</script>
</body>
</html>

