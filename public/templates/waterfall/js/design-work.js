$(document).ready(function() {
	var containerWidth = $("#work-dir").width();
	$("#work-dir").masonry({
		itemSelector : ".project-item",
		columnWidth : function( containerWidth ) {

			return containerWidth / 4;
		},
		 // isFitWidth : false,		 
		 isAnimated : false
		// percentPosition: true
		// gutter:200
	});

	// imagesloaded
	var imgsL = new imagesLoaded($("#work-dir"));
	imgsL.on("progress", function(){
		$("#work-dir").masonry();
	});

	// zapalam na starcie;
	$(".project-item").each(function() {
		var el = $(this);
		var del = el.index() * 0.05 + 0.2;
		TweenLite.to(el, 0.6, {css: {alpha : 1}, delay: del});
		// IE hack
		if (IEBrowser())
			el.height(el.height() - 3);
	});
	// click on project item
	$(".project-item:not(.video-item, .partner-item)").click( function() {
		document.location = $(this).find('.info').data("url");
		return false;
	});
	// click on video item (MEDIA)
	$(".project-item.video-item .info").click( function() {
		// console.info($(this).data("videoid"));
		popup($(this).data("videoid"), $(this).hasClass("youtube"));
		return false;
	});
	// click on partner
	$(".partner-item").click(function() {
		// console.info("click partner");
		if (window.innerWidth >= 992) {
			popupPartner($(this));
		} else {
			document.location = $(this).find('.info').data("url");
		}			
		return false;
	});
// console.log($("#work-dir").masonry())

	$(".project-item").hover( function() {
		if (window.innerWidth < 768) {
			return;
		}
		var el = $(this).find(".info");
		TweenLite.killTweensOf(el);
		TweenLite.to(el, 0.6, {css: {alpha : 1}, delay: 0.1});
		el = el.find(".inner");
		var infoY = $(this).height() / 2 - el.height() / 2;
		TweenLite.killTweensOf(el);
		TweenLite.to(el, 0.4, {css: {paddingTop: infoY + "px"}, ease:Expo.easeOut});
		
		el = $(this).find(".ceils");
		TweenLite.killTweensOf(el);
		TweenLite.to(el, 0.4, {css: {alpha: 0.3}});

	}, function() {
		if (window.innerWidth <= 768) {
			return;
		}
		var el = $(this).find(".info");
		TweenLite.killTweensOf(el);
		TweenLite.to(el, 0.7, {css: {alpha : 0}});

		el = el.find(".inner");
		var infoY = $(this).height() / 2 - el.height() / 2 + 50;
		TweenLite.killTweensOf(el);
		TweenLite.to(el, 0.25, {css: {paddingTop: infoY + "px"}, ease:Expo.easeIn});

		el = $(this).find(".ceils");
		TweenLite.killTweensOf(el);
		TweenLite.to(el, 0.4, {css: {alpha: 1}});

	});

	// Gutter Hack
	$("#main img").each(function() {
		$(this).one('load', function() {
			// gutter hack
			// console.info("format image, complete? " + $(this).prop("complete") + " h: " + $(this).height());
			formatImage($(this));
		});
		if (this.complete){
			// console.info("image complete");
			$(this).load();	
		} 

	});

	// *** window resize gutter hack
	// var initialResize = true;
	$(window).resize( function() {
		$(".project-item").each(function() {
			$(this).height("auto");
			if (IEBrowser())
				$(this).height($(this).height() - 3);
		});
		$(".project-item-img").each(function() {
			$(this).height("auto");
		});
		$(".project-item-img").each(function() {
			$(this).find("img").height("auto");
			// formatImage($(this).find("img"));
		});
		// tmp HACK
		$small = $(".project-item:not(.large,.vertical,.horizontal,.transverse)");
		if (!$small.length)
			return;

		var h = $small.height();

		$(".project-item.large .project-item-img img, .project-item.vertical .project-item-img img").each(function() {
			$(this).height(h*2);
		});
		var w = $small.width();
		$(".project-item.transverse .project-item-img img").each(function() {
			$(this).width(w*2);
			$(this).height(h);
		});

		if (IEBrowser()) {
		
			$(".project-item.large .project-item-img, .project-item.vertical .project-item-img").each(function() {
				$(this).height(h*2);
			});
			$(".project-item.large, .project-item.vertical").each(function() {
				$(this).height(h*2);
			});

		}

	});

	var waitForFinalEvent = (function () {
	  var timers = {};
	  return function (callback, ms, uniqueId) {
		if (!uniqueId) {
		  uniqueId = "Don't call this twice without a uniqueId";
		}
		if (timers[uniqueId]) {
			clearTimeout (timers[uniqueId]);
		}
		timers[uniqueId] = setTimeout(callback, ms);
	  };
	})();	
	function formatImage(img) {
		// var w = img.width();
		// var h = img.height();
		// h = h/100.2 * 100;
		// // ustawiam wysokość elementu
		// var it = $("#work-dir").find(".project-item-img[data-id='" + img.data("id") + "']");
		// it.height(Math.round(h));
		// if (img.hasClass("large")) {
		// 	img.height(h);
		// }
	}

	$(window).load( function () {		
		$(window).resize();
	});

});




