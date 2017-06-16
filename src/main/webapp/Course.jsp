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
<form class="form-inline definewidth m20" action="/CourseListByCno.action" method="post">
    课程号：
    <input type="text" name="cno" id="cno"class="abc input-default" placeholder="请输入课程号..." value="">&nbsp;&nbsp;
    <button type="submit" class="btn btn-primary">查询</button>&nbsp;&nbsp; <Button type="button" class="btn btn-success" id="addnew">新增课程</Button>
</form>
<table class="table table-bordered table-hover definewidth m10" >
    <thead>
    <tr>
        <th>课程号</th>
        <th>课程名称</th>
    </tr>
    </thead>
<c:forEach items="${courseList}" var="courseList">
    <tr>
        <td>${courseList.cno}</td>
        <td>${courseList.cname}</td>
        <td>
            <a href="CourseByCno.action?cno=${courseList.cno}">编辑</a>
            &nbsp;&nbsp;
            <a onclick="del()" href="/deleteCourse.action?cno=${courseList.cno}">删除</a>
        </td>
    </tr>
    </c:forEach>
</table>
<div class="inline pull-right page">
    共${courseNum}条记录
    <%--<c:if test="${currentPage == 1}">--%>
        <%--<span class="btn btn-default disabled">前一页</span>--%>
    <%--</c:if>--%>
    <%--<c:if test="${currentPage != 1}">--%>
        <%--<a class="btn btn-default" href="/CourseList.action?page=${currentPage-1}">前一页</a>--%>
    <%--</c:if>--%>
    <c:if test="${currentPage == 1}">
        <span class="btn btn-default current">1</span>
    </c:if>
    <c:if test="${currentPage != 1}">
        <a class="btn btn-default" href="/CourseList.action?page=1">1</a>
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
        <a class="btn btn-default" href="/CourseList.action?page=<%=i+1%>"><%=i+1%></a>
    </c:if>
    <%} %>

    <%--<c:if test="${currentPage == pageTimes}">--%>
        <%--<span class="btn btn-default disabled">后一页</span>--%>
    <%--</c:if>--%>
    <%--<c:if test="${currentPage != pageTimes}">--%>
        <%--<a class="btn btn-default" href="/CourseList.action?page=${currentPage+1}">后一页</a>--%>
    <%--</c:if>--%>

</div>
</body>
</html>

<script>
    $(function () {

        $('#addnew').click(function(){

            window.location.href="Courseadd.jsp";
        });


    });

    function del()
    {
        alert("删除成功！");
    }
</script>