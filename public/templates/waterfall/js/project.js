$(function () {
    $('.project-item').mousemove(function (e) {
        var current = $(this).find(' img');

        var width = current.css('width');
        var height = current.css('height');

        var ave = parseInt(width,10) / 6;
        var lefMargin = ave * 1;
        var rightMargin = ave * 5;

        var offset = $(this).offset();
        var relativeX = (e.pageX - offset.left);
        var relativeY = (e.pageY - offset.top);
        var eleId = current.attr('id');
        var cLeft = relativeX < lefMargin ? true : false
        var cRight = relativeX > rightMargin ? true : false


        if( cLeft || cRight ){
            $('.top').show();
            $('.g_pn_box').fadeIn('slow');
            $('.g_pn_box').css({"height":height ,"width":ave ,"top":offset.top});

            $('.label').removeAttr('style')
            if(cLeft){
                $('.label').css({ "left": 0});
                $('.avia-post-prev').attr('value',eleId)
                $('.avia-post-prev').css({ "margin-left": offset.left });
                $('.avia-post-next').hide()

            }else {
                $('.label').css({ "right": 0});
                $('.avia-post-next').attr('value',eleId)
                $('.avia-post-next').css({"left":offset.left+rightMargin});
                $('.avia-post-prev').hide()
            }

        }else {
            $('.g_pn_box').fadeOut('slow');
            $('.top').hide();
        }
    })

    // $('body').css({'width':$(window).width()})
    // $('.loadings').css({'width':$(window).width()});
    // $('.logo').css({'top':$(window).height()/3,'left':$(window).width()/3});

    var p=0,t=0;
    $(window).scroll(function(e){

        p = $(this).scrollTop();
        // console.log(p)
        if(t<=p && p >$(window).height()/3){
            $('.logo').fadeOut('slow');
        }else {
            $('.logo').fadeIn('slow');
        }
        setTimeout(function(){t = p;},0);
    });
})

var i = 0;
function prevImg(Obj) {
    i--;
    var Id = $(Obj).attr('value')
    var img = $('#'+Id).data('options')
    if(i<0){
        i = img.length - 1
    }
    $('#'+Id).attr('src',img[i])
}

function nextImg(Obj) {
    i++;
    var Id = $(Obj).attr('value')
    var Id = $(Obj).attr('value')
    var img = $('#'+Id).data('options')
    if(i >= img.length){
        i = 0;
    }
    $('#'+Id).attr('src',img[i])
}
