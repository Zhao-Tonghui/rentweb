<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt_rt" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>哈尔滨租房网</title>
    <link rel="stylesheet" href="${ctx}/static/layui/css/layui.css">
    <link rel="script" href="${ctx}/static/jquery/jquery-3.4.0.js">
    <script language="javascript">
        function preview(oper)
        {
            if (oper < 10){
                bdhtml=window.document.body.innerHTML;//获取当前页的html代码
                sprnstr="<!--startprint"+oper+"-->";//设置打印开始区域
                eprnstr="<!--endprint"+oper+"-->";//设置打印结束区域
                prnhtml=bdhtml.substring(bdhtml.indexOf(sprnstr)+18); //从开始代码向后取html
                prnhtml=prnhtml.substring(0,prnhtml.indexOf(eprnstr));//从结束代码向前取html
                window.document.body.innerHTML=prnhtml;
                window.print();
                window.document.body.innerHTML=bdhtml;
            } else {
                window.print();
            }
        }
    </script>
    <style>
        #sty{
            font-size: medium;
            padding-left: 40px;
            padding-right: 40px;
        }
    </style>
</head>
<body>
<div class="layui-layout layui-layout-admin">
    <jsp:include page="/jsp/common/headerfore.jsp"/>
    <div class="main">
        <h2 style="text-align: center;">确认房屋租赁合同</h2>
        <!--startprint1-->

        <!--打印内容开始-->
        <div id=sty>
            出租方：(${contract.masterRealName})，以下简称甲方
            <br>
            ​       身份证号：(${contract.masteridnumber})
            <br>
                   联系方式：(${contract.masterphonenumber})
            <br>
            承租方：(${contract.tenantRealName})，以下简称乙方
            <br>
            ​       身份证号：(${contract.tenantidnumber})
            <br>
                   联系方式：(${contract.tenantphonenumber})
            <br>
            根据《中华人民共和国》及有关规定，为明确甲、乙双方的权利义务关系，经双方协商一致，签订本合同。
            <br>
            第一条　甲方将自有的坐落在哈尔滨市(${contract.category1})区(${contract.category2})小区______的房屋栋间，建筑面积平方米(${contract.area})、类型(${contract.type})，出租给乙方使用。
            <br>
            第二条　租赁期限
            <br>
            租赁期共___个月，甲方从__年__月__日起将出租房屋交付乙方使用。
            <br>
            乙方有下列情形之一的，甲方可以终止合同，收回房屋：
            <br>
            1.擅自将房屋转租、分租、转让、转借、联营、入股或与他人调剂交换的;
            <br>
            2.利用承租房屋进行非法活动，损害公共利益的;
            <br>
            3.拖欠租金个月或空置月的。
            <br>
            合同期满后，如甲方仍继续出租房屋的，乙方拥有优先承租权。
            <br>
            租赁合同因期满而终止时，如乙方确实无法找到房屋，可与甲方协商酌情延长租赁期限。
            <br>
            第三条　租金和租金交纳期限、税费和税费交纳方式
            <br>
            甲乙双方议定月租金(${contract.rentMoney})元，由乙方在___交纳给甲方。先付后用。甲方收取租金时必须出具由税务机关或县以上财政部门监制的收租凭证。无合法收租凭证的乙方可以拒付。
            <br>
            甲乙双方按规定的税率和标准交纳房产租赁税费，交纳方式按下列第__款执行： 1.有关税法和镇政发(90)第34号文件规定比例由甲、乙方各自负担; 2.甲、乙双方议定。
            <br>
            第四条　租赁期间的房屋修缮和装饰
            <br>
            修缮房屋是甲方的义务。甲方对出租房屋及其设备应定期检查，及时修缮，做到不漏、不淹、三通(户内上水、下水、照明电)和门窗好，以保障乙方安全正常使用。
            <br>
            修缮范围和标准按城建部(87)城住公字第13号通知执行。
            <br>
            甲方修缮房屋时，乙方应积极协助，不得阻挠施工。
            <br>
            出租房屋的修缮，经甲乙双方商定，采取下述第___款办法处理：
            <br>
            1.按规定的维修范围，由甲方出资并组织施工;
            <br>
            2.由乙方在甲方允诺的维修范围和工程项目内，先行垫支维修费并组织施工，竣工后，其维修费用凭正式发票在乙方应交纳的房租中分___次扣除;
            <br>
            3.由乙方负责维修;
            <br>
            4.甲乙双方议定。
            <br>
            乙方因使用需要，在不影响房屋结构的前提下，可以对承租房屋进行装饰，但其规模、范围、工艺、用料等均应事先得到甲方同意后方可施工。对装饰物的工料费和租赁期满后的权属处理，双方议定：工料费由乙方所有权属甲方。
            <br>
            第五条　租赁双方的变更
            <br>
            1.如甲方按法定手续程序将房产所有权转移给第三方时，在无约定的情况下，本合同对新的房产所有者继续有效;
            <br>
            2.甲方出售房屋，须在三个月前书面通知乙方，在同等条件下，乙方有优先购买权;
            <br>
            3.乙方需要与第三人互换用房时，应事先征得甲方同意，甲方应当支持乙方的合理要求。
            <br>
            第六条　违约责任
            <br>
            1.甲方未按本合同第一、二条的约定向乙方交付符合要求的房屋，负责赔偿___元。
            <br>
            2.租赁双方如有一方未履行第四条约定的有关条款的，违约方负责赔偿对方___元。
            <br>
            3.乙方逾期交付租金，除仍应补交欠租外，并按租金的3%,以天数计算向甲方交付违约金。
            <br>
            4.甲方向乙方收取约定租金以外的费用，乙方有权拒付。
            <br>
            5.乙方擅自将承租房屋转给他人使用，甲方有权责令停止转让行为，终止租赁合同。同时按约定租金的3%，以天数计算由乙方向甲方支付违约金。
            <br>
            6.本合同期满时，乙方未经甲方同意，继续使用承租房屋，按约定租金的2%，以天数计算向甲方支付违约金后，甲方仍有终止合同的申诉权。
            <br>
            上述违约行为的经济索赔事宜，甲乙双方议定在本合同签证机关的监督下进行。
            <br>
            第七条　免责条件
            <br>
            1.房屋如因不可抗拒的原因导致损毁或造成乙方损失的，甲乙双方互不承担责任。
            <br>
            2.因市政建设需要拆除或改造已租赁的房屋，使甲乙双方造成损失，互不承担责任。
            <br>
            因上述原因而终止合同的，租金按实际使用时间计算，多退少补。
            <br>
            第八条　争议解决的方式
            <br>
            本合同在履行中如发生争议，双方应协商解决;协商不成时，任何一方均可向房屋租赁管理机关申请调解，调解无效时，可向市工商行政管理局经济合同仲裁委员会申请仲裁，也可以向人民法院起诉。
            <br>
            第九条 其他约定事宜
            <br>
            第十条　本合同未尽事宜，甲乙双方可共同协商，签订补充协议。补充协议报送市房屋租赁管理机关认可并报有关部门备案后，与本合同具有同等效力。
            <br>
            本合同一式4份，其中正本2份，甲乙方各执1份;副本2份，送市房管局、工商局备案。
            <br>
            签字（盖章）
            <br>
            合同有效期限：____年___月__日    至　____年___月__日
            <br><br><br>




            注：合同中横线处需甲乙双方线下协商签订，并签字盖章
        </div>
        <!--打印内容结束-->

        <!--endprint1-->
        <br><br>
        <div style="font-size: 17px;padding-left: 100px;">
            <input type=button name='button_export' title='打印' onclick=preview(1) value="打印">
            <a href="${ctx}/fore/index">返回首页</a>
        </div>

    </div>

    <jsp:include page="/jsp/common/footerfore.jsp"/>
</div>
<script src="${ctx}/static/layui/layui.js"></script>
<script src="${ctx}/static/jquery/jquery-3.4.0.js"></script>

</body>
</html>