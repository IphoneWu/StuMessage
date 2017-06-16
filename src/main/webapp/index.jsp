<%--
  Created by IntelliJ IDEA.
  User: win8
  Date: 2016/12/8
  Time: 11:08
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>另类首页</title>
    <!-- 新 Bootstrap 核心 CSS 文件 -->
    <link href="bootstrap/dist/css/bootstrap.min.css" rel="stylesheet">

    <%--<!-- 可选的Bootstrap主题文件（一般不使用） -->--%>
    <script src="bootstrap/dist/css/bootstrap-theme.min.css"></script>

    <!-- jQuery文件。务必在bootstrap.min.js 之前引入 -->
    <script src="bootstrap/dist/js/jquery-2.1.4.min.js"></script>

    <!-- 最新的 Bootstrap 核心 JavaScript 文件 -->
    <script src="bootstrap/dist/js/bootstrap.min.js"></script>


    <style>
        .top {
            background-color: #404A54;
            height: 60px;
        }
        .top * {
            color: #FFF;
        }

        .top li {
            font-size: 18px;
            margin-top: 7px;
            margin-left: 10px;
        }

        .navbar-brand {
            font-size: 22px;
            margin-top: 7px;
        }

        .footer {

            border-top-width:1px;
            border-top-style: solid;
            border-top-color: #0f0f0f;
            margin: 250px auto;
        }
        .jumbotron {
            padding: 10px 30px 10px 30px;
        }

        .jumbotron p {
            font-size: 14px;
            line-height: 2.0;
        }

        .jumbotron h4 {
            font-size: 16px;
            font-family: "Helvetica Neue", Helvetica, Arial, sans-serif;
            line-height: 1.8;
        }

        .beleft {
            float: left;
            margin-left: 100px;
        }

        .carousel {
            height: 500px;
            margin-bottom: 30px;
        }

        .carousel .item {
            height: 500px;
        }

        .carousel img {
            min-height: 500px;
            width: 100%;
        }
        #login{
            position: absolute;
            top: 25px;
            right: 60px;
        }

        h3{
            width:100%;padding-bottom:10px;
        }
        #close{
            position:absolute;top:2px;right:2px;
        }
        #close span{
            padding:3px 10px;background-color: #999;font-size:20px;color:white;cursor:pointer;
        }
        /*#log{*/
            /*display: none; width: 400px;*/
            /*height: 400px; padding: 30px 40px;*/
            /*background-color: #F3F5F6;*/
            /*position: fixed; top: 70px;; right: 30px;*/
            /*filter:*/
        /*}*/
        .error{
            float:right;color:red;font-size:1.2em;margin-right:10px
        }
    </style>
</head>
<body>
<%--登录验证--%>
<script>

    var checkName=function() {
        document.getElementById("user").innerHTML ="";
        var name = eval(document.getElementById('username')).value;
        if (name.length > 20 || name.length < 1)
            document.getElementById("user").innerHTML = "用户名长度在1-20之间！" ;
    }
    var checkPassword = function(){
        document.getElementById("psword").innerHTML ="";
        var name = eval(document.getElementById('password')).value;
        if (name.length > 12 || name.length < 6)
            document.getElementById("psword").innerHTML="密码长度在6-12之间！" ;
    }
    $(document).ready(function(){
        $(document).on('show.bs.modal','modal',function(event){
            var  zIndex = 1040+(10*$('.modal:visible').length);
            $(this).css('z-index',zIndex);
        });
    });
</script>
<%--导航--%>
<div class="navbar-fixed-top top" role="navigation" id="menu-nav">
    <div class="container">
        <div class="navbar-header">
            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                <span class="sr-only"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="#"><b>韩山师范学院</b></a>
        </div>

        <div class="navbar-collapse collapse">
            <ul class="nav navbar-nav">
                <li><a href="#">首页</a></li>
                <li><a href="#">课程</a></li>
                <li><a href="#">资源</a></li>
                <li><a href="#">问答</a></li>
            </ul>
            <div id="login">
                <div class="user" id="logControll" ng-controller="navUserController">
                    <span class="glyphicon glyphicon-user"></span>
                    <span class="user-name" data-toggle="modal" data-target="#mymodal" style="cursor:pointer"
                          onclick="document.getElementById('mymodal').style.display='block'">登录</span>
                </div>
            </div>
        </div>
    </div>
</div>
<%--轮播--%>
<div id="ad-carousel" class="carousel slide" data-ride="carousel">
    <ol class="carousel-indicators">
        <li data-target="#ad-carousel" data-slide-to="0" class="active"></li>
        <li data-target="#ad-carouse1" data-slide-to="1"></li>
    </ol>
    <div class="carousel-inner">
        <div class="item active">
            <img src="images/黄昏湘子桥.jpg" alt="0 slide">
            <div class="container">
                <div class="carousel-caption" style="position: absolute; top: 250px;width:250px;margin-left:auto;margin-right:auto;">
                    <h1>学生信息系统</h1>
                    <p>Beta1.0</p>
                    <p>
                        <button class="btn btn-lg btn-success"data-toggle="modal" data-target="#regist"
                                onclick="document.getElementById('regist').style.display='block'">注册</button>
                    </p>
                </div>
            </div>
        </div>

        <div class="item">
            <img src="images/hanshimenk.jpg" alt="1 slide">
            <div class="container">
                <div class="carousel-caption" style="position: absolute; top: 250px;width:250px;margin-left:auto;margin-right:auto;">
                    <h1>学生信息系统</h1>
                    <p>Beta1.0</p>
                    <p>
                        <button class="btn btn-lg btn-success"data-toggle="modal" data-target="#regist"
                                onclick="document.getElementById('regist').style.display='block'">注册</button>
                    </p>
                </div>
            </div>
        </div>
    </div>
    <a class="left carousel-control" href="#ad-carousel" data-slide="prev">
        <span class="glyphicon glyphicon-chevron-left"></span></a>
    <a class="right carousel-control" href="#ad-carousel" data-slide="next">
        <span class="glyphicon glyphicon-chevron-right"></span>
    </a>
    <div style="position: absolute; left: 100px; top: 100px;"></div>
</div>

<!-- 模态框（Modal） -->
<div class="modal fade" id="mymodal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">
                    &times;
                </button>
                <h3 >请登录</h3>
            </div>
            <div class="modal-body">

                <form  action="login.action" method="post">
                    <div class="form-group" style="width: 400px;height: auto;margin: 5px auto">
                        <%--<span class="error">${str}</span>--%>
                            <label for="username">用户名：</label>
                            <span id="user"  class="error"> </span>
                            <input type="text" class="form-control"  name="username"
                                   id="username" placeholder="用户名" onblur='checkName()' required/>
                    </div>
                    <div class="form-group"style="width: 400px;height: auto;margin: 5px auto">
                        <label for="password">密码：</label>
                        <span id="psword" class="error"> </span>

                        <input  type="password" class="form-control"
                               name="password"
                               id="password" placeholder="密码" onblur='checkPassword()' required />

                    </div>
                    <div class="checkbox" style="width: 400px;margin: 5px auto">
                        <label>
                            <span><input type="checkbox" value='true' style="width:15px;height:15px;" > 记住我</span>
                        </label>
                    </div>
                    <%--<input type="submit" class="btn btn-primary login-button" value="登录" style="width:70px;height:40px;" />--%>
                    <%--<p class="text-success"  ><a href="register.html">>>还没账号？去注册</a></p>--%>
                    <div class="modal-footer">
                        <input type="submit" class="btn btn-primary login-button" value="登录" style="width:70px;height:40px;" />
                    </div>
                </form>
            </div>
        </div><!-- /.modal-content -->
    </div><!-- /.modal -->
</div>

<%--注册模态框--%>
<div class="modal fade" id="regist" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">
                    &times;
                </button>
                <h3 >请注册</h3>
            </div>
            <div class="modal-body">

                <form  action="regist.action" method="post">
                    <div class="form-group" style="width: 400px;height: auto;margin: 5px auto">
                        <label for="idcard">用户名：</label>
                        <input type="text" class="form-control"  name="idcard"
                               id="idcard" placeholder="用户名" required/>
                    </div>
                    <div class="form-group"style="width: 400px;height: auto;margin: 5px auto">
                        <label for="passowrd">密码：</label>
                        <input  type="password" class="form-control"
                                name="passowrd"
                                id="passowrd" placeholder="密码"  required />

                    </div>

                    <div class="modal-footer">
                        <input type="submit" class="btn btn-primary login-button" value="提交" style="width:70px;height:40px;" />
                        <%--</div>--%>
                    </div>
                </form>
            </div>
        </div><!-- /.modal-content -->
    </div><!-- /.modal -->
</div>

</body>
</html>
