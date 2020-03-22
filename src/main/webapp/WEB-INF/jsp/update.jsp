<%--
  Created by IntelliJ IDEA.
  User: zhaoli
  Date: 2020/3/21
  Time: 上午10:19
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>更新页面</title>

    <link href="${pageContext.request.contextPath}/static/css/bootstrap.min.css" rel="stylesheet">
    <!-- jQuery (Bootstrap 的所有 JavaScript 插件都依赖 jQuery，所以必须放在前边) -->
    <script src="${pageContext.request.contextPath}/static/js/jquery-1.11.3.min.js"></script>
    <!-- 加载 Bootstrap 的所有 JavaScript 插件。你也可以根据需要只加载单个插件。 -->
    <script src="${pageContext.request.contextPath}/static/js/bootstrap.js"></script>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/static/timeline/css/htmleaf-demo.css">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/static/timeline/css/jquery.eeyellow.Timeline.css" />


    <link href="https://cdn.bootcss.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/static/css/myicon.css" rel="stylesheet">
</head>
<body>
<jsp:include page="../../header.jsp"></jsp:include>
<div class="htmleaf-container" style="position: relative;top:40px">
    <div class="head-one card shadow mb-3"
         style="width: 20rem;height:14rem;position: absolute;left: 25px;top:40px;background-color: #f7f8ea">
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

    <div class="card shadow  mb-3" style="width: 20rem; position: fixed;left: 1190px;top:80px;background-color: #e7daac">


        <div id="author" class="card" style="width: 20rem;height:22rem;background-color: #e7daac">
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
            <div style="height: 20px"></div>
        </div>
    </div>
</div>
<div style="position: relative;left: 400px;top:80px">
    <img src="${pageContext.request.contextPath}/static/images/jiayou.jpeg" style="width: 300px">
    <div style="position: absolute;left: 350px;top:120px;font-size: 30px; color: rgba(7, 38, 41, 0.5);">
        我的小博客终于开张了，<br>欢迎大家光临^^
    </div>
</div>
                <div class="VivaTimeline" style="color: rgba(8, 160, 174, 0.5);;font-family: sans-serif;width: 700px;position: relative;left: 400px;top:100px">
                    <dl>
                        <dt>2020年</dt>
                        <dd class="pos-left clearfix">
                            <div class="circ"></div>
                            <div class="time">3月3日</div>
                            <div class="events">
                                <div class="events-header">今天开始搭建自己的个人博客^^</div>

                            </div>
                        </dd>
                        <dd class="pos-right clearfix">
                            <div class="circ"></div>
                            <div class="time">3月4日</div>
                            <div class="events">
                                <div class="events-header">完成首页的搭建以及前后台交互</div>
                            </div>
                        </dd>
                        <dd class="pos-left clearfix">
                            <div class="circ"></div>
                            <div class="time">3月5日</div>
                            <div class="events">
                                <div class="events-header">完成登录注册页面及后台交互</div>
                            </div>
                        </dd>
                        <dd class="pos-right clearfix">
                            <div class="circ"></div>
                            <div class="time">3月6日</div>
                            <div class="events">
                                <div class="events-header">实现文章详情页面的展示</div>
                            </div>
                        </dd>
                        <dd class="pos-left clearfix">
                            <div class="circ"></div>
                            <div class="time">3月13日</div>
                            <div class="events">
                                <div class="events-header">集成markdown文本编辑器editormd</div>
                            </div>
                        </dd>
                        <dd class="pos-right clearfix">
                            <div class="circ"></div>
                            <div class="time">3月15日</div>
                            <div class="events">
                                <div class="events-header">对归档页面进行构建</div>
                            </div>
                        </dd>

                        <dd class="pos-left clearfix">
                            <div class="circ"></div>
                            <div class="time">3月16日</div>
                            <div class="events">
                                <div class="events-header">增加文章详情页面的文章目录</div>
                            </div>
                        </dd>
                        <dd class="pos-right clearfix">
                            <div class="circ"></div>
                            <div class="time">3月17日</div>
                            <div class="events">
                                <div class="events-header">加入bootstrap系列图标<br><br>增加程序录，心情窗模块</div>
                            </div>
                        </dd>
                        <dd class="pos-left clearfix">
                            <div class="circ"></div>
                            <div class="time">3月19日</div>
                            <div class="events">
                                <div class="events-header">添加留言板以及文章留言功能</div>
                            </div>
                        </dd>
                        <dd class="pos-right clearfix">
                            <div class="circ"></div>
                            <div class="time">3月20日</div>
                            <div class="events">
                                <div class="events-header">添加当行蓝上滚出现下滚消失特效<br><br>增加留言板评论回复邮件提醒功能</div>
                            </div>
                        </dd>
                        <dd class="pos-left clearfix">
                            <div class="circ"></div>
                            <div class="time">3月21日</div>
                            <div class="events">
                                <div class="events-header">添加更新页面</div>
                            </div>
                        </dd>
                    </dl>
                </div>
            </div>

<div style="margin-top: 50px"></div>
<jsp:include page="../../footer.jsp"></jsp:include>
<script  type="text/javascript"  src="https://npmcdn.com/headroom.js@0.9.4/dist/headroom.js"></script>

<script  type="text/javascript"  src="${pageContext.request.contextPath}/static/js/main.js"></script>

<script type="text/javascript" src="${pageContext.request.contextPath}/static/timeline/js/jquery.eeyellow.Timeline.js"></script>
<script type="text/javascript">
    $(document).ready(function(){
        $('.VivaTimeline').vivaTimeline({
            carousel: true,
            carouselTime: 3000
        });
    });
</script>
</body>
</html>