/**
 * Created by guolei on 2017/8/19.
 */

$(function () {
    //var val = $('#attachment').val();
    //alert(val)
    // 全屏控件
    $('#dowebok').fullpage({
        sectionsColor: [],
        navigation: true,
        continuousVertical: true, // 是否循环滚动
        scrollingSpeed: 500,
        keyboardScrolling:false //支持键盘
    });

    //setInterval(function () {
    //    $.fn.fullpage.moveSectionDown();
    //}, 500);

    // 滑动处理监听
    var mybody = document.getElementsByTagName('body')[0];

    var h = document.documentElement.clientHeight;

    mybody.style.height = h + 'px';


    var startX, startY, moveEndX, moveEndY, X, Y;

    mybody.addEventListener('touchstart', function (e) {

        //e.preventDefault();

        startX = e.touches[0].pageX;

        startY = e.touches[0].pageY;

    }, false);

    mybody.addEventListener('touchmove', function (e) {

        e.preventDefault();
        moveEndX = e.changedTouches[0].pageX;
        moveEndY = e.changedTouches[0].pageY;
        X = moveEndX - startX;
        Y = moveEndY - startY;
        if (Math.abs(X) > Math.abs(Y) && X > 0) {
            var next = $('#next').val();
            console.log(next);
            if(next > 0){
                window.location.href = ModuleName+'/posts/details?id='+next;
            }else{
                window.location.href = ModuleName;
            }
            console.log("向右");
        }
        else if (Math.abs(X) > Math.abs(Y) && X < 0) {
            var previous = $('#previous').val();
            console.log(previous);
            if(previous > 0){
                window.location.href = ModuleName+'/posts/details?id='+previous;
            }else{
                window.location.href = ModuleName;
            }
            console.log("向左");
        }
        else if (Math.abs(Y) > Math.abs(X) && Y > 0) {
            console.log("向下");
        }
        else if (Math.abs(Y) > Math.abs(X) && Y < 0) {
            console.log("向上");
        }
    });
});


// 点击切换
$(function () {
    $(".sly").hover(function () {
        $(".sly ul").fadeIn(500);
    }, function () {
        $(".sly ul").fadeOut(500);
    })


    $(".cfix li").click(function () {

        $(".big li img").each(function (i) {
            $(".big li img").eq(i).css("margin-top", "-" + $(".big li img").eq(i).height() / 2 + "px");
        });


        $("#loadings").show();

        var imgurl = $(this).attr("data-img");

        imgReady(imgurl, function () {
            //$("#loadings").hide();
            setTimeout('$("#loadings").hide()', 2000);
            //alert('width:' + this.width + 'height:' + this.height);
            console.log(1)

            $(".indexlink").css({"background-image": "url(" + imgurl + ")"});
        });

        $(".indexlink").attr("href", $(this).attr("data-src"));

    })


})


var imgReady = (function () {
    var list = [],
        intervalId = null;
    console.log(1)
    console.log(list)
    // 用来执行队列
    var queue = function () {

        for (var i = 0; i < list.length; i++) {
            list[i].end ? list.splice(i--, 1) : list[i]();
        }
        !list.length && stop();
    };

    // 停止所有定时器队列
    var stop = function () {
        clearInterval(intervalId);
        intervalId = null;
    }
    return function (url, ready, error) {
        var onready = {},
            width,
            height,
            newWidth,
            newHeight,
            img = new Image();
        img.src = url;

        // 如果图片被缓存，则直接返回缓存数据
        if (img.complete) {
            ready.call(img);
            return;
        }
        width = img.width;
        height = img.height;

        // 加载错误后的事件
        img.onerror = function () {
            error && error.call(img);
            onready.end = true;
            img = img.onload = img.onerror = null;
        };

        // 图片尺寸就绪
        var onready = function () {
            newWidth = img.width;
            newHeight = img.height;
            if (newWidth !== width || newHeight !== height ||
                    // 如果图片已经在其他地方加载可使用面积检测
                newWidth * newHeight > 1024
            ) {
                ready.call(img);
                onready.end = true;
            }
            ;
        };
        onready();
        // 完全加载完毕的事件
        img.onload = function () {
            // onload在定时器时间差范围内可能比onready快
            // 这里进行检查并保证onready优先执行
            !onready.end && onready();
            // IE gif动画会循环执行onload，置空onload即可
            img = img.onload = img.onerror = null;
        };


        // 加入队列中定期执行
        if (!onready.end) {
            list.push(onready);
            // 无论何时只允许出现一个定时器，减少浏览器性能损耗
            if (intervalId === null) {
                intervalId = setInterval(queue, 40);
            }
            ;
        }
        ;
    }
})();


function loadingimg() {

    $(".big li img").each(function (i) {
        $(".big li img").eq(i).css("margin-top", "-" + $(".big li img").eq(i).height() / 2 + "px");
    });
}

