<%--
  Created by IntelliJ IDEA.
  User: win8
  Date: 2016/11/28
  Time: 15:38
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt"  prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
    <title>学生信息管理系统</title>

    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <link href="Node/assets/css/dpl-min.css" rel="stylesheet" type="text/css" />
    <link href="Node/assets/css/bui-min.css" rel="stylesheet" type="text/css" />
    <link href="Node/assets/css/main-min.css" rel="stylesheet" type="text/css" />
</head>
<body>

<div class="header">

    <div class="dl-title">
        <!--<img src="/chinapost/Public/assets/img/top.png">-->
    </div>
    <div class="dl-log">
        欢迎您，<span class="dl-log-user">${admin.username}</span><a href="/logout.action" title="退出系统" class="dl-log-quit">[退出]</a>
    </div>
    <%--<div class="dl-log">--%>
        <%--欢迎您，<span class="dl-log-user">${admin.username}</span><a href="index.jsp" title="退出系统" class="dl-log-quit">[退出]</a>--%>
    <%--</div>--%>
</div>
<div class="content">
    <div class="dl-main-nav">
        <div class="dl-inform"><div class="dl-inform-title"><s class="dl-inform-icon dl-up"></s></div></div>
        <ul id="J_Nav"  class="nav-list ks-clear">
            <li class="nav-item dl-selected"><div class="nav-item-inner nav-home">基本管理</div></li>
            <%--<li class="nav-item dl-selected"><div class="nav-item-inner nav-order">查询功能</div></li>--%>
        </ul>
    </div>
    <ul id="J_NavContent" class="dl-tab-conten">

    </ul>
</div>
<script type="text/javascript" src="Node/assets/js/jquery-1.8.1.min.js"></script>
<script type="text/javascript" src="Node/assets/js/bui-min.js"></script>
<script type="text/javascript" src="Node/assets/js/common/main-min.js"></script>
<script type="text/javascript" src="Node/assets/js/config-min.js"></script>
<script>
    BUI.use('common/main',function(){
        var config = [{id:'1',menu:[{text:'基本管理',items:[{id:'12',text:'学生信息',href:'stuList.action'},{id:'3',text:'课程信息',href:'CourseList.action'},
            {id:'4',text:'用户管理',href:'UserList.action'},{id:'6',text:'成绩管理',href:'MarkList.action'}]}]}];
        new PageUtil.MainPage({
            modulesConfig : config
        });
    });
</script>
</body>
</html>
