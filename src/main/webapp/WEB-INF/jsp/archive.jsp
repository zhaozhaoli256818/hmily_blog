<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>归档页面</title>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/static/timeline/css/normalize.css"/>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/static/timeline/css/default.css">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/static/timeline/lib/cntl.css">

    <link href="${pageContext.request.contextPath}/static/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/html5shiv@3.7.3/dist/html5shiv.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/respond.js@1.4.2/dest/respond.min.js"></script>
    <script src="${pageContext.request.contextPath}/static/js/jquery-1.11.3.min.js"></script>
    <script src="${pageContext.request.contextPath}/static/js/bootstrap.js"></script>

    <link href="https://cdn.bootcss.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/static/css/myicon.css" rel="stylesheet">

</head>
<body>
<jsp:include page="../../header.jsp"></jsp:include>
<div class="head-one card shadow text-white bg-info mb-3"
     style="width: 20rem;height:14rem;position: absolute;left: 25px;top: 80px">
    <div class="card-body">
        <i class="fa fa-quote-left" style="float: left;"></i>
        <p class="card-text" align="center" style="margin-top: 30px">你一直说自己没努力<br><br>

            那你努力100%试一下啊<br><br>

            你的天空你不想飞一下吗？</p>
        <i class="fa fa-quote-right" style="margin-left: 270px"></i>

    </div>
</div>

<div class="card shadow text-white bg-success"
     style="width: 20rem;height:25rem;position: absolute;left: 25px;top: 350px">
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


<div class="card shadow bg-light mb-3" style="width: 20rem; position: fixed;left: 1190px;top:100px">
    <div class="card-header">
        <div style="float: left;margin-left: 60px;cursor: pointer" onclick="changeDiv(0)">日期归类</div>
        <div style="float: left;margin-left: 20px;cursor: pointer" onclick="changeDiv(1)">作者信息</div>
    </div>
    <div align="center" id="archive_time">
        <div class="card-header"><a href="javascript:void (0)" onclick="findArchiveByMonth(this.text)">>>2020年03月</a>
        </div>
        <div class="card-header"><a href="javascript:void (0)" onclick="findArchiveByMonth(this.text)">>>2020年04月</a>
        </div>
        <div class="card-header"><a href="javascript:void (0)" onclick="findArchiveByMonth(this.text)">>>2020年05月</a>
        </div>
        <div class="card-header"><a href="javascript:void (0)" onclick="findArchiveByMonth(this.text)">>>2020年06月</a>
        </div>
        <div class="card-header"><a href="javascript:void (0)" onclick="findArchiveByMonth(this.text)">>>2020年07月</a>
        </div>
        <div class="card-header"><a href="javascript:void (0)" onclick="findArchiveByMonth(this.text)">>>2020年08月</a>
        </div>
        <div class="card-header"><a href="javascript:void (0)" onclick="findArchiveByMonth(this.text)">>>2020年09月</a>
        </div>
    </div>
    <div id="author" class="card  bg-light" style="width: 20rem;height:22rem;display: none">
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
        <div id="icons" style="margin-top: 70px">

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

    </div>
</div>


<div class="htmleaf-container" style="width: 800px">
    <div id="month" style="position: absolute;left: 820px ;top:70px;font-size: 1em;"></div>
    <div id="total" style="position: absolute;left: 920px ;top:70px;font-size: 1em;"></div>
    <header class="htmleaf-header">
        <div class="htmleaf-links">
            <a class="htmleaf-icon icon-htmleaf-home-outline" href="index.jsp" title="博客首页"
               target="_blank"><span> 博客首页</span></a>
            <a class="htmleaf-icon icon-htmleaf-arrow-forward-outline" href="${pageContext.request.contextPath}/archive"
               title="返回第一页"
               target="_blank"><span> 返回</span></a>
        </div>
    </header>

    <div class="cntl">
			<span class="cntl-bar cntl-center">
				<span class="cntl-bar-fill"></span>
			</span>

        <div class="cntl-states">

            <div class="cntl-state">
                <div class="cntl-content shadow">
                    <a href="javascript:void(0)" onclick="detail(0)"><h4 id="t0" align="center">Title 1</h4></a>
                    <span class="badge badge-pill badge-danger"
                          id="classify0">原创</span>
                    <img style="margin-left:20px " src="${pageContext.request.contextPath}/static/images/icons/folder-fill.svg">
                    <span style="cursor: pointer" onclick="toTypePage(this)" id="type0">类型</span>
                    <%--                            <span style="margin-left: 50px" id="type0">文章类别</span>--%>
                    <img style="margin-left:10px " src="${pageContext.request.contextPath}/static/images/icons/tag-fill.svg">
                    <span   id="attribute_label0">标签</span>
                    <img style="margin-left:10px " src="${pageContext.request.contextPath}/static/images/icons/eye.svg">
                    <span>58</span>

                </div>
                <div class="cntl-image"><img src="${pageContext.request.contextPath}/static/timeline/img/4.jpg">
                </div>
                <div style="display: none" id="article_id0"></div>
                <div class="cntl-icon cntl-center" id="time0" style="font-size:smaller ">'00</div>
            </div>


            <div class="cntl-state">
                <div class="cntl-content shadow">
                    <a href="javascript:void(0)" onclick="detail(1)"><h4 id="t1" align="center">Title 2</h4></a>
                    <span class="badge badge-pill badge-danger"
                          id="classify1">原创</span>
                    <img style="margin-left:20px " src="${pageContext.request.contextPath}/static/images/icons/folder-fill.svg">
                    <span style="cursor: pointer" onclick="toTypePage(this)" id="type1">类型</span>
                    <img style="margin-left:10px " src="${pageContext.request.contextPath}/static/images/icons/tag-fill.svg">
                    <span   id="attribute_label1">标签</span>
                    <img style="margin-left:10px " src="${pageContext.request.contextPath}/static/images/icons/eye.svg">
                    <span>58</span>
                </div>

                <div class="cntl-image"><img src="${pageContext.request.contextPath}/static/timeline/img/1.jpg">
                </div>
                <div style="display: none" id="article_id1"></div>
                <div class="cntl-icon cntl-center" id="time1" style="font-size:smaller ">'03</div>

            </div>

            <div class="cntl-state">
                <div class="cntl-content shadow">
                    <a href="javascript:void(0)" onclick="detail(2)"><h4 id="t2" align="center">Title 3</h4></a>
                    <span class="badge badge-pill badge-danger"
                          id="classify2">原创</span>
                    <img style="margin-left:20px " src="${pageContext.request.contextPath}/static/images/icons/folder-fill.svg">
                    <span style="cursor: pointer" onclick="toTypePage(this)" id="type2">类型</span>
                    <img style="margin-left:10px " src="${pageContext.request.contextPath}/static/images/icons/tag-fill.svg">
                    <span   id="attribute_label2">标签</span>
                    <img style="margin-left:10px " src="${pageContext.request.contextPath}/static/images/icons/eye.svg">
                    <span>58</span>
                </div>

                <div class="cntl-image"><img src="${pageContext.request.contextPath}/static/timeline/img/2.jpg">
                </div>
                <div style="display: none" id="article_id2"></div>
                <div class="cntl-icon cntl-center" id="time2" style="font-size:smaller ">'04</div>
            </div>

            <div class="cntl-state">
                <div class="cntl-content shadow">
                    <a href="javascript:void(0)" onclick="detail(3)"><h4 id="t3" align="center">Title 4</h4></a>
                    <span class="badge badge-pill badge-danger"
                          id="classify3">原创</span>
                    <img style="margin-left:20px " src="${pageContext.request.contextPath}/static/images/icons/folder-fill.svg">
                    <span style="cursor: pointer" onclick="toTypePage(this)" id="type3">类型</span>
                    <img style="margin-left:10px " src="${pageContext.request.contextPath}/static/images/icons/tag-fill.svg">
                    <span   id="attribute_label3">标签</span>
                    <img style="margin-left:10px " src="${pageContext.request.contextPath}/static/images/icons/eye.svg">
                    <span>58</span>
                </div>

                <div class="cntl-image"><img src="${pageContext.request.contextPath}/static/timeline/img/3.jpg">
                </div>
                <div style="display: none" id="article_id3"></div>
                <div class="cntl-icon cntl-center" id="time3" style="font-size:smaller ">'07</div>
            </div>

            <div class="cntl-state">
                <div class="cntl-content shadow">
                    <a href="javascript:void(0)" onclick="detail(4)"><h4 id="t4" align="center">Title 5</h4></a>
                    <span class="badge badge-pill badge-danger"
                          id="classify4">原创</span>
                    <img style="margin-left:20px " src="${pageContext.request.contextPath}/static/images/icons/folder-fill.svg">
                    <span style="cursor: pointer" onclick="toTypePage(this)" id="type4">类型</span>
                    <%--                            <span style="margin-left: 50px" id="type0">文章类别</span>--%>
                    <img style="margin-left:10px " src="${pageContext.request.contextPath}/static/images/icons/tag-fill.svg">
                    <span   id="attribute_label4">标签</span>
                    <img style="margin-left:10px " src="${pageContext.request.contextPath}/static/images/icons/eye.svg">
                    <span>58</span>
                </div>

                <div class="cntl-image"><img src="${pageContext.request.contextPath}/static/timeline/img/4.jpg">
                </div>
                <div style="display: none" id="article_id4"></div>
                <div class="cntl-icon cntl-center" id="time4" style="font-size:smaller ">'10</div>
            </div>
        </div>
    </div>
</div>

<%--    隐藏域--%>
<input type="hidden" id="pageNum" value="1">
<div style="margin-left: 480px;margin-top: 30px">
    <a href="javascript:void(0)" onclick="changePage(parseInt($('#pageNum').val())-1)">
        <button
                type="button" class="btn btn-primary">上一页
        </button>
    </a>
</div>

<div style="margin-left: 1015px;margin-top: -47px">
    <a href="javascript:void(0)" onclick="changePage(parseInt($('#pageNum').val())+1)">
        <button
                type="button" class="btn btn-primary">下一页
        </button>
    </a>
</div>
<jsp:include page="../../footer.jsp"></jsp:include>
<script src="${pageContext.request.contextPath}/static/js/jquery-1.11.3.min.js" type="text/javascript"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/static/timeline/lib/jquery.cntl.js"></script>
<script type="text/javascript">
    $(document).ready(function (e) {
        $('.cntl').cntl({
            revealbefore: 300,
            anim_class: 'cntl-animate',
            onreveal: function (e) {
                console.log(e);
            }
        });
    });
    $(function () {
        $.ajax({
            type: "POST",
            url: "${pageContext.request.contextPath}/archiveArticle",
            //data: "name=John&location=Boston",
            dataType: "json",
            success: function (data) {
                $("#pageNum").val(data.pageNum)
                $.each(data.list, function (i, n) {
                    $("#t" + i.toString()).html(n.title)
                    $("#classify" + i.toString()).html(n.classify)
                    $("#type" + i.toString()).html(n.type)
                    $("#attribute_label" + i.toString()).html(n.attribute_label)
                    $("#article_id" + i.toString()).html(n.article_id)
                    var unixTimestamp = new Date(n.update_time);
                    $("#time" + i.toString()).html(unixTimestamp.toLocaleString())
                });

            }
        });
    });
    // 日期转换函数

    Date.prototype.toLocaleString = function () {
        return this.getFullYear() + "/" + (this.getMonth() + 1) + "/" + this.getDate();
    };

    function detail(val) {
        // alert(val)
        var id = $("#article_id" + val).html();
        window.location.href = "${pageContext.request.contextPath}/article?article_id=" + id;
    }

    function changePage(val) {
        // alert(val)
        //alert(typeof $("#month").html().trim())
        var url;
        if ($("#month").html() != '') {
            url = "${pageContext.request.contextPath}/findArchiveByMonth?page=" + val + "&update_time=" + $('#month').html()
        } else {
            url = "${pageContext.request.contextPath}/archiveArticle?page=" + val
        }
        $.ajax({
            type: "POST",
            <%--url: "${pageContext.request.contextPath}/archiveArticle?page="+val,--%>
            url: url,
            dataType: "json",
            success: function (data) {
                $("#pageNum").val(data.pageNum)
                $.each(data.list, function (i, n) {
                    $("#t" + i.toString()).html(n.title)
                    $("#type" + i.toString()).html(n.type)
                    $("#attribute_label" + i.toString()).html(n.attribute_label)
                    $("#article_id" + i.toString()).html(n.article_id)
                    var unixTimestamp = new Date(n.update_time);
                    $("#time" + i.toString()).html(unixTimestamp.toLocaleString())
                });

            }
        });
    }

    function findArchiveByMonth(val) {
        //alert(val)
        var update_time = val.substring(2, val.length)
        $("#month").html(update_time)
        $.ajax({
            type: "POST",
            url: "${pageContext.request.contextPath}/findArchiveByMonth?update_time=" + update_time,
            //contentType: "application/json;charset=utf-8",
            dataType: "json",
            success: function (data) {
                $("#total").html("共计" + data.total + "篇")
                $("#pageNum").val(data.pageNum)
                $.each(data.list, function (i, n) {
                    $("#t" + i.toString()).html(n.title)
                    $("#div" + i.toString()).html(n.summary)
                    $("#article_id" + i.toString()).html(n.article_id)
                    var unixTimestamp = new Date(n.update_time);
                    $("#time" + i.toString()).html(unixTimestamp.toLocaleString())
                });

            }
        });
    }

    function changeDiv(val) {
        if (val == 0) {
            $("#archive_time").css("display", "block");
            $("#author").css("display", "none");
        } else {
            $("#archive_time").css("display", "none");
            $("#author").css("display", "block");
        }
    }

    function toTypePage(val) {
        //alert($(val).html())
        window.location.href = "${pageContext.request.contextPath}/toProgramRecordOrOther?type="+$(val).html()
    }

</script>


</body>
</html>
