<%--
  Created by IntelliJ IDEA.
  User: zhaoli
  Date: 2020/3/4
  Time: 上午11:51
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html lang="zh-CN">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>页面头部</title>

    <link href="${pageContext.request.contextPath}/static/css/bootstrap.min.css" rel="stylesheet">
    <!-- jQuery (Bootstrap 的所有 JavaScript 插件都依赖 jQuery，所以必须放在前边) -->
    <script src="${pageContext.request.contextPath}/static/js/jquery-1.11.3.min.js"></script>
    <!-- 加载 Bootstrap 的所有 JavaScript 插件。你也可以根据需要只加载单个插件。 -->
    <script src="${pageContext.request.contextPath}/static/js/bootstrap.js"></script>
    <!-- 标题栏浮动隐藏JS -->
    <script src="https://npmcdn.com/headroom.js@0.9.3/dist/headroom.min.js" type="text/javascript"></script>

    <style>
        .circleImg {
            border-radius: 30px;
            width: 50px;
            height: 50px;
        }
    </style>
</head>
<body>
<%--导航栏--%>
<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
    <img src="${pageContext.request.contextPath}/static/images/tx.jpeg" class="circleImg" id="circleImg" style="width: 50px;height: 50px"/>
    &nbsp;&nbsp;
    <a class="navbar-brand" href="${pageContext.request.contextPath}/index.jsp"><h3 style="font-family: 'Adobe 楷体 Std R';">hmily_blog</h3></a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent"
            aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
    </button>

    <div class="collapse navbar-collapse" id="navbarSupportedContent">
        <ul class="navbar-nav mr-auto">

            <li class="nav-item active">
                <a class="nav-link" href="${pageContext.request.contextPath}/index.jsp">首页 <span class="sr-only">(current)</span></a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="${pageContext.request.contextPath}/archive">归档</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="#">更新</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="#">音乐馆</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="${pageContext.request.contextPath}/edit">写博客</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="#">留言板</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="#">友情链接</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="#">关于我</a>
            </li>
        </ul>



        &nbsp;&nbsp;&nbsp;
        <c:if test="${not empty loginUser}">
            <div class="btn-group" style="margin-right: 50px">
                <button type="button" class="btn btn-dark dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                        ${loginUser.name} <span class="caret"></span>
                </button>
                <ul class="dropdown-menu">
                    <a class="dropdown-item" href="${pageContext.request.contextPath}/user/toLogin">个人中心</a>
                    <a class="dropdown-item" href="#">反馈</a>
                    <div class="dropdown-divider"></div>
                    <a class="dropdown-item" href="${pageContext.request.contextPath}/user/logOut">退出登录</a>
                </ul>
            </div>
        </c:if>
        <c:if test="${empty loginUser}">

            <div class="btn-group" style="margin-right: 50px">
                <button type="button" class="btn btn-dark dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                    未登录 <span class="caret"></span>
                </button>
                <ul class="dropdown-menu">
                    <a class="dropdown-item" href="${pageContext.request.contextPath}/user/toLogin">登录</a>
                    <a class="dropdown-item" href="${pageContext.request.contextPath}/user/toRegist">注册</a>
                    <a class="dropdown-item" href="#">反馈</a>
                </ul>
            </div>
        </c:if>
        <form class="form-inline my-2 my-lg-0">
            <input class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search">
            <button class="btn btn-outline-success my-2 my-sm-0" type="submit">搜索</button>
        </form>
    </div>
</nav>


</body>
</html>
