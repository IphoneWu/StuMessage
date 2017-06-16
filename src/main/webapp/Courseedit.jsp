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
<form action="/UpdateCourse.action" method="post" class="definewidth m20" >
<table class="table table-bordered table-hover definewidth m10">
    <tr>
        <td width="10%" class="tableleft">课程号</td>
        <td>
            <input type="hidden" name="course.cno" value="${course.cno}">
            <input type="text" name="courseCustom.cno" value="${course.cno}"/>
        </td>
    </tr>
    <tr>
        <td width="10%" class="tableleft">课程名称</td>
        <td>
            <input type="hidden" name="course.cname" value="${course.cname}">
            <input type="text" name="courseCustom.cname" value="${course.cname}"/>
        </td>
    </tr>
    <tr>
        <td class="tableleft"></td>
        <td>
            <button type="submit" class="btn btn-primary" type="button" onclick="ok()">保存</button> &nbsp;&nbsp;<button type="button" class="btn btn-success" name="backid" id="backid">返回列表</button>
        </td>
    </tr>
</table>
</form>
</body>
</html>
<script>
    $(function () {
		$('#backid').click(function(){
				window.location.href="CourseList.action";
		 });

    });
    function ok()
    {
        alert("修改成功！")
    }
</script>