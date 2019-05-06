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
        <form class="layui-form" style="padding-top: 10px;padding-left: 10px;" action="${ctx}/back/message/addreplyByMessageid">
            <input type="hidden" name="messageid" value="${messageid}">
            <div class="layui-form-item">
                <label class="layui-form-label">回复昵称</label>
                <div class="layui-input-inline">
                    <input type="text" name="replyName" required  lay-verify="required" autocomplete="off" class="layui-input">
                </div>
            </div>
            <div class="layui-form-item layui-form-text">
                <label class="layui-form-label">回复内容</label>
                <div class="layui-input-inline">
                    <textarea name="detail" placeholder="请输入内容" class="layui-textarea"></textarea>
                </div>
            </div>
            <div class="layui-form-item">
                <div class="layui-input-block">
                    <button class="layui-btn" lay-submit lay-filter="formDemo">回复</button>
                    <a href="${ctx}/back/message/queryAllmessage">返回</a>
                </div>
            </div>
        </form>
        <div style="padding: 15px;">
            <table class="layui-table">
                <colgroup>
                    <col width="150">
                    <col width="100">
                    <col width="400">
                </colgroup>
                <thead>
                <tr><th colspan="5"><h2>回复列表</h2></th></tr>
                <tr>
                    <th>回复昵称</th>
                    <th>留言ID</th>
                    <th width="30%">回复内容</th>
                    <th>回复时间</th>
                    <th width="10%">操作</th>
                </tr>
                </thead>
                <tbody>
                <c:forEach items="${replyies}" var="obj">
                    <tr>
                        <td>${obj.replyName}</td>
                        <td>${obj.messageid}</td>
                        <td>${obj.detail}</td>
                        <td>${obj.createDate}</td>
                        <td>
                            <a href="${ctx}/back/message/deleteReplyById/${obj.id}/${obj.messageid}">删除</a>
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
        if('${sucdelete}'!=null && '${sucdelete}'!=''){
            if("${sucdelete}==true")
                alert("删除成功");
            else if("${sucdelete}==false") alert("删除失败");
        }
        if('${sucmes}'!=null && '${sucmes}'!=''){
            if("${sucmes}==true")
                alert("回复成功");
            else if("${sucmes}==false") alert("回复失败");
        }

    })
</script>
</body>
</html>