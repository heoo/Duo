$(function () {
        /* 鼠标滚轮事件 */
        $(window).on('mousewheel',function(event, delta) {
            if(event.deltaY>0){
                $(".cpre").click();
            }else{
                $(".cnext").click();
            }
        });

        var sWidth = $("#dowebok").width();
        var len = $("#dowebok ul li").length;
        var index = 0;
        var picTimer;

        console.log($('#count').val());
        if($('#count').val() > 1){
            var btn = "<div class='btnBg'></div><div class='btn'>";
            for (var i = 0; i < len; i++) {
                btn += "<span></span>";
            }
            btn += "</div><div class='preNext cpre'></div><div class='preNext cnext'></div>";
            $("#dowebok").append(btn);
        }

        $("#dowebok .btnBg").css("opacity", 0);
        $("#dowebok .btn span").css("opacity", 0.4).mouseenter(function () {
            index = $("#dowebok .btn span").index(this);
            showPics(index);
        }).eq(0).trigger("mouseenter");

        //$("#focus .preNext").css("opacity", 0.0).hover(function () {
        //    $(this).stop(true, false).animate({ "opacity": "0.5" }, 300);
        //}, function () {
        //    $(this).stop(true, false).animate({ "opacity": "0" }, 300);
        //});

        $("#dowebok .cpre").click(function () {

            index -= 1;
            if (index == -1) { index = len - 1; }
            showPics(index);
        });
        $("#dowebok .cnext").click(function () {
            index += 1;
            if (index == len) { index = 0; }
            showPics(index);
        });
        $("#dowebok ul").css("width", sWidth * (len));
        $("#dowebok ul li").css("width", sWidth);

        $("#focus").hover(function () {
            clearInterval(picTimer);
        }, function () {
            picTimer = setInterval(function () {
                showPics(index);
                index++;
                if (index == len) { index = 0; }
            }, 2800);
        }).trigger("mouseleave");

        function showPics(index) {
            var nowLeft = -index * sWidth;
            $("#dowebok ul").stop(true, false).animate({ "left": nowLeft }, 300);
            $("#dowebok .btn span").stop(true, false).animate({ "opacity": "0.4" }, 300).eq(index).stop(true, false).animate({ "opacity": "1" }, 300);
        }

});