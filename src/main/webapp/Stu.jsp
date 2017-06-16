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
    <%--引入bootstrapTable--%>
    <%--<link rel="stylesheet" type="text/css" href="Node/Css/bootstrap-table.min.css"/>--%>
    <%--<script type="text/javascript" src="Node/Js/bootstrap-table.min.js"/>--%>
    <%--<script type="text/javascript" src="Node/Js/bootstrap-table-zh-CN.min.js"/>--%>
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
<form class="form-inline definewidth m20" action="/stuBySno.action" method="post">
    学号：
    <input type="text" name="sno" id="sno"class="abc input-default" placeholder="请输入学号..." value="">&nbsp;&nbsp;
    <button  type="submit" class="btn btn-primary" >查询</button>&nbsp;&nbsp; <button type="button" class="btn btn-success" id="addnew">添加学生</button>


<table class="table table-bordered table-hover definewidth m10" >
    <thead>
    <tr>
        <th>学号</th>
        <th>姓名</th>
        <th>性别</th>
        <th>出生年月</th>
        <th>籍贯</th>
        <th>班级</th>
        <th>学院</th>
    </tr>
    </thead>
        <c:forEach items="${stuList}" var="stu">

	     <tr>

            <td>${stu.sno}</td>
            <td>${stu.sname}</td>
            <td>${stu.ssex}</td>
             <td><fmt:formatDate value="${stu.sbirth}"/></td>
             <td>${stu.address}</td>
             <td>${stu.class1}</td>
             <td>${stu.college}</td>
            <td>
                  <a href="/stuEditSno.action?sno=${stu.sno}">编辑</a>
                  &nbsp;&nbsp;
                  <a id="del" name="del"onclick="del()" href="deleStuBySno.action?sno=${stu.sno}">删除</a>
            </td>
        </tr>
        </c:forEach>
</table>
</form>
<div class="inline pull-right page">
        共${stuNum}条记录
    <%--<c:if test="${currentPage == 1}">--%>
       <%--<span class="btn btn-default disabled">前一页</span>--%>
    <%--</c:if>--%>
    <%--<c:if test="${currentPage != 1}">--%>
        <%--<a class="btn btn-default" href="/stuList.action?page=${currentPage-1}">前一页</a>--%>
    <%--</c:if>--%>
    <c:if test="${currentPage == 1}">
        <span class="btn btn-default current">1</span>
    </c:if>
    <c:if test="${currentPage != 1}">
        <a class="btn btn-default" href="/stuList.action?page=1">1</a>
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
        <a class="btn btn-default" href="/stuList.action?page=<%=i+1%>"><%=i+1%></a>
    </c:if>
    <%} %>

    <%--<c:if test="${currentPage == pageTimes}">--%>
        <%--<span class="btn btn-default disabled">后一页</span>--%>
    <%--</c:if>--%>
    <%--<c:if test="${currentPage != pageTimes}">--%>
        <%--<a class="btn btn-default" href="/stuList.action?page=${currentPage+1}">后一页</a>--%>
    <%--</c:if>--%>

</div>
</body>
</html>
<script>
    $(function () {
        
		$('#addnew').click(function(){

				window.location.href="Stuadd.jsp";
		 });
    });
    var del=function() {
        alert("删除成功！");
    }
</script>