<%--
  Created by IntelliJ IDEA.
  User: zhaoli
  Date: 2020/3/9
  Time: 下午2:29
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>写博客</title>
    <!-- jQuery (Bootstrap 的所有 JavaScript 插件都依赖 jQuery，所以必须放在前边) -->
    <script src="${pageContext.request.contextPath}/static/js/jquery-1.11.3.min.js"></script>
    <!-- 加载 Bootstrap 的所有 JavaScript 插件。你也可以根据需要只加载单个插件。 -->
    <script src="${pageContext.request.contextPath}/static/js/bootstrap.js"></script>

    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/editormd/style.css"/>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/editormd/css/editormd.css"/>
    <link rel="shortcut icon" href="https://pandao.github.io/editor.md/favicon.ico" type="image/x-icon"/>
    <script src="${pageContext.request.contextPath}/static/editormd/lib/flowchart.min.js"></script>
    <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>

</head>
<body>
<jsp:include page="../../header.jsp"></jsp:include>

<div id="layout">
    <header>
        <div class="input-group input-group-lg">
            <div class="input-group-prepend">
                <span class="input-group-text" id="inputGroup-sizing-lg">文章标题</span>
            </div>
            <input type="text" id="articleTitle" class="form-control" aria-label="Sizing example input"
                   aria-describedby="inputGroup-sizing-lg">
            <span id="btnList">
				<button style="height: 45px" type="button" id="publishArticle" onclick="writeArticle.doSubmit();"
                        class="btn btn-info">发布文章</button>
			</span>
        </div>
        <div class="input-group input-group-lg mb-3" style="margin-top: 20px">
            <div class="input-group-prepend">
                <label class="input-group-text" for="articleCategory">文章标签</label>
            </div>
            <select class="custom-select" id="articleCategory">
            </select>
            <div class="input-group-prepend">
                <label class="input-group-text" for="type">文章类型</label>
            </div>
            <select class="custom-select" id="type">
            </select>
        </div>
    </header>

    <div id="my-editormd" >
        <textarea id="my-editormd-markdown-doc" name="my-editormd-markdown-doc" style="display:none;">[TOC]</textarea>
        <!-- 注意：name属性的值-->
        <textarea id="my-editormd-html-code" name="my-editormd-html-code" style="display:none;"></textarea>
    </div>
</div>


<jsp:include page="../../footer.jsp"></jsp:include>

<script>
    <%--$(function () {--%>
    <%--    $.ajax({--%>
    <%--        type: "GET",--%>
    <%--        url: '${pageContext.request.contextPath}/dict?type_code=001',--%>
    <%--        dataType: 'json',--%>
    <%--        contentType: "application/json",--%>
    <%--       // cache: false,--%>
    <%--        success: function (data) {--%>
    <%--            $.each(data,function (i,obj) {--%>
    <%--                //alert(obj['item_name'])--%>
    <%--                var $option = $("<option value='"+obj['item_name']+"'>"+obj['item_name']+"</option>");--%>
    <%--                //alert($option.val())--%>
    <%--                $("#articleCategory").append($option);--%>

    <%--            });--%>

    <%--        }--%>
    <%--    });--%>
    <%--});--%>
    $(function () {
        loadArticelType('001','articleCategory')
        loadArticelType('002','type')
    })

function loadArticelType(val,position) {
    $.ajax({
        type: "GET",
        url: '${pageContext.request.contextPath}/dict?type_code='+val,
        dataType: 'json',
        contentType: "application/json",
        // cache: false,
        success: function (data) {
            $.each(data,function (i,obj) {
                //alert(obj['item_name'])
                var $option = $("<option value='"+obj['item_name']+"'>"+obj['item_name']+"</option>");
                //alert($option.val())
                $("#"+position).append($option);

            });

        }
    });
}

    /* 发送文章*/
    var writeArticle = {
        doSubmit: function () {//提交
            if (writeArticle.doCheck()) {
                //debugger;
                var title = $("#articleTitle").val();
               // var content = $("#articleContent").val();


                // var content = $("#my-editormd-markdown-doc").val();
                var content = testEditor.getMarkdown();

                var attribute_label = $("#articleCategory").val();
                var type = $("#type").val();
                $.ajax({
                    type: "POST",
                    url: '${pageContext.request.contextPath}/saveArticle',
                    data: {'title': title, 'content': content, 'attribute_label': attribute_label,'type':type},
                    dataType: 'json',
                    //contentType:"application/json",
                    //cache: false,
                    success: function (data) {
                        //debugger;
                        if ("OK" == data) {
                            swal("Good job!", "文章保存成功", "success");
                            //alert("保存成功!马上跳转首页");
                            setTimeout(function () {
                                window.location.href = "${pageContext.request.contextPath}/index.jsp";
                            }, 2000);
                        }
                    },
                    error: function () {
                        swal("W job!", "文章保存失败", "success");
                    }
                });
            }
        },
        doCheck: function () {//校验
            //debugger;
            var title = $("#articleTitle").val();
            //var content = $("#articleContent").val();
           // var content = $("#my-editormd-markdown-doc").val();
            var content = testEditor.getMarkdown();;
            var attribute_label = $("#articleCategory").val();
            if (typeof (title) == undefined || title == null || title == "") {
                alert("请填写文章标题!");
                return false;
            }

            if (typeof (content) == undefined || content == null || content == "") {
                alert("请填写文章内容!");
                return false;
            }

            if (typeof (attribute_label) == undefined || attribute_label == null || attribute_label == "") {
                alert("请填写文章标签!");
                return false;
            }
            if (typeof (type) == undefined || type == null || type == "") {
                alert("请填写文章类型!");
                return false;
            }

            return true;
        }
    }

</script>


<script src="${pageContext.request.contextPath}/static/editormd/editormd.min.js"></script>
    <script type="text/javascript">
        var testEditor;
        $(function () {
            testEditor = editormd("my-editormd", {
                placeholder:'本编辑器支持Markdown编辑，左边编写，右边预览',  //默认显示的文字，这里就不解释了
                width: "90%",
                height: 640,
                syncScrolling: "single",
                path: "${pageContext.request.contextPath}/static/editormd/lib/",   //你的path路径（原资源文件中lib包在我们项目中所放的位置）
                theme: "dark",//工具栏主题
                previewTheme: "dark",//预览主题
                editorTheme: "pastel-on-dark",//编辑主题
                saveHTMLToTextarea: true,
                emoji: true,
                taskList: true,
                tocm: true,         // Using [TOCM]
                tex: true,                   // 开启科学公式TeX语言支持，默认关闭
                flowChart : true,             // 开启流程图支持，默认关闭
                sequenceDiagram: true,       // 开启时序/序列图支持，默认关闭,
                toolbarIcons : function() {  //自定义工具栏，后面有详细介绍
                    return editormd.toolbarModes['full']; // full, simple, mini
                },

                imageUpload : true,
                imageFormats : ["jpg", "jpeg", "gif", "png", "bmp", "webp"],
                imageUploadURL : "${pageContext.request.contextPath}/editormdPic",

            });

            testEditor.config("tocDropdown", fasle);//TOC默认

        })

    </script>


</body>
</html>


