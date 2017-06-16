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
<form class="form-inline definewidth m20" action="/MarkListBySno.action" method="post">
    学号：
    <input type="text" name="sno" id="sno"class="abc input-default" placeholder="请输入学号..." value="">&nbsp;&nbsp;
    <button type="submit" class="btn btn-primary">查询</button>&nbsp;&nbsp; <button type="button" class="btn btn-success" id="addnew">成绩输入</button>
</form>
<table class="table table-bordered table-hover definewidth m10">
    <thead>
    <tr>
        <th>学号</th>
        <th>课程号</th>
        <th>分数</th>
    </tr>
    </thead>
    <c:forEach items="${markCustoms}" var="markCustoms">
        <tr>
            <td>${markCustoms.sno}</td>
            <td>${markCustoms.cno}</td>
            <td>${markCustoms.mark}</td>
            <td>
                <a href="/findMarkBySno_Cno.action?sno=${markCustoms.sno}&cno=${markCustoms.cno}">编辑</a>
                &nbsp;&nbsp;
                <a onclick="del()" href="/deleteMark.action?sno=${markCustoms.sno}&cno=${markCustoms.cno}">删除</a>
            </td>
     </tr>
    </c:forEach>
</table>
<div class="inline pull-right page">
    共${markNum}条记录
    <c:if test="${currentPage == 1}">
        <span class="btn btn-default current">1</span>
    </c:if>
    <c:if test="${currentPage != 1}">
        <a class="btn btn-default" href="/MarkList.action?page=1">1</a>
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
        <a class="btn btn-default" href="/MarkList.action?page=<%=i+1%>"><%=i+1%></a>
    </c:if>
    <%} %>
</div>
</body>
</html>
<script>
    $(function () {


        $('#addnew').click(function(){

            window.location.href="gotoMarkaddjsp.action";
        });


    });

    function del()
    {
        alert("删除成功！");
    }
</script>