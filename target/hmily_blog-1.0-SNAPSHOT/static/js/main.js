
/* 头像当鼠标经过时转动 */
var shine = new Shine(document.getElementById('circleImg'));

function handleMouseMove(event) {
    shine.light.position.x = event.clientX;
    shine.light.position.y = event.clientY;
    shine.draw();
}

window.addEventListener('mousemove', handleMouseMove, false);

/* 名片随页面滚动 */
window.onload= function() {
    $('body').addClass('loaded');

    var oDiv = document.getElementById("main-right-div"),
        H = 0,
        Y = oDiv;
    while (Y) {
        H += Y.offsetTop;
        Y = Y.offsetParent;
    }
    window.onscroll = function () {
        var s = document.body.scrollTop || document.documentElement.scrollTop;
        if (s > H - 50) {
            oDiv.style = "position:fixed;top:50px;";
        } else {
            oDiv.style = "";
        }
    }
}





