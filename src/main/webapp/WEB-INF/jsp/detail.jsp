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
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/editormd/css/editormd.css"/>
    <link rel="shortcut icon" href="https://pandao.github.io/editor.md/favicon.ico" type="image/x-icon"/>
    <style>

        a:link {
        }

        a:visited {
            color: #6495ED;
            text-decoration: none;
        }

        a:hover,
        a:active {
            color: #000;
            text-decoration: none;
        }

        ul {
            color: #6495ED;
            list-style-type: none;
        }
        ul li{
            line-height: 2;
        }
    </style>
</head>
<body>
<jsp:include page="../../header.jsp"></jsp:include>
<div class="wrap" style="position: relative;top:40px">
    <%--卡片--%>
    <div class="container" style="margin-left: 200px">
        <div class="row">
            <div class="col-2" style="margin-left: -120px">
                <div class="card shadow  mb-3"
                     style="width: 20rem;height:14rem;margin-top: 20px;background-color: #f7f8ea">
                    <div class="card-body">
                        <i class="fa fa-quote-left" style="float: left;"></i>
                        <p class="card-text" align="center" style="margin-top: 30px">你一直说自己没努力<br><br>

                            那你努力100%试一下啊<br><br>

                            你的天空你不想飞一下吗？</p>
                        <i class="fa fa-quote-right" style="margin-left: 270px"></i>

                    </div>
                </div>


                <div class="card shadow " style="width: 20rem;height:25rem;margin-top: 20px;background-color: #d8f0f3">
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
                                <div style="margin-left: -60px;font-size: 20px;font-weight: 700">无论夜晚多么黑暗，</div>
                                <div style="margin-left: 10px;font-size: 20px;font-weight: 700">黎明总会如约而至。</div>
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
                        <h5 class="card-header" align="center"><span id="id0">${article.title}</span></h5>

                        <div class="card-body">
                            <input id="article_id0" type="hidden">
                            <span class="badge badge-pill badge-danger" style="margin-left: 20px"
                                  id="classify0">${article.classify}</span>
                            <img style="margin-left:50px "
                                 src="${pageContext.request.contextPath}/static/images/icons/table.svg">
                            <span id="time0">${update_time}</span>
                            <img style="margin-left:40px "
                                 src="${pageContext.request.contextPath}/static/images/icons/folder-fill.svg">
                            <span id="type2"><a style=" color:#000;
            text-decoration:none;"
                                                href="${pageContext.request.contextPath}/toProgramRecordOrOther?type=${article.type}">${article.type}</a></span>
                            <img style="margin-left:50px "
                                 src="${pageContext.request.contextPath}/static/images/icons/tag-fill.svg">
                            <span id="attribute_label0" style="cursor:pointer;" onclick="toTag(this)">${article.attribute_label}</span>
                            <img style="margin-left:50px "
                                 src="${pageContext.request.contextPath}/static/images/icons/eye.svg">
                            <span>阅读数 58</span>
                            <div id="test-editormd-view">
                            <textarea style="display:none;"
                                      name="test-editormd-markdown-doc">${article.content}</textarea>
                            </div>

                            <div style="float: left">
                                <c:if test="${not empty lastArticle}">
                                    <a href="${pageContext.request.contextPath}/article/${lastArticle.article_id}"><<
                                        上一篇 ${lastArticle.title}</a>
                                </c:if>
                                <c:if test="${empty lastArticle}">
                                    <a href="javascript:void(0)">亲~~,前面没有了</a>
                                </c:if>
                            </div>
                            <div style="float: right">
                                <c:if test="${not empty nextArticle}">
                                    <a href="${pageContext.request.contextPath}/article/${nextArticle.article_id}">下一篇 ${nextArticle.title}>></a>
                                </c:if>
                                <c:if test="${empty nextArticle}">
                                    <a href="javascript:void(0)">亲~~,后面没有了</a>
                                </c:if>
                            </div>
                        </div>
                    </div>


                </div>
                <%--            留言板--%>
                <div class="shadow card" style="margin-top: 40px;width:630px;margin-left: 100px ">
                    <div class="comment_headling" style="margin-left: 30px;margin-top: 20px"><i style="width: 30px;"
                                                                                                class="fa fa-comments fa-fw"
                                                                                                aria-hidden="true"></i><span
                            style="font-size: 20px;font-weight: 700"> 评论</span></div>

                    <div class="card-body">
                        <div id="vcomments"></div>
                    </div>
                </div>
            </div>

            <div class="col-2">
                <div class="card shadow  mb-3" style="width: 20rem; position: fixed;left: 1100px;top:60px;font-size: 18px;">
                    <div style="margin-top: 20px;margin-left: 10px;font-weight: 700;">
                        <div style="float: left;margin-left: 60px;cursor: pointer" onclick="changeDiv(0)">文章目录</div>
                        <div style="float: left;margin-left: 20px;cursor: pointer" onclick="changeDiv(1)">作者信息</div>
                    </div>
                    <div align="center" id="toc">
                        <div class="markdown-body editormd-preview-container" id="custom-toc-container"
                             style="height: 400px;overflow-y:auto;font-size: 18px;font-family: 'Microsoft YaHei';color: #6495ED;">
                        </div>
                    </div>
                    <div id="author" class="card " style="width: 20rem;height:22rem;display: none;">
                        <img src="${pageContext.request.contextPath}/static/images/tx.jpeg"
                             style="border-radius: 60px;  width: 100px;height: 100px;margin-left: 100px;margin-top: 10px"
                             class="card-img-top" alt="...">
                        <div class="card-body">
                            <h5 align="center" class="card-title" style="font-family: 'Adobe 楷体 Std R'">程序员的小宇宙</h5>
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
                        <div id="icons" style="margin-top: 70px">

                            <a class="card-icons" href="https://github.com/zhaozhaoli256818" target="_blank"><i
                                    class="fa fa-github" title="活跃不起来滴小github~"></i></a>
                            <a class="card-icons" href="https://gitee.com/zhaozhaoli256818" target="_blank"><i
                                    class="fa fa-gg"
                                    title="码码码码码云~"></i></a>

                            <a class="card-icons"
                               href="http://wpa.qq.com/msgrd?v=3&amp;uin=1191599851&amp;site=qq&amp;menu=yes"
                               target="_blank"><i class="fa fa-qq" title="点击QQ联系俺~"></i></a>
                            <a class="card-icons" href="javascript:void(0);" data-toggle="popover"><i
                                    class="fa fa-weixin"></i></a>


                            <a class="card-icons" href="https://weibo.com/6578163867/profile?topnav=1&wvr=6&is_all=1"
                               target="_blank"><i
                                    class="fa fa-weibo" title="基本不碰的小微博~"></i></a>
                        </div>

                    </div>
                </div>
            </div>

        </div>
    </div>
</div>


<jsp:include page="../../footer.jsp"></jsp:include>
<%--导航栏下滑消失上滑出现--%>
<script type="text/javascript" src="https://npmcdn.com/headroom.js@0.9.4/dist/headroom.js"></script>

<script type="text/javascript" src="${pageContext.request.contextPath}/static/js/main.js"></script>


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
    var testEditormdView;
    $(function () {
        testEditormdView = editormd.markdownToHTML("test-editormd-view", {
            htmlDecode: "style,script,iframe",  // you can filter tags decode
            emoji: true,
            taskList: true,
            tex: true,  // 默认不解析
            flowChart: true,  // 默认不解析
            sequenceDiagram: true,  // 默认不解析
            tocContainer: "#custom-toc-container", // 自定义 ToC 容器层
        });

    });

    function changeDiv(val) {
        if (val == 0) {
            $("#toc").css("display", "block");
            $("#author").css("display", "none");
        } else {
            $("#toc").css("display", "none");
            $("#author").css("display", "block");
        }
    }

</script>
<script src="//unpkg.com/valine@latest/dist/Valine.min.js"></script>
<script>
    new Valine({
        el: '#vcomments',
        appId: 'RkIlY5T9HreBkWUxmhEOFQHj-gzGzoHsz',
        appKey: 'szoE3aNLlIMiLF0b2sPWsu5y',
        placeholder: '各位道友,请举手发言',
        notify: true,
        avatar: 'wavatar' // (''/mp/identicon/monsterid/wavatar/robohash/retro/hide)
    })
    function toTag(val) {
        //alert($(val).html())
        window.location.href = "${pageContext.request.contextPath}/toTag/"+$(val).html()
    }
</script>
</body>
</html>


