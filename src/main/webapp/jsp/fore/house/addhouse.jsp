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
        <form enctype="multipart/form-data" method="post" class="layui-form" action="${ctx}/fore/house/addhouse">
            <div class="layui-form-item">
                <label class="layui-form-label">标题</label>
                <div class="layui-input-inline">
                    <input type="text" name="title" required  lay-verify="required" autocomplete="off" class="layui-input">
                </div>
            </div>
            <div class="layui-form-item">
                <label class="layui-form-label">户型</label>
                <div class="layui-input-inline">
                    <input type="text" name="type" required lay-verify="required" autocomplete="off" class="layui-input">
                </div>
            </div>
            <div class="layui-form-item">
                <label class="layui-form-label">面积</label>
                <div class="layui-input-inline">
                    <input type="text" name="area" required  lay-verify="required" autocomplete="off" class="layui-input">
                </div>
            </div>
            <div class="layui-form-item">
                <label class="layui-form-label">租金</label>
                <div class="layui-input-inline">
                    <input type="text" name="rentMoney" required  lay-verify="required" autocomplete="off" class="layui-input">
                </div>
            </div>
            <div class="layui-form-item">
                <label class="layui-form-label">联系方式</label>
                <div class="layui-input-inline">
                    <input type="text" name="phonenumber" required  lay-verify="required" autocomplete="off" class="layui-input">
                </div>
            </div>
            <div class="layui-form-item">
                <label class="layui-form-label">房源地址</label>
                <div class="layui-input-inline">
                    <select id="category1" name="category1" lay-verify="required" lay-filter="test1">
                        <option value="0">请选择区域</option>
                        <c:forEach items="${categories}" var="obj">
                            <option value="${obj.name}">${obj.name}</option>
                        </c:forEach>
                    </select>
                    <select id="category2" name="category2" lay-verify="required">

                    </select>
                    <input type="text" name="detailAddress" required  lay-verify="required" autocomplete="off" class="layui-input">
                </div>
            </div>
            <div class="layui-form-item layui-form-text">
                <label class="layui-form-label">图片</label>
                <div class="layui-input-inline">
                    <input type="file" name="pictureFile">
                </div>
            </div>
            <div class="layui-form-item layui-form-text">
                <label class="layui-form-label">更多信息</label>
                <div class="layui-input-inline">
                    <textarea name="more" placeholder="请输入内容" class="layui-textarea"></textarea>
                </div>
            </div>
            <div class="layui-form-item">
                <div class="layui-input-block">
                    <button class="layui-btn" lay-submit lay-filter="formDemo">添加</button>
                    <button type="reset" class="layui-btn layui-btn-primary">重置</button>
                </div>
            </div>
        </form>
    </div>

    <jsp:include page="/jsp/common/footerfore.jsp"/>
</div>
<script src="${ctx}/static/layui/layui.js"></script>
<script src="${ctx}/static/jquery/jquery-3.4.0.js"></script>
<script>

    layui.use(['element','form','jquery'], function(){
        var element=layui.element;
        var form = layui.form;
        var $=layui.jquery;
        form.on('select(test1)', function() {
            //获取name
            var levelOneId=$('#category1').val();
            if(levelOneId==0){
                //清空小区
                var html='<option value="0" selected>请选择小区</option>';
                //选择小区更新
                $("#category2").html(html);
                form.render();
                return;
            }else {
                $.ajax({
                    url:"${ctx}/category/queryLevel2ByLevel1/"+levelOneId,
                    type:'get',
                    success:function (data) {
                        //根据data修改数据，重新渲染
                        var html='<option value="0" selected>请选择小区</option>';
                        var len=data.length;
                        for(var i=0;i<len;i++){
                            html+='<option value="'+data[i].name+'">'+data[i].name+'</option>';
                        }
                        //选择小区更新
                        $("#category2").html(html);
                        form.render();
                    }
                })
            }
        });
    });


</script>
</body>
</html>