<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<html lang="zh">
<head>
    <title>用户注册</title>
    <meta charset="UTF-8"/>
    <link rel="stylesheet" type="text/css" href="<s:url value='static/css/bootstrap.min.css'/>">

    <style type="text/css">
        body {
            padding-top: 60px;
            padding-bottom: 40px;
            font-family: "微软雅黑","楷体";
        }
        input {
            width:70%;
        }
    </style>
    <script type="text/javascript" src="<s:url value='static/js/jquery-1.5.2.min.js'/>"></script>
    <script type="text/javascript" src="<s:url value='static/js/bootstrap.js'/>"></script>



    <link rel="stylesheet" type="text/css" href="<s:url value='static/css/bootstrap-responsive.min.css'/>">
    <link rel="shortcut icon" href="favicon.ico">

</head>

<body>

<hr/>
<div class="navbar navbar-inverse navbar-fixed-top">
    <div class="navbar-inner">
        <div class="container">
            <button type="button" class="btn btn-navbar" data-toggle="collapse" data-target=".nav-collapse">
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="brand" href="#"><font color="Orange">zpark 学生信息系统</font></a>
            <div class="nav-collapse collapse">
                <ul class="nav">
                    <li><a href="#" style="color: white;">welcome</a></li>
                    <li><a href="#about">关于</a></li>
                    <li><a href="#contact">联系我们</a></li>
                    <li class="dropdown active">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown">功能菜单 <b class="caret"></b></a>
                        <ul class="dropdown-menu">
                            <li><a href="#">返回登录页面</a></li>
                            <li class="nav-header">其它功能</li>
                        </ul>
                    </li>
                </ul>
            </div><!--/.nav-collapse -->
        </div>
    </div>
</div>

<div class="container" style="width: 500px;">
    <h3>注册</h3>
    <form class="form-horizontal form-actions" action="<s:url action='register'/> " method="post" id="for">
        <div style="font-size: 18px;font-family:黑体;">用户名：</div>
        <div class="control-group">
            <input type="text" name="teacher.name" />
        </div>
        <!-- -->
        <div style="font-size: 18px;font-family:黑体;">密码：</div>
        <div class="control-group">
            <input type="password" name="teacher.password" />
        </div>
        <input type="submit" class="btn" value="提交" style="margin-left:35%; width:12%; margin-right: 5% "/>
        <input type="reset" class="btn" value="重置" style="width:12%"/>
    </form>

    <div class="alert alert-error"  id="error">
        <button type="button" class="close" data-dismiss="alert">&times;</button>
        <strong>错误! </strong><span id="erroSpan"> 错误信息提示</span>
    </div>

    <div class="alert alert-success" id="success">
        <button type="button" class="close" data-dismiss="alert">&times;</button>
        <strong>消息! </strong> 保存成功
    </div>
    <hr>
    <footer>
        <p>&copy; Company 2014</p>
    </footer>

</div> <!-- /container -->

</body>
</html>
