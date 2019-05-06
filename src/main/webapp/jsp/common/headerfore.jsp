<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<div class="layui-header">
    <div class="layui-logo">哈尔滨租房网</div>
    <!-- 头部区域（可配合layui已有的水平导航） -->
    <ul class="layui-nav layui-layout-right">
        <li class="layui-nav-item">
            ${foreUser.commonUsername}
        </li>
        <li class="layui-nav-item"><a href="${ctx}/fore/logout">退出</a></li>
    </ul>
</div>
<div class="layui-header" style="background-color: #4E5465;color: #FF5722;">
    <ul class="layui-nav layui-layout-left">
        <li class="layui-nav-item"><a href="${ctx}/fore/index">首页</a></li>
        <li class="layui-nav-item"><a href="${ctx}/fore/house/queryAllHouse">待出租房源</a></li>
        <li class="layui-nav-item"><a href="${ctx}/fore/house/toaddhouse">我有房源</a></li>
        <li class="layui-nav-item"><a href="${ctx}/fore/message/toaddmessage">留言</a></li>
        <li class="layui-nav-item"><a href="${ctx}/fore/notice/queryNotice">公告</a></li>
        <li class="layui-nav-item"><a href="${ctx}/fore/user/show">个人信息</a></li>

    </ul>
</div>