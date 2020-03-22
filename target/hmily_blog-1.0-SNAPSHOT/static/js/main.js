//导航栏下滑消失，上滑出现
window.onload = function () {
    const header = document.querySelector(".navbar-fixed-top");

    const headroom = new Headroom(header);
    headroom.init();
}



