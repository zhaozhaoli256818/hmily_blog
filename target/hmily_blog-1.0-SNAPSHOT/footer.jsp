<%--
  Created by IntelliJ IDEA.
  User: zhaoli
  Date: 2020/3/4
  Time: 上午11:51
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="zh-CN">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>页面底部</title>

    <link href="${pageContext.request.contextPath}/static/css/bootstrap.min.css" rel="stylesheet">

    <script src="https://cdn.jsdelivr.net/npm/html5shiv@3.7.3/dist/html5shiv.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/respond.js@1.4.2/dest/respond.min.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/static/js/canvas-nest.js"></script>

    <!-- jQuery (Bootstrap 的所有 JavaScript 插件都依赖 jQuery，所以必须放在前边) -->
    <script src="${pageContext.request.contextPath}/static/js/jquery-1.11.3.min.js"></script>
    <!-- 加载 Bootstrap 的所有 JavaScript 插件。你也可以根据需要只加载单个插件。 -->
    <script src="${pageContext.request.contextPath}/static/js/bootstrap.js"></script>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/font-awesome/css/font-awesome.min.css">
    <script src="https://cdn.jsdelivr.net/gh/stevenjoezhang/live2d-widget@latest/autoload.js"></script>
</head>
<body>
            <hr>

            <div align="center">
                &nbsp;&nbsp;&nbsp;    © 2020 - 2021  ❤️ 赵力 版权所有
                <br>
                <span  style="display: inline;">&nbsp;&nbsp;&nbsp; 总访问量 <span >5553</span> 次 </span>
                <span  style="display: inline;">| 总访客数 <span >1962</span> 人 </span>
                <p style="text-align: center; line-height: 20px;margin: 0">
                    我的博客已经运行&nbsp;&nbsp;<span id="clock"></span>&nbsp;&nbsp;啦！<br>
                </p>
                <script type="text/javascript">
                    /* 尾部定时 */
                    var int = self.setInterval("clock()", 1000);

                    function clock() {
                        var nowDay = new Date();
                        var localDay = new Date("2020-03-03 00:00:00");
                        var time = parseInt((nowDay.getTime() - localDay.getTime()) / 1000);
                        var min = parseInt(time / 60);
                        var hour = parseInt(time / 60 / 60);
                        var day = parseInt(time / 60 / 60 / 24);

                        var runTime = "0";
                        if (min == 0) {
                            runTime = time + "秒";
                        } else if (hour == 0) {
                            runTime = min + "分" + (time - min * 60) + "秒";
                        } else if (day == 0) {
                            var mh = min - hour * 60;
                            runTime = hour + "时" + mh + "分" + (time - hour * 3600 - mh * 60) + "秒"
                        } else {
                            var hd = hour - day * 24;
                            var mh = min - day * 24 * 60 - hd * 60;
                            runTime = day + "天" + hd + "时" + mh + "分" + (time - day * 24 * 3600 - hd * 3600 - mh * 60) + "秒";
                        }

                        document.getElementById('clock').innerHTML = runTime;
                    }
                </script>
                <script src="https://www.lwjppz.cn/upload/2020/2/caidai-5e8e10ce0efc4886838a9ea8c5e1153a.js"></script>
                <script src="https://www.lwjppz.cn/upload/2020/2/dianji-1a07321c18b640deafcb13f4cb635307.js"></script>
                <p></p>
            </div>

    </div>
</body>
</html>
