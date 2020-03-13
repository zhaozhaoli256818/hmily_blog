<%--
  Created by IntelliJ IDEA.
  User: zhaoli
  Date: 2020/3/4
  Time: 上午11:50
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html lang="zh-CN">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>登录页面</title>
    <link href="${pageContext.request.contextPath}/static/css/bootstrap.min.css" rel="stylesheet">
    <!-- jQuery (Bootstrap 的所有 JavaScript 插件都依赖 jQuery，所以必须放在前边) -->
    <script src="${pageContext.request.contextPath}/static/js/jquery-1.11.3.min.js"></script>
    <!-- 加载 Bootstrap 的所有 JavaScript 插件。你也可以根据需要只加载单个插件。 -->
    <script src="${pageContext.request.contextPath}/static/js/bootstrap.js"></script>
    <link href="${pageContext.request.contextPath}/static/css/login.css" rel="stylesheet">
</head>
<body>
<jsp:include page="../../header.jsp"></jsp:include>
<div class="main">
    ${reg_msg}
    <div class="title">
        <span>密码登录</span>
    </div>

    <div class="title-msg">
        <span>请输入登录账户和密码</span>
    </div>
    <%--提示错误信息--%>
    <c:if test="${not empty error}">
        <div class="alert alert-danger">${error}</div>
    </c:if>

    <form class="login-form" method="post" action="${pageContext.request.contextPath}/user/login" novalidate>
        <!--输入框-->
        <div class="input-content">
            <!--autoFocus-->
            <div>
                <input type="text" autocomplete="off"
                       placeholder="用户名" name="user_name" required/>
            </div>

            <div style="margin-top: 16px">
                <input type="password"
                       autocomplete="off" placeholder="登录密码" name="password" required maxlength="32"/>
            </div>
        </div>

        <!--登入按钮-->
        <div style="text-align: center">
            <button type="submit" class="enter-btn">登录</button>
        </div>

        <div class="foor">
            <div class="left"><span>忘记密码 ?</span></div>

            <div class="right"><a href="${pageContext.request.contextPath}/user/toRegist"><span>注册账户</span></a></div>
        </div>
    </form>

</div>
<div style="margin-top: 550px">
    <jsp:include page="../../footer.jsp"></jsp:include>
</div>
</body>
</html>
