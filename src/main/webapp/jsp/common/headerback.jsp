<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<div class="layui-header">
    <div class="layui-logo">哈尔滨租房网后台管理平台</div>
    <!-- 头部区域（可配合layui已有的水平导航） -->
    <ul class="layui-nav layui-layout-right">
        <li class="layui-nav-item">
            ${backUser.adminName}
        </li>
        <li class="layui-nav-item"><a href="${ctx}/back/logout">退出</a></li>
    </ul>
</div>

<div class="layui-side layui-bg-black">
    <div class="layui-side-scroll">
        <!-- 左侧导航区域（可配合layui已有的垂直导航） -->
        <ul class="layui-nav layui-nav-tree"  lay-filter="test">
            <li class="layui-nav-item layui-nav-itemed">
                <span>
                <a class="" href="javascript:;">网站用户信息</a></span>
                <dl class="layui-nav-child">
                    <dd><a href="${ctx}/back/user/queryAlluser">用户列表</a></dd>
                    <dd><a href="${ctx}/back/user/toadduser">添加</a></dd>
                </dl>
            </li>
            <li class="layui-nav-item layui-nav-itemed">
                <span>
                    <a class="" href="javascript:;">网站在租房源</a></span>
                <dl class="layui-nav-child">
                    <dd><a href="${ctx}/back/house/queryAllhouse">房源列表</a></dd>
                    <dd><a href="${ctx}/back/house/toaddhouse">添加</a></dd>
                </dl>
            </li>
            <li class="layui-nav-item"><span><a href="${ctx}/back/fault/queryAllfault">管理报障</a></span></li>
            <li class="layui-nav-item"><span><a href="${ctx}/back/message/queryAllmessage">留言问答</a></span></li>
            <li class="layui-nav-item"><span><a href="${ctx}/back/notice/queryAllnotice">公告信息</a></span></li>
        </ul>
    </div>
</div>