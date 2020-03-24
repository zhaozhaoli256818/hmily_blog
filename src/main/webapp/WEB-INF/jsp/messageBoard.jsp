<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>留言板页面</title>

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
<%--<div style="height: 600px;width: 1500px">--%>
<%--    <img src="${pageContext.request.contextPath}/static/images/6.jpg">--%>
<%--</div>--%>
<div class="wrap" style="position: relative;top:40px">
    <div class="head-one card shadow mb-3"
         style="width: 20rem;height:14rem;position: absolute;left: 25px;background-color: #f7f8ea">
        <div class="card-body">
            <i class="fa fa-quote-left" style="float: left;"></i>
            <p class="card-text" align="center" style="margin-top: 30px">你一直说自己没努力<br><br>

                那你努力100%试一下啊<br><br>

                你的天空你不想飞一下吗？</p>
            <i class="fa fa-quote-right" style="margin-left: 270px"></i>

        </div>
    </div>

    <div class="card shadow"
         style="width: 20rem;height:25rem;position: absolute;left: 25px;top: 350px;background-color: #d8f0f3;">
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
    <%--            留言板--%>
    <div class="shadow card" style="margin-top: 40px;width:700px;margin-left: 400px ;background-color: #e4d5cf;">

        <div class="comment_headling" style="margin-left: 30px;margin-top: 60px"><i style="font-size: 30px;"
                                                                                    class="fa fa-comments fa-fw"
                                                                                    aria-hidden="true"></i><span
                style="font-size: 30px;font-weight: 700"> 留言板</span></div>
        <div style="width: 600px;margin-top: 30px;margin-left: 40px;font-family: sans-serif;letter-spacing: 0.5em">
            <p style="color: #2F2F2F">
                <strong>亲爱的小伙伴你好</strong>，我是程序员的小宇宙，欢迎你来到这里。虽然不知道你是谁，来自哪里，又将去向何方，但能够在这里与你相遇，相信这一定是上天注定的缘分。在这里，你可以畅所欲言，你的留言时刻鞭笞着我努力的来更新小站。
                本网站的内容主要为工作生活过程中的技术总结、感悟等，如果你对本站内容有任何疑问，或者有任何的想法，欢迎留言交流。
            </p>
        </div>
        <img src="${pageContext.request.contextPath}/static/images/liuyan.jpeg">
        <div class="card-body" style="margin-top: 50px">
            <div id="vcomments"></div>
        </div>
    </div>
</div>

<div class="card shadow  mb-3" style="width: 20rem; position: fixed;left: 1190px;top:80px;">
    <div class="card-header"style="font-weight: 700;font-size: 17px">
        <div style="float: left;margin-left: 60px;cursor: pointer" onclick="changeDiv(0)">最新文章</div>
        <div style="float: left;margin-left: 20px;cursor: pointer" onclick="changeDiv(1)">作者信息</div>
    </div>
    <div align="center" id="article_type" style="margin-top:5px;margin-left:20px;font-size: 17px;color: #6495ED;">
    </div>
    <div id="author" class="card" style="width: 20rem;height:22rem;display: none;">
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
</div>


<jsp:include page="../../footer.jsp"></jsp:include>
<%--导航栏下滑消失上滑出现--%>
<script type="text/javascript" src="https://npmcdn.com/headroom.js@0.9.4/dist/headroom.js"></script>

<script type="text/javascript" src="${pageContext.request.contextPath}/static/js/main.js"></script>

<script type="text/javascript">


    function changeDiv(val) {
        if (val == 0) {
            $("#article_type").css("display", "block");
            $("#author").css("display", "none");
        } else {
            $("#article_type").css("display", "none");
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
        avatar: 'robohash' // (''/mp/identicon/monsterid/wavatar/robohash/retro/hide)
    })
    $(document).ready(function(){
        $('.vemoji-btn').text('😀');
        $("#vcomments").on('click', 'span.vat',function(){
            $(this).parent('div.vmeta').next("div.vcontent").after($("div.vwrap"));
            $('textarea#veditor').focus();
        })
    })

    $(function () {
        $.ajax({
            type: "POST",
            url: "${pageContext.request.contextPath}/lastArticle",
            dataType: "json",
            success: function (data) {
                // alert(data[0].title)
                $.each(data,function (i,n) {
                    var $div = "<div style='text-align: justify'><span style='line-height:20px;cursor: pointer;' onclick='detail("+n.article_id+")'>"+n.title+"</span><hr></div>"
                    $("#article_type").append($div)
                })

            }
        });

    });

    function detail(val) {
        window.location.href = "${pageContext.request.contextPath}/article/" + val;
    }
</script>
<style>

</style>
</body>
</html>
