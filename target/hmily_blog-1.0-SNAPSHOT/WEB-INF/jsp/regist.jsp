<%--
  Created by IntelliJ IDEA.
  User: zhaoli
  Date: 2020/3/5
  Time: 下午1:37
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>注册页面</title>
    <link href="${pageContext.request.contextPath}/static/css/bootstrap.min.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/static/css/login.css" rel="stylesheet">
    <!-- jQuery (Bootstrap 的所有 JavaScript 插件都依赖 jQuery，所以必须放在前边) -->
    <script src="${pageContext.request.contextPath}/static/js/jquery-1.11.3.min.js"></script>
    <!-- 加载 Bootstrap 的所有 JavaScript 插件。你也可以根据需要只加载单个插件。 -->
    <script src="${pageContext.request.contextPath}/static/js/bootstrap.js"></script>




</head>
<body>
<jsp:include page="../../header.jsp"></jsp:include>
<form id="registForm" style="width: 450px;height: 300px;position: absolute;left: 550px;top: 100px" action="${pageContext.request.contextPath}/user/regist"
      method="post">
    <div class="form-group row">
        <label for="username" class="col-sm-2 col-form-label">用户名</label>
        <div class="col-sm-10">
            <input type="text" class="form-control" id="username" name="user_name">
        </div>
    </div>
    <div class="form-group row">
        <label for="Upassword" class="col-sm-2 col-form-label">密码</label>
        <div class="col-sm-10">
            <input type="password" class="form-control" id="Upassword" name="password">
        </div>
    </div>
    <div class="form-group row">
        <label for="urepeatpwd" class="col-sm-2 col-form-label">确认密码</label>
        <div class="col-sm-10" style="float: left">
            <input type="password" class="form-control" id="urepeatpwd" name="repeatpwd">
        </div>
    </div>
    <div class="form-group row">
        <label for="uphone" class="col-sm-2 col-form-label">手机号</label>
        <div class="col-sm-10">
            <input type="text" class="form-control" id="uphone" name="phone">
            <p></p>
        </div>
    </div>
    <div class="form-group row">
        <label for="name" class="col-sm-2 col-form-label">昵称</label>
        <div class="col-sm-10">
            <input type="text" class="form-control" id="name" name="name">
        </div>
    </div>
    <div style="margin-left: 100px">
        <div class="custom-control custom-radio custom-control-inline">
            <input type="radio" id="customRadioInline1" name="gender" value="0" checked="true" class="custom-control-input">
            <label class="custom-control-label" for="customRadioInline1">女</label>
        </div>
        <div class="custom-control custom-radio custom-control-inline">
            <input type="radio" id="customRadioInline2" name="gender" value="1" class="custom-control-input">
            <label class="custom-control-label" for="customRadioInline2">男</label>
        </div>
    </div>
    <div class="form-group row" style="margin-left: 300px">
        <div class="col-sm-10">
            <button type="submit"  class="btn btn-primary">注册</button>
        </div>
    </div>
</form>
<div style="margin-top: 500px">
    <jsp:include page="../../footer.jsp"></jsp:include>
</div>

<script src="${pageContext.request.contextPath}/static/js/jquery.validate.min.js"></script>
<script src="${pageContext.request.contextPath}/static/js/messages_zh.min.js"></script>
<script type="text/javascript">

    //自定义校验规则
    $.validator.addMethod(
        //规则
        "checkUsername",
        function(value,element,params){
            var isExist = false;
            //alert(value)
            $.ajax({
                "async":false,//如果此处为true则为ajax的异步加载，但是在success方法中isExist赋值过程中会出现异步问题，所以要改成同步
                "url":"${pageContext.request.contextPath}/user/checkUsername",
                "data":{"user_name":value},
                "type":"POST",
                "dataType":"json",
                "success":function(data){
                    isExist = data;
                }
            });
            return !isExist;
        }
    );

    $(function () {
        $("#registForm").validate({
            rules: {
                user_name: {
                    "required": true,
                    "checkUsername":true
                },
                password: {
                    "required": true,
                    "rangelength": [6, 12]
                },
                repeatpwd: {
                    "required": true,
                    "rangelength": [6, 12],
                    "equalTo": "#Upassword"
                },
                phone: {
                    "required": true
                }
            },
            messages: {
                user_name: {
                    "required": "用户名不能为空",
                    "checkUsername":"用户名已存在"//自定义校验规则
                },
                password: {
                    "required": "密码不能为空",
                    "rangelength": "密码长度6-12位"
                },
                repeatpwd: {
                    "required": "确认密码不能为空",
                    "rangelength": "密码长度6-12位",
                    "equalTo": "两次密码不一致"
                },
                phone: {
                    "required": "电话号码不能为空"
                }
            }

        });
    });
</script>


</body>
</html>
