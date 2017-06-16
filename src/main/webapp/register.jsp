<%--
  Created by IntelliJ IDEA.
  User: win8
  Date: 2016/11/10
  Time: 12:16
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>注册</title>
    <!-- 新 Bootstrap 核心 CSS 文件 -->
    <!-- 新 Bootstrap 核心 CSS 文件 -->
    <link href="${ pageContext.request.contextPath}/bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <!-- 可选的Bootstrap主题文件（一般不使用） -->
    <script src="${ pageContext.request.contextPath}/bootstrap/css/bootstrap-theme.min.css"></script>

    <!-- jQuery文件。务必在bootstrap.min.js 之前引入 -->
    <script src="${ pageContext.request.contextPath}/js/jquery-2.1.4.min.js"></script>

    <!-- 最新的 Bootstrap 核心 JavaScript 文件 -->
    <script src="${ pageContext.request.contextPath}/bootstrap/js/bootstrap.min.js"></script>
    <%--适应设备屏幕--%>
    <meta name="viewport" content="width=device-width,inital-scale=1.0">
    <style type="text/css">
        #body{
            height: auto;
            width: 960px;
            margin: 0 auto;
        }
        #body #re{
            width: 960px;
            height: 60px;
            border-bottom-style: solid;
            border-bottom-width: thin;
            border-bottom-color: silver;
        }
        #body #re #left{
            margin: 0 0 5px 0;
            display: inline-block;
            vertical-align: top;
        }
        #body #re #left h3{
            font-weight: bold;
        }
        #body #re #right{
            margin: 25px 0 10px 0;
            text-align:right;
            display: inline-block;
            vertical-align: top;
        }
        #body #te{
            width: 940px;
            height: auto;
            margin: 50px auto;
        }


    </style>
</head>
<body>
        <div id="body">
            <div id="re">
                <div id="left" class="col-md-4">
                    <h3>
                        立即注册
                    </h3>
                </div>
                <div id="right" class="col-md-8">
                    <a href="login.jsp"> <h6>已有账号？立即登录></h6></a>
                </div>
            </div>
            <div id="te">
                <table>
                    <tbody><tr>
                        <th><span class="rq">*</span><label for="ezuser">用户名:</label></th>
                        <td><input id="ezuser" name="ezuser" class="px er" tabindex="1" autocomplete="off" size="25" maxlength="15" required="" type="text"></td>
                        <td class="tipcol"><i id="tip_ezuser" class="p_tip" style="display: none;">用户名由 3 到 15 个字符组成</i><kbd id="chk_ezuser" class="p_chk">用户名不得小于 3 个字符</kbd></td>
                    </tr>
                    </tbody></table>
            </div>

            <div class="rfm">
                <table>
                    <tbody><tr>
                        <th><span class="rq">*</span><label for="ezword">密码:</label></th>
                        <td><input id="ezword" name="ezword" size="25" tabindex="1" class="px" required="" type="password"></td>
                        <td class="tipcol"><i id="tip_ezword" class="p_tip" style="display: none;">请填写密码, 最小长度为 6 个字符</i><kbd id="chk_ezword" class="p_chk"></kbd></td>
                    </tr>
                    </tbody></table>
            </div>

            <div class="rfm">
                <table>
                    <tbody><tr>
                        <th><span class="rq">*</span><label for="ezword2">确认密码:</label></th>
                        <td><input id="ezword2" name="ezword2" size="25" tabindex="1" value="" class="px" required="" type="password"></td>
                        <td class="tipcol"><i id="tip_ezword2" class="p_tip" style="display: none;">请再次输入密码</i><kbd id="chk_ezword2" class="p_chk"></kbd></td>
                    </tr>
                    </tbody></table>
            </div>

            <div class="rfm">
                <table>
                    <tbody><tr>
                        <th><span class="rq">*</span><label for="enjoyzmail">Email:</label></th>
                        <td><input id="enjoyzmail" name="enjoyzmail" autocomplete="off" size="25" tabindex="1" class="px" required="" type="text"><br><em id="emailmore">&nbsp;</em></td>
                        <td class="tipcol"><i id="tip_enjoyzmail" class="p_tip" style="display: none;">请输入正确的邮箱地址，<i style="color:#f00;font-weight:bold;">非常重要，是找回密码的唯一途径，请填写有效的EMAIL地址</i></i><kbd id="chk_enjoyzmail" class="p_chk"></kbd></td>
                    </tr>
                    </tbody></table>
            </div>
            <div class="rfm">
                <table>
            </div>
        </div>

</body>
</html>
