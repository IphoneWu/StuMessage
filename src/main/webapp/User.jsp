
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt"  prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
    <title></title>
    <meta charset="UTF-8">
    <link rel="stylesheet" type="text/css" href="Node/Css/bootstrap.css" />
    <link rel="stylesheet" type="text/css" href="Node/Css/bootstrap-responsive.css" />
    <link rel="stylesheet" type="text/css" href="Node/Css/style.css" />
    <script type="text/javascript" src="Node/Js/jquery.js"></script>
    <script type="text/javascript" src="Node/Js/bootstrap.js"></script>
    <script type="text/javascript" src="Node/Js/ckform.js"></script>
    <script type="text/javascript" src="Node/Js/common.js"></script>

 

    <style type="text/css">
        body {
            padding-bottom: 40px;
        }
        .sidebar-nav {
            padding: 9px 0;
        }

        @media (max-width: 980px) {
            /* Enable use of floated navbar text */
            .navbar-text.pull-right {
                float: none;
                padding-left: 5px;
                padding-right: 5px;
            }
        }


    </style>
</head>
<body>
<form class="form-inline definewidth m20" action="/UserListByUsername.action" method="post">
    登录名：
    <input type="text" name="idcard" id="idcard" class="abc input-default" placeholder="请输入登录名..." value="" >&nbsp;&nbsp;
    <button type="submit" class="btn btn-primary">查询</button>&nbsp;&nbsp; <button type="button" class="btn btn-success" id="addnew">新增用户</button>
</form>
<table class="table table-bordered table-hover definewidth m10">
    <thead>
    <tr>
        <th>登录名</th>
        <th>密码</th>
    </tr>
    </thead>
    <c:forEach items="${userList}" var="userList">
	     <tr>
            <td>${userList.idcard}</td>
            <td>${userList.passowrd}</td>
            <td>
                <a href="/UserById.action?id=${userList.id}">编辑</a>
                &nbsp;&nbsp;
                <a onclick="del()" href="/deleteUser.action?id=${userList.id}">删除</a>
            </td>
        </tr>
    </c:forEach>
</table>
<div class="inline pull-right page">
    共${userNum}条记录
    <c:if test="${currentPage == 1}">
        <span class="btn btn-default current">1</span>
    </c:if>
    <c:if test="${currentPage != 1}">
        <a class="btn btn-default" href="/UserList.action?page=1">1</a>
    </c:if>

    <%
        int pageTimes = (int) session.getAttribute("pageTimes");
        for(int i=1;i<pageTimes;i++)
        {
            request.setAttribute("page", i+1);
    %>
    <c:if test="${currentPage == page}">
        <span class="btn btn-default current"><%=i+1%></span>
    </c:if>
    <c:if test="${currentPage != page}">
        <a class="btn btn-default" href="/UserList.action?page=<%=i+1%>"><%=i+1%></a>
    </c:if>
    <%} %>
</div>
</body>
</html>
<script>
    $(function () {
        

		$('#addnew').click(function(){

				window.location.href="gotoAdd.action";
		 });


    });

	function del(userid)
	{
        alert("删除成功！");
	}
</script>