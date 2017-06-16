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
<form action="/stuEdit.action" method="post" class="definewidth m20">
<table class="table table-bordered table-hover ">
    <tr>
        <td width="10%" class="tableleft">学号</td>
        <td>
            <input type="hidden" name="stu.sno" value="${stu.sno}"/>
            <input type="text" name="stuCustom.sno" value="${stu.sno}" readonly/>
        </td>
    </tr>
    <tr>
        <td class="tableleft">姓名</td>
        <td><input type="text" name="stuCustom.sname" value="${stu.sname}"/></td>
    </tr>
    <tr>
        <td class="tableleft">性别</td>
        <td>
            <input type="radio" name="stuCustom.ssex" value="男" checked/> 男
            <input type="radio" name="stuCustom.ssex" value="女"/> 女
            <input type="hidden" name="vs" value="${stu.ssex}"/>
        </td>
    </tr>
    <tr>
        <td class="tableleft">出生年月</td>
        <td>
            <input size="16" type="date" name="stuCustom.sbirth" value="<fmt:formatDate value="${stu.sbirth}" pattern="yyyy-MM-dd"/>">
        </td>
    </tr>
    <tr>
        <td class="tableleft">籍贯</td>
        <td><input type="text" name="stuCustom.address" value="${stu.address}"/></td>
    </tr>
    <tr>
        <td class="tableleft">班级</td>
        <td><input type="text" name="stuCustom.class1" value="${stu.class1}"/></td>
    </tr>
    <tr>
        <td class="tableleft">学院</td>
        <td><input type="text" name="stuCustom.college" value="${stu.college}"/></td>
    </tr>
    <tr>
        <td class="tableleft"></td>
        <td>
            <button type="submit"  class="btn btn-primary" type="button" id="sumitok" name="sumitok">保存</button> &nbsp;&nbsp;<button type="button" class="btn btn-success" name="backid" id="backid">返回列表</button>
        </td>
    </tr>
</table>
</form>
</body>
</html>
<script>
    $(function () {       
		$('#backid').click(function(){
				window.location.href="stuList.action";
		 });

    });
    $(function () {
        $('#sumitok').click(function(){
            alert("修改成功！");
            window.location.href="stuList.action"
        });
    });
</script>