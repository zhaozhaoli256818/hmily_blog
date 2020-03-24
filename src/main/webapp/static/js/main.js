//导航栏下滑消失，上滑出现
window.onload = function () {
    const header = document.querySelector(".navbar-fixed-top");

    const headroom = new Headroom(header);
    headroom.init();
}

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


