<%@taglib prefix="s" uri="/struts-tags" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="zh">

<head>
    <title>所有学生信息</title>
    <meta charset="UTF-8">
    <link rel="stylesheet" type="text/css" href="<s:url value='static/css/bootstrap.min.css'/>">
    <style type="text/css">
        body {
            padding-top: 60px;
            padding-bottom: 40px;
            font-family: "微软雅黑","楷体";
        }

        #null{
            height: 200px;
            font-size: 20px;
            color: gray;
            text-align: center;
        }

    </style>
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
            <a class="brand" href="#"><font color="Orange">Baizhi 教学互动系统</font></a>

            <div class="nav-collapse collapse">


                <ul class="nav">
                    <li class="active"><a href="#">欢迎：<s:property value="#session.username"/> </a></li>
                    <li><a href="#about">关于</a></li>
                    <li><a href="#contact">联系我们</a></li>
                    <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown">功能菜单 <b class="caret"></b></a>
                        <ul class="dropdown-menu">
                            <li><a href="#">修改密码</a></li>
                            <li class="nav-header">其它功能</li>
                            <li><a href="#">离开</a></li>
                        </ul>

                    </li>
                </ul>
            </div><!--/.nav-collapse -->
        </div>
    </div>
</div>
<div class="container">
    <!-- 模糊查询开始 -->
    <div class="input-append" style="padding-left:40px">
        <form action="#" method="post" id="queryForm">
            <select name="queryCondition" class="span3" id="sele" style="width: 150px;margin-left: 10px; border-radius:4px;" >
                <option value="name" selected>学生名称</option>
                <option value="classname">班级名称</option>
            </select>

            <input class="span2" type="text" placeholder="请输入姓名" name="name" style="width: 250px; height: 30px;margin-left: 10px; border-radius:4px;">&nbsp;
            <button class="btn" type="submit" style="margin-left: 10px; border-radius:10px;" >搜索</button>
            <a href="<s:url value=''/> ">
                <button class="btn" type="submit" style="margin-left: 10px; border-radius:10px;" >添加</button>
            </a>
        </form>
    </div>
    <!-- 模糊查询结束 -->
    <table class="table table-hover" style="height: 250px;">
        <thead>

        <tr>
            <th style="text-align: center;"><a href="javascript:void(0)"   style="text-decoration: none; text-align: center">学号</a></th>
            <th style="text-align: center;"><a href="javascript:void(0)"  style="text-decoration: none;">学生名称</a></th>
            <th style="text-align: center;"><a href="javascript:void(0)"  style="text-decoration: none;">学生性别</a></th>
            <th style="text-align: center;"><a href="javascript:void(0)"  style="text-decoration: none;">联系电话</a></th>
            <th style="text-align: center;"><a href="javascript:void(0)"  style="text-decoration: none;">所属班级</a></th>
            <th style="text-align: center;"><a href="javascript:void(0)" style="text-decoration: none;" >操作</a></th>

        </tr>

        </thead>

        <!-- 展示数据 -->
        <tbody id="tbody">
        <tr style="display: none;"><th colspan="8">
            <div id="null">
                <div style="margin-top: 50px">
                    亲～没有找到符合条件的互动～
                </div>
                <div style="font-size: 15px; margin-top: 6px"><a href="#" style="text-decoration: none; margin-left: 100px;">那我创建一条</a></div>

            </div>
        </th>
        <tr height="10px;" ></tr>
        <s:iterator value="list">
            <tr>
                <th style="text-align: center;"><s:property value="id"/> </th>
                <th style="text-align: center;"><s:property value="name"/></th>
                <th style="text-align: center;"><s:property value="sex"/></th>
                <th style="text-align: center;"><s:property value="phone"/></th>
                <th style="text-align: center;"><s:property value="classname"/></th>
                <th  style="text-align: center; ">
                    <a href=" " style="text-decoration: none;" >删除信息</a>
                    &nbsp;&nbsp;&nbsp;
                    <a href="update.html" style="text-decoration: none;" >修改信息</a>
                </th>
            </tr>
        </s:iterator>

        </tbody>
    </table>

    <div class="row">
        <div class="pagination" style="text-align: center;">
            <ul>
                <li class="disabled"><a href="javascript:void(0)" >上一页</a></li>
                <li><a href="#">1</a><a href="#">2</a><a href="#">3</a><a href="#">4</a><a href="#">5</a></li>
                <li><a href="javascript:void(0)" >下一页</a></li>
            </ul>
        </div>
    </div>
    <hr>
    <footer>
        <p>&copy; Company 2014</p>
    </footer>

</div> <!-- /container -->
<script type="text/javascript" src="static/js/jquery-1.5.2.min.js"></script>
<script type="text/javascript" src="static/js/bootstrap.js"></script>
</body>
</html>
