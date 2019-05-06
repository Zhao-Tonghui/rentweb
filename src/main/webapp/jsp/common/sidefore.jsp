<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<div style="padding-top: 100px;" class="layui-side layui-bg-black">
    <div class="layui-side-scroll">
        <!-- 左侧导航区域（可配合layui已有的垂直导航） -->
        <ul class="layui-nav layui-nav-tree"  lay-filter="test">
            <li class="layui-nav-item"><span><a class="" href="${ctx}/fore/user/show">个人信息</a></span></li>
            <li class="layui-nav-item"><span><a href="${ctx}/fore/fault/toaddfault">报障</a></span></li>
            <li class="layui-nav-item"><span><a href="${ctx}/fore/house/queryHouseByTenanterid/${foreUser.id}">已租房屋</a></span></li>
            <li class="layui-nav-item"><span><a href="${ctx}/fore/house/queryHouseByMasterid/${foreUser.id}">已发布房源</a></span></li>
        </ul>
    </div>
</div>