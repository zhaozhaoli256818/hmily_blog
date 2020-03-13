<%--
  Created by IntelliJ IDEA.
  User: zhaoli
  Date: 2020/3/8
  Time: 下午1:51
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>文章详情页面</title>
    <link href="https://cdn.bootcss.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/static/css/myicon.css" rel="stylesheet">


</head>
<body>
<body>
<jsp:include page="../../header.jsp"></jsp:include>

<%--卡片--%>
<div class="container" style="margin-left: 200px">
    <div class="row">
        <div class="col-2" style="margin-left: -120px">
            <div class="card shadow text-white bg-info mb-3" style="width: 20rem;height:14rem;margin-top: 20px;">
                <div class="card-body">
                    <i class="fa fa-quote-left" style="float: left;"></i>
                    <p class="card-text" align="center" style="margin-top: 30px">你一直说自己没努力<br><br>

                        那你努力100%试一下啊<br><br>

                        你的天空你不想飞一下吗？</p>
                    <i class="fa fa-quote-right" style="margin-left: 270px"></i>

                </div>
            </div>


            <div class="card shadow text-white bg-success" style="width: 20rem;height:25rem;margin-top: 20px;">
                <div class="card-body">
                    <div class="main-left  am-show-lg-only">
                        <i class="fa fa-quote-left" style="float: left"></i><br>
                        <div style="margin-left: 50px">
                            <p>你应该要学着做你自己</p>
                            <p>面对真实的自我</p>
                            <p>只要做到这一点</p>
                            <p>你就什么都不用惧怕</p>
                            <p style="margin-left: 80px">--- 《猫的报恩》</p>
                        </div>
                        <i class="fa fa-quote-right" style="float: right;"></i>
                        <div style="margin-left: 70px;margin-top: 100px;letter-spacing: 1px; font-size: 19px;">
                            <div style="margin-left: -60px">无论夜晚多么黑暗，</div>
                            <div style="margin-left: 20px">黎明总会如约而至。</div>
                        </div>
                    </div>

                </div>
            </div>

            <div class="card  bg-light" style="width: 20rem; margin-top: 20px">
                <div class="card-body">
                    <div class="card-content">
                        <h3 class="menu-label">
                            标签云
                        </h3>
                        <a href="#" style="font-size:7px">框架</a>
                        <a href="#" style="font-size:11px">八皇后问题</a>
                        <a href="#" style="font-size:11px">表达式求值</a>
                        <a href="#" style="font-size:7px">并查集</a>
                        <a href="#" style="font-size: 11px">union-find</a>
                        <a href="#" style="font-size:11px">最小生成树</a>
                        <a href="#" style="font-size: 9px">Dijkstra</a>
                        <a href="#" style="font-size:9px">哈夫曼树</a>
                        <a href="#" style="font-size:11px">二叉排序树</a>
                        <a href="#“ style=" font-size:2px">树</a>
                        <a href="#” style=" font-size:10px">Floyd</a>
                        <a href="#" style="font-size:5px">玩耍</a>
                        <a href="#" style="font-size:11px">音乐播放器</a>
                        <a href="#" style="font-size:7px">看板娘</a>
                        <a href="#" style="font-size:10px">博客美化</a>
                        <a href="#" style="font-size:15px">ASP.NET</a>
                        <a href="#" style="font-size:5px">跨域</a>
                        <a href="#" style="font-size:9px">Vue</a>
                        <a href="#" style="font-size: 10px">LeetCode</a>
                        <a href="#" style="font-size:9px">个人总结</a>
                        <a href="#" style="font-size:7px">红黑树</a>
                        <a href="#" style="font-size:11px">Linux</a>
                        <a href="#" style="font-size:9px">学习总结</a>
                        <a href="#" style="font-size:7px">线性表</a>
                        <a href="#" style="font-size:10px">二叉树</a>
                        <a href="#" style="font-size:20px">Java</a>
                        <a href="#" style="font-size:5px">链表</a>
                        <a href="#" style="font-size:9px">图</a>
                        <a href="#" style="font-size:4px">栈</a>
                        <a href="#" style="font-size:6px">回溯</a>
                        <a href="#" style="font-size:6px">递归</a>
                        <a href="#" style="font-size:24px">数据结构</a>
                        <a href="#" style="font-size:13px">算法</a>
                        <a href="#" style="font-size: 13px">SpringBoot</a>
                        <a href="#" style="font-size:5px">OJ</a>
                        <a href="#" style="font-size:9px">C++</a>
                    </div>
                </div>
            </div>

        </div>
        <div class="col-8" style="margin-left: 55px;width: 800px">
            <div style="margin-left: 100px;margin-top: 20px">

                <div class="card shadow">
                    <a href="#"><h5 class="card-header" align="center"><span id="id0">${article.title}</span></h5>
                    </a>
                    <div class="card-body">
                        <input id="article_id0" type="hidden">
                        <span class="badge badge-pill badge-danger" style="margin-left: 20px"
                              id="classify0">${article.classify}</span>
                        <span style="margin-left: 20px" id="time0">${update_time}</span>
                        <span style="margin-left: 50px" id="type0">${article.type}</span>
                        <span style="margin-left: 50px" id="attribute_label0">${article.attribute_label}</span>
                        <span style="margin-left: 50px">阅读数 58</span>
                        <div id="test-editormd-view2" style="width: 600px">
                            <textarea id="append-test" style="display:none;">${article.content}</textarea>
                        </div>

                        <div style="float: left">
                            <c:if test="${not empty lastArticle}">
                                <a href="${pageContext.request.contextPath}/article?article_id=${lastArticle.article_id}"><<
                                    上一篇 ${lastArticle.title}</a>
                            </c:if>
                            <c:if test="${empty lastArticle}">
                                <a href="javascript:void(0)">亲~~,前面没有了</a>
                            </c:if>
                        </div>
                        <div style="float: right">
                            <c:if test="${not empty nextArticle}">
                                <a href="${pageContext.request.contextPath}/article?article_id=${nextArticle.article_id}">下一篇 ${nextArticle.title}>></a>
                            </c:if>
                            <c:if test="${empty nextArticle}">
                                <a href="javascript:void(0)">亲~~,后面没有了</a>
                            </c:if>
                        </div>
                    </div>
                </div>


            </div>
        </div>

        <div class="col-2" id="main-right-div">
            <div class="card text-white bg-dark"
                 style="width: 20rem;height:22rem;margin-top: 20px;position: fixed;top: 68px">
                <img src="${pageContext.request.contextPath}/static/images/tx.jpeg"
                     style="border-radius: 60px;  width: 100px;height: 100px;margin-left: 100px;margin-top: 10px"
                     class="card-img-top" alt="...">
                <div class="card-body">
                    <h5 align="center" class="card-title" style="font-family: 'Adobe 楷体 Std R'">HMILY_BLOG</h5>
                    <p class="card-text" align="center">负重前行</p>
                </div>
                <div class="container" style="position: absolute;left: 15px;top: 210px">
                    <div class="row">
                        <div class="col-4">文章</div>
                        <div class="col-4">分类</div>
                        <div class="col-4">标签</div>
                    </div>
                </div>
                <div class="container" style="position: absolute;left: 22px;top: 235px">
                    <div class="row">
                        <div class="col-4">15</div>
                        <div class="col-4">12</div>
                        <div class="col-4">10</div>
                    </div>
                </div>
                <div id="icons">

                    <a class="card-icons" href="https://github.com/zhaozhaoli256818" target="_blank"><i
                            class="fa fa-github" title="活跃不起来滴小github~"></i></a>
                    <a class="card-icons" href="#" target="_blank"><i class="fa fa-gg"
                                                                      title="码码码码码云~"></i></a>

                    <a class="card-icons"
                       href="http://wpa.qq.com/msgrd?v=3&amp;uin=1191599851&amp;site=qq&amp;menu=yes"
                       target="_blank"><i class="fa fa-qq" title="点击QQ联系俺~"></i></a>
                    <a class="card-icons" href="javascript:void(0);" data-toggle="popover"><i class="fa fa-weixin"></i></a>


                    <a class="card-icons" href="https://weibo.com/6578163867/profile?topnav=1&wvr=6&is_all=1"
                       target="_blank"><i
                            class="fa fa-weibo" title="基本不碰的小微博~"></i></a>
                </div>
                <div style="height: 31px"></div>
            </div>


        </div>
    </div>
</div>


<jsp:include page="../../footer.jsp"></jsp:include>






<link rel="stylesheet" href="${pageContext.request.contextPath}/static/editormd/css/editormd.css"/>
<link rel="shortcut icon" href="https://pandao.github.io/editor.md/favicon.ico" type="image/x-icon"/>
<script src="${pageContext.request.contextPath}/static/js/jquery-1.11.3.min.js"></script>
<script src="${pageContext.request.contextPath}/static/editormd/lib/marked.min.js"></script>
<script src="${pageContext.request.contextPath}/static/editormd/lib/prettify.min.js"></script>

<script src="${pageContext.request.contextPath}/static/editormd/lib/raphael.min.js"></script>
<script src="${pageContext.request.contextPath}/static/editormd/lib/underscore.min.js"></script>
<script src="${pageContext.request.contextPath}/static/editormd/lib/sequence-diagram.min.js"></script>
<script src="${pageContext.request.contextPath}/static/editormd/lib/flowchart.min.js"></script>
<script src="${pageContext.request.contextPath}/static/editormd/lib/jquery.flowchart.min.js"></script>

<script src="${pageContext.request.contextPath}/static/editormd/editormd.min.js"></script>
<script type="text/javascript">
    var testEditormdView2;
    testEditormdView2 = editormd.markdownToHTML("test-editormd-view2", {
        htmlDecode      : "style,script,iframe",  // you can filter tags decode
        emoji           : true,
        taskList        : true,
        tex             : true,  // 默认不解析
        flowChart       : true,  // 默认不解析
        sequenceDiagram : true,  // 默认不解析
    });

</script>


</body>
</html>


