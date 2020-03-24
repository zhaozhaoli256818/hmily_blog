<%--
  Created by IntelliJ IDEA.
  User: zhaoli
  Date: 2020/3/3
  Time: 下午3:22
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<html lang="zh-CN">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- 上述3个meta标签*必须*放在最前面，任何其他内容都*必须*跟随其后！ -->
    <title>首页</title>

    <!-- Bootstrap -->
    <link href="${pageContext.request.contextPath}/static/css/bootstrap.min.css" rel="stylesheet">

    <!-- HTML5 shim 和 Respond.js 是为了让 IE8 支持 HTML5 元素和媒体查询（media queries）功能 -->
    <!-- 警告：通过 file:// 协议（就是直接将 html 页面拖拽到浏览器中）访问页面时 Respond.js 不起作用 -->
    <!--[if lt IE 9]>
    <script src="https://cdn.jsdelivr.net/npm/html5shiv@3.7.3/dist/html5shiv.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/respond.js@1.4.2/dest/respond.min.js"></script>
    <![endif]-->
    <!-- jQuery (Bootstrap 的所有 JavaScript 插件都依赖 jQuery，所以必须放在前边) -->
    <script src="${pageContext.request.contextPath}/static/js/jquery-1.11.3.min.js"></script>
    <!-- 加载 Bootstrap 的所有 JavaScript 插件。你也可以根据需要只加载单个插件。 -->
    <script src="${pageContext.request.contextPath}/static/js/bootstrap.js"></script>

    <link href="https://cdn.bootcss.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/static/css/myicon.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/static/css/animate.min.css" rel="stylesheet">


</head>
<body>

<jsp:include page="header.jsp"></jsp:include>
<%--轮播图--%>
<div class="wrap" style="position: relative;top:40px">
<div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel" style="height: 700px">
    <ol class="carousel-indicators">
        <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
        <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
        <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
        <li data-target="#carouselExampleIndicators" data-slide-to="3"></li>
        <li data-target="#carouselExampleIndicators" data-slide-to="4"></li>
        <li data-target="#carouselExampleIndicators" data-slide-to="5"></li>
    </ol>
    <div class="carousel-inner">
        <div class="carousel-item active">
            <img style="height: 650px" src="${pageContext.request.contextPath}/static/images/1.jpg"
                 class="d-block w-100" alt="...">
        </div>
        <div class="carousel-item">
            <img style="height: 650px" src="${pageContext.request.contextPath}/static/images/2.jpg"
                 class="d-block w-100" alt="...">
        </div>
        <div class="carousel-item">
            <img style="height: 650px" src="${pageContext.request.contextPath}/static/images/3.jpg"
                 class="d-block w-100" alt="...">
        </div>
        <div class="carousel-item">
            <img style="height: 650px" src="${pageContext.request.contextPath}/static/images/4.jpg"
                 class="d-block w-100" alt="...">
        </div>
        <div class="carousel-item">
            <img style="height: 650px" src="${pageContext.request.contextPath}/static/images/5.jpg"
                 class="d-block w-100" alt="...">
        </div>
        <div class="carousel-item">
            <img style="height: 650px" src="${pageContext.request.contextPath}/static/images/6.jpg"
                 class="d-block w-100" alt="...">
        </div>
    </div>
    <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
        <span class="carousel-control-prev-icon" aria-hidden="true"></span>
        <span class="sr-only">Previous</span>
    </a>
    <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
        <span class="carousel-control-next-icon" aria-hidden="true"></span>
        <span class="sr-only">Next</span>
    </a>
</div>
<%--卡片--%>
<div class="container" style="margin-left: 200px">
    <div class="row">
        <div class="col-2" style="margin-left: -80px">
            <div class="card shadow  mb-3" style="width: 20rem;height:14rem;margin-top: 20px;background-color: #f7f8ea">
                <div class="card-body">
                    <i class="fa fa-quote-left" style="float: left;"></i>
                    <p class="card-text" align="center" style="margin-top: 30px">你一直说自己没努力<br><br>

                        那你努力100%试一下啊<br><br>

                        你的天空你不想飞一下吗？</p>
                    <i class="fa fa-quote-right" style="margin-left: 270px"></i>

                </div>
            </div>


            <div class="card shadow" style="width: 20rem;height:32rem;margin-top: 20px;background-color: #d8f0f3">
                <div class="card-body">
                    <h5 align="center" class="card-title">音乐</h5>
                    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/aplayer@1.7.0/dist/APlayer.min.css">

                    <div id="aplayer" class="aplayer" data-id="4877773231" data-server="netease" data-type="playlist"
                         data-fixed="false" data-listfolded="true" data-order="list" data-theme="#F58EA8"
                         style="width: 100%">
                    </div>
                    <script src="https://cdn.jsdelivr.net/npm/aplayer@1.7.0/dist/APlayer.min.js"></script>
                    <script src="https://cdn.jsdelivr.net/npm/meting@1.1.0/dist/Meting.min.js"></script>
                </div>
            </div>

        </div>
        <div class="col-8" style="margin-left: 55px">
            <div style="margin-left: 100px;margin-top: 20px">
                <div class="card" style="width: 600px;height: 300px;">
                    <a href="javascript:void(0)" onclick="detail(0)"><h5 class="card-header" align="center"><span
                            id="id0">题目</span></h5></a>
                    <div class="card-body">
                        <input id="article_id0" type="hidden">
                        <span class="badge badge-pill badge-danger" style="margin-left: 20px"
                              id="classify0">原创</span>
                        <img style="margin-left:50px "
                             src="${pageContext.request.contextPath}/static/images/icons/table.svg">
                        <span id="time0">
                                 2020-3-20
                            </span>
                        <img style="margin-left:40px "
                             src="${pageContext.request.contextPath}/static/images/icons/folder-fill.svg">
                        <span id="type0" style="cursor: pointer" onclick="toTypePage(this)">文章类别</span>
                        <img style="margin-left:50px "
                             src="${pageContext.request.contextPath}/static/images/icons/tag-fill.svg">
                        <span id="attribute_label0" style="cursor:pointer;" onclick="toTag(this)">标签</span>
                        <img style="margin-left:30px "
                             src="${pageContext.request.contextPath}/static/images/icons/eye.svg">
                        <span>阅读数 58</span>
                        <div style="color: #0bc5de;width: 250px;height: 100px;margin-left: 120px;margin-top: 20px">
                            <p class="card-text" id="summary0">文章总结</p>
                        </div>
                        <a href="javascript:void(0)" onclick="detail(0)" class="btn btn-primary"
                           style="margin-top: 30px;margin-left: 430px">>>阅读全文</a>
                    </div>
                </div>
                <br><br>
                <div class="card" style="width: 600px;height: 300px;">
                    <a href="javascript:void(0)" onclick="detail(1)"><h5 class="card-header" align="center"><span
                            id="id1">题目</span></h5></a>
                    <div class="card-body">
                        <input id="article_id1" type="hidden">
                        <span class="badge badge-pill badge-danger" style="margin-left: 20px"
                              id="classify1">原创</span>
                        <img style="margin-left:50px "
                             src="${pageContext.request.contextPath}/static/images/icons/table.svg">
                        <span id="time1">
                                 2020-3-20
                            </span>
                        <img style="margin-left:40px "
                             src="${pageContext.request.contextPath}/static/images/icons/folder-fill.svg">
                        <span id="type1" style="cursor: pointer" onclick="toTypePage(this)">文章类别</span>
                        <img style="margin-left:50px "
                             src="${pageContext.request.contextPath}/static/images/icons/tag-fill.svg">
                        <span id="attribute_label1" style="cursor:pointer;" onclick="toTag(this)">标签</span>
                        <img style="margin-left:30px "
                             src="${pageContext.request.contextPath}/static/images/icons/eye.svg">
                        <span>阅读数 58</span>
                        <div style="color: #0bc5de;width: 250px;height: 100px;margin-left: 120px;margin-top: 20px">
                            <p class="card-text" id="summary1">文章总结</p>
                        </div>
                        <a href="javascript:void(0)" onclick="detail(1)" class="btn btn-primary"
                           style="margin-top: 30px;margin-left: 430px">>>阅读全文</a>
                    </div>
                </div>
                <br><br>
                <div class="card" style="width: 600px;height: 300px;">
                    <a href="javascript:void(0)" onclick="detail(2)"><h5 class="card-header" align="center"><span
                            id="id2">题目</span></h5></a>
                    <div class="card-body">
                        <input id="article_id2" type="hidden">
                        <span class="badge badge-pill badge-danger" style="margin-left: 20px"
                              id="classify2">原创</span>
                        <img style="margin-left:50px "
                             src="${pageContext.request.contextPath}/static/images/icons/table.svg">
                        <span id="time2">
                                 2020-3-20
                            </span>
                        <img style="margin-left:40px "
                             src="${pageContext.request.contextPath}/static/images/icons/folder-fill.svg">
                        <span id="type2" style="cursor: pointer" onclick="toTypePage(this)">类型</span>
                        <img style="margin-left:50px "
                             src="${pageContext.request.contextPath}/static/images/icons/tag-fill.svg">
                        <span id="attribute_label2" style="cursor:pointer;" onclick="toTag(this)">标签</span>
                        <img style="margin-left:20px "
                             src="${pageContext.request.contextPath}/static/images/icons/eye.svg">
                        <span>阅读数 58</span>
                        <div style="color: #0bc5de;width: 250px;height: 100px;margin-left: 120px;margin-top: 20px">
                            <p class="card-text" id="summary2">文章总结</p>
                        </div>
                        <a href="javascript:void(0)" onclick="detail(2)" class="btn btn-primary"
                           style="margin-top: 30px;margin-left: 430px">>>阅读全文</a>
                    </div>
                </div>
            </div>
        </div>

        <div class="col-2" id="main-right-div">
            <div class="card shadow" style="width: 20rem;height:22rem;margin-top: 20px">
                <img src="${pageContext.request.contextPath}/static/images/tx.jpeg"
                     style="border-radius: 60px;  width: 100px;height: 100px;margin-left: 100px;margin-top: 10px"
                     class="card-img-top" alt="...">
                <div class="card-body">

                                        <h5 align="center" class="card-title" style="font-family: '微软雅黑'">程序员的小宇宙</h5>
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
                    <a class="card-icons" href="https://gitee.com/zhaozhaoli256818" target="_blank"><i class="fa fa-gg"
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
            <div class="card shadow" style="width: 20rem; margin-top: 20px">
                <div class="card-body" id="article_type">
                    <h3 class="menu-label">
                       最新文章
                    </h3>
                    <hr>
                </div>
            </div>

            <div class="card  shadow bg-light" style="width: 20rem; margin-top: 20px">
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
    </div>
</div>

<%--分页--%>


<%--    隐藏域--%>
<input type="hidden" id="pageNum" value="1">
<div style="margin-left: 480px;margin-top: 30px">
    <a href="javascript:void(0)" onclick="changePage(parseInt($('#pageNum').val())-1)">
        <button
                type="button" class="btn btn-primary">上一页
        </button>
    </a>
</div>

<div style="margin-left: 1015px;margin-top: -40px">
    <a href="javascript:void(0)" onclick="changePage(parseInt($('#pageNum').val())+1)">
        <button
                type="button" class="btn btn-primary">下一页
        </button>
    </a>
</div>
</div>
<div style="height: 100px"></div>

<jsp:include page="footer.jsp"></jsp:include>

<script  type="text/javascript"  src="https://npmcdn.com/headroom.js@0.9.4/dist/headroom.js"></script>

<script  type="text/javascript"  src="${pageContext.request.contextPath}/static/js/main.js"></script>

<script>
    function detail(val) {
        var id = document.getElementById("article_id" + val).value;
        //alert(val)
        <%--window.location.href = "${pageContext.request.contextPath}/article?article_id=" + id;--%>
        window.location.href = "${pageContext.request.contextPath}/article/" + id;
    }

    $(function () {
        $.ajax({
            type: 'POST',
            url: "${pageContext.request.contextPath}/index",
            dataType: "json",//期待返回的数据类型
            success: function (data) {
                //alert("success:"+data.list[0].title);
                // alert(data.pageNum)
                $("#pageNum").html(data.pageNum)
                $.each(data.list, function (i, n) {
                    $("#id" + i.toString()).html(n.title)
                    $("#classify" + i.toString()).html(n.classify)
                    var unixTimestamp = new Date(n.update_time);
                    $("#time" + i.toString()).html(unixTimestamp.toLocaleString())
                    $("#attribute_label" + i.toString()).html(n.attribute_label)
                    $("#type" + i.toString()).html(n.type)
                    $("#article_id" + i.toString()).val(n.article_id)
                    $("#summary" + i.toString()).html(n.summary)
                });
            },
            error: function (data) {
                alert("error" + data);
            }
        });
    });
    // 日期转换函数

    Date.prototype.toLocaleString = function () {
        return this.getFullYear() + "/" + (this.getMonth() + 1) + "/" + this.getDate();
    };

    function changePage(val) {
        $.ajax({
            type: 'POST',
            url: "${pageContext.request.contextPath}/index?page=" + val,
            dataType: "json",//期待返回的数据类型
            success: function (data) {
                $("#pageNum").val(data.pageNum)
                $.each(data.list, function (i, n) {
                    $("#id" + i.toString()).html(n.title)
                    $("#classify" + i.toString()).html(n.classify)
                    var unixTimestamp = new Date(n.update_time);
                    $("#time" + i.toString()).html(unixTimestamp.toLocaleString())
                    $("#attribute_label" + i.toString()).html(n.attribute_label)
                    $("#type" + i.toString()).html(n.type)
                    $("#article_id" + i.toString()).val(n.article_id)
                    $("#summary" + i.toString()).html(n.summary)
                });
                $("body").scrollTop(600)
            },
            error: function (data) {
                alert("error" + data);
            }
        });
    }

    function toTypePage(val) {
        //alert($(val).html())
        window.location.href = "${pageContext.request.contextPath}/toProgramRecordOrOther?type=" + $(val).html()
    }
    $(function () {
        $.ajax({
            type: "POST",
            url: "${pageContext.request.contextPath}/lastArticle",
            dataType: "json",
            success: function (data) {
                // alert(data[0].title)
                $.each(data,function (i,n) {
                    var $div = "<div style='text-align: justify'><span style='line-height:20px;cursor: pointer;' onclick='detail1("+n.article_id+")'>"+n.title+"</span><hr></div>"
                    $("#article_type").append($div)
                })

            }
        });

    });
    function detail1(val) {
        window.location.href = "${pageContext.request.contextPath}/article/" + val;
    }

    function toTag(val) {
        //alert($(val).html())
        window.location.href = "${pageContext.request.contextPath}/toTag/"+$(val).html()
    }
</script>

</body>

</html>
