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
        <form enctype="multipart/form-data" method="post" class="layui-form" action="${ctx}/fore/house/queryHouseByCategory/{category2}">
            <div class="layui-form-item">
                <label class="layui-form-label">据地址查找</label>
                <div class="layui-input-inline">
                    <select id="category1" name="category1" lay-verify="required" lay-filter="test1">
                        <option value="0">请选择区域</option>
                        <c:forEach items="${categories}" var="obj">
                            <option value="${obj.name}">${obj.name}</option>
                        </c:forEach>
                    </select>
                    <select id="category2" name="category2" lay-verify="required">

                    </select>
                    <button class="layui-btn" lay-submit lay-filter="formDemo">查找</button>
                </div>
            </div>
        </form>
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