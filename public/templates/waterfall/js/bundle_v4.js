!function(t){function e(i){if(n[i])return n[i].exports;var o=n[i]={exports:{},id:i,loaded:!1};return t[i].call(o.exports,o,o.exports,e),o.loaded=!0,o.exports}var n={};return e.m=t,e.c=n,e.p="",e(0)}([function(t,e,n){"use strict";function i(t){return t&&t.__esModule?t:{default:t}}n(7);var o=n(4),r=i(o),s=n(3),a=i(s),c=n(2),u=i(c),l=n(5),h=n(6);$(function(){r.default.init(),a.default.init(),u.default.init(),(0,l.initCookieTerms)(),(0,h.initModal)()})},function(t,e){"use strict";Object.defineProperty(e,"__esModule",{value:!0});var n=(e.trace=function(){var t;(t=console).info.apply(t,arguments)},e.scrollToPos=function(t){var e=arguments.length>1&&void 0!==arguments[1]?arguments[1]:800,n=arguments.length>2&&void 0!==arguments[2]?arguments[2]:null,i=$("html, body");i.animate({scrollTop:t},e,function(){$.isFunction(n)&&n()})}),i=e.scrollTo=function(t){var e=arguments.length>1&&void 0!==arguments[1]?arguments[1]:0,i=arguments.length>2&&void 0!==arguments[2]?arguments[2]:800,o=arguments.length>3&&void 0!==arguments[3]?arguments[3]:null;if(!t.length)return!1;var r=t.offset().top-e;n(r,i,o)};e.mobilecheck=function(){var t=!1;return function(e){(/(android|ipad|playbook|silk|bb\d+|meego).+mobile|avantgo|bada\/|blackberry|blazer|compal|elaine|fennec|hiptop|iemobile|ip(hone|od)|iris|kindle|lge |maemo|midp|mmp|netfront|opera m(ob|in)i|palm( os)?|phone|p(ixi|re)\/|plucker|pocket|psp|series(4|6)0|symbian|treo|up\.(browser|link)|vodafone|wap|windows (ce|phone)|xda|xiino/i.test(e)||/1207|6310|6590|3gso|4thp|50[1-6]i|770s|802s|a wa|abac|ac(er|oo|s\-)|ai(ko|rn)|al(av|ca|co)|amoi|an(ex|ny|yw)|aptu|ar(ch|go)|as(te|us)|attw|au(di|\-m|r |s )|avan|be(ck|ll|nq)|bi(lb|rd)|bl(ac|az)|br(e|v)w|bumb|bw\-(n|u)|c55\/|capi|ccwa|cdm\-|cell|chtm|cldc|cmd\-|co(mp|nd)|craw|da(it|ll|ng)|dbte|dc\-s|devi|dica|dmob|do(c|p)o|ds(12|\-d)|el(49|ai)|em(l2|ul)|er(ic|k0)|esl8|ez([4-7]0|os|wa|ze)|fetc|fly(\-|_)|g1 u|g560|gene|gf\-5|g\-mo|go(\.w|od)|gr(ad|un)|haie|hcit|hd\-(m|p|t)|hei\-|hi(pt|ta)|hp( i|ip)|hs\-c|ht(c(\-| |_|a|g|p|s|t)|tp)|hu(aw|tc)|i\-(20|go|ma)|i230|iac( |\-|\/)|ibro|idea|ig01|ikom|im1k|inno|ipaq|iris|ja(t|v)a|jbro|jemu|jigs|kddi|keji|kgt( |\/)|klon|kpt |kwc\-|kyo(c|k)|le(no|xi)|lg( g|\/(k|l|u)|50|54|\-[a-w])|libw|lynx|m1\-w|m3ga|m50\/|ma(te|ui|xo)|mc(01|21|ca)|m\-cr|me(rc|ri)|mi(o8|oa|ts)|mmef|mo(01|02|bi|de|do|t(\-| |o|v)|zz)|mt(50|p1|v )|mwbp|mywa|n10[0-2]|n20[2-3]|n30(0|2)|n50(0|2|5)|n7(0(0|1)|10)|ne((c|m)\-|on|tf|wf|wg|wt)|nok(6|i)|nzph|o2im|op(ti|wv)|oran|owg1|p800|pan(a|d|t)|pdxg|pg(13|\-([1-8]|c))|phil|pire|pl(ay|uc)|pn\-2|po(ck|rt|se)|prox|psio|pt\-g|qa\-a|qc(07|12|21|32|60|\-[2-7]|i\-)|qtek|r380|r600|raks|rim9|ro(ve|zo)|s55\/|sa(ge|ma|mm|ms|ny|va)|sc(01|h\-|oo|p\-)|sdk\/|se(c(\-|0|1)|47|mc|nd|ri)|sgh\-|shar|sie(\-|m)|sk\-0|sl(45|id)|sm(al|ar|b3|it|t5)|so(ft|ny)|sp(01|h\-|v\-|v )|sy(01|mb)|t2(18|50)|t6(00|10|18)|ta(gt|lk)|tcl\-|tdg\-|tel(i|m)|tim\-|t\-mo|to(pl|sh)|ts(70|m\-|m3|m5)|tx\-9|up(\.b|g1|si)|utst|v400|v750|veri|vi(rg|te)|vk(40|5[0-3]|\-v)|vm40|voda|vulc|vx(52|53|60|61|70|80|81|83|85|98)|w3c(\-| )|webc|whit|wi(g |nc|nw)|wmlb|wonu|x700|yas\-|your|zeto|zte\-/i.test(e.substr(0,4)))&&(t=!0)}(navigator.userAgent||navigator.vendor||window.opera),t},e.UiHelpers={initCollapseButtonLabel:function(){$("body").on("shown.bs.collapse hidden.bs.collapse",".collapse",function(t){var e=$(t.target),n=e.attr("id"),i=$('a[href="#'+n+'"]');if(i.length){var o=i.data("labelcollapsed"),r=i.data("labelexpanded");o&&r&&(e.hasClass("in")?i.html(r):i.html(o))}})},initFormInputAutofocus:function(){$("input.autofocus").focus()},initScrollTo:function(){$("body").on("click",".scroll-to",function(t){var e=$(t.currentTarget),n=e.attr("href");if(n){var o=$(n);if(o.length){t.preventDefault();var r=130;e.data("offset")&&(r=e.data("offset")),i(o,r)}}})},initScrollToCollapse:function(){$("body").on("shown.bs.collapse",".collapse",function(t){var e=$(t.target);e.height()>400&&i(e,130)})},init:function(){this.initCollapseButtonLabel(),this.initFormInputAutofocus(),this.initScrollTo(),this.initScrollToCollapse()}}},function(t,e,n){"use strict";function i(t,e){if(!(t instanceof e))throw new TypeError("Cannot call a class as a function")}Object.defineProperty(e,"__esModule",{value:!0});var o=function(){function t(t,e){for(var n=0;n<e.length;n++){var i=e[n];i.enumerable=i.enumerable||!1,i.configurable=!0,"value"in i&&(i.writable=!0),Object.defineProperty(t,i.key,i)}}return function(e,n,i){return n&&t(e.prototype,n),i&&t(e,i),e}}(),r=n(1),s=function(){function t(){i(this,t),this.isLoading=!1,this.wrapperSelector=!1}return o(t,[{key:"getFreshContentFromResult",value:function(t,e){var n=document.createElement("html");n.innerHTML="<body>"+t+"</body>";var i=$(n).find("body");return i.find(e)}},{key:"handleResult",value:function(t){var e=this.getFreshContentFromResult(t,this.wrapperSelector),n=this.$wrapper.find(".masonry"),i=e.find(".more-news-btn"),o=this.$wrapper.find(".more-news-btn");i.length?o.attr("href",i.attr("href")):o.css("display","none");var r=e.find(".art-list");n.append(r).masonry("appended",r);var s=new imagesLoaded($(".press-dir"));s.on("progress",function(){$(".press-dir").masonry()}),this.isLoading=!1}},{key:"onMoreNewsBtnClick",value:function(t){var e=this;if(t.preventDefault(),this.isLoading)return!1;this.isLoading=!0;var n=$(t.currentTarget),i=n.attr("href");return this.wrapperSelector=n.data("wrapper-selector"),!(!this.wrapperSelector||!i)&&(this.$wrapper=$(this.wrapperSelector),!!this.$wrapper.length&&((0,r.trace)("more news btn click",i),void $.get(i,{},function(t){t?e.handleResult(t):(0,r.trace)("Ajax - GET",i,"returned no result")})))}},{key:"addEventListeners",value:function(){$("body").on("click",".more-news-btn",$.proxy(this.onMoreNewsBtnClick,this))}},{key:"init",value:function(){this.addEventListeners()}}]),t}(),a=new s;e.default=a},function(t,e,n){"use strict";function i(t){return t&&t.__esModule?t:{default:t}}function o(t,e){if(!(t instanceof e))throw new TypeError("Cannot call a class as a function")}Object.defineProperty(e,"__esModule",{value:!0});var r=function(){function t(t,e){for(var n=0;n<e.length;n++){var i=e[n];i.enumerable=i.enumerable||!1,i.configurable=!0,"value"in i&&(i.writable=!0),Object.defineProperty(t,i.key,i)}}return function(e,n,i){return n&&t(e.prototype,n),i&&t(e,i),e}}(),s=n(1),a=n(8),c=i(a),u=function(){function t(){o(this,t)}return r(t,[{key:"onWindowResize",value:function(t){if($(".elastic-slider-container ul").length){var e=$("#box_header").outerHeight(),n=window.innerHeight-e;window.innerWidth<768&&$("body").hasClass("type-design_project")&&(n=.66*window.innerWidth);var i=$(".elastic-slider-container ul");"project-gallery"!=i.attr("id")&&(i.css("height",n+"px"),i.find("li").css("height",n+"px"),i.find("li img").css("height","100%"),i.find("li img").css("width","auto"))}}},{key:"getSwipeNav",value:function(){var t=$(".swipe-m"),e=t.data("nav-selector");if(!e)return!1;var n=$(e);return!!n.length&&n}},{key:"onCarouselSwipeLeft",value:function(t){(0,s.trace)("swipe left");var e=this.getSwipeNav();if(!e)return!1;var n=!1;if(e.each(function(t,e){$(e).hasClass("arrow-next")&&(n=$(e))}),!n){var i=!1,o=!1;e.find("li").each(function(t,e){o&&!n&&(n=$(e)),$(e).hasClass("active")&&(o=!0),i=$(e)}),n||(n=e.find("li").first())}n&&((0,s.trace)("trigger on: ",n),n.trigger("click"),n.attr("href")&&(window.location.href=n.attr("href")))}},{key:"onCarouselSwipeRight",value:function(t){(0,s.trace)("swipe right");var e=this.getSwipeNav();if(!e)return!1;var n=!1;if(e.each(function(t,e){$(e).hasClass("arrow-prev")&&(n=$(e))}),!n){var i=!1,o=!1;e.find("li").each(function(t,e){$(e).hasClass("active")&&(o=!0,n=i),i=$(e)}),n||(n=e.find("li").last())}n&&((0,s.trace)("trigger on: ",n),n.trigger("click"),n.attr("href")&&(window.location.href=n.attr("href")))}},{key:"addEventListeners",value:function(){$(window).on("resize",$.proxy(this.onWindowResize,this));var t=document.getElementsByClassName("swipe-m")[0];t&&((0,c.default)(t).on("swipeleft",$.proxy(this.onCarouselSwipeLeft,this)),(0,c.default)(t).on("swiperight",$.proxy(this.onCarouselSwipeRight,this)))}},{key:"init",value:function(){this.addEventListeners()}}]),t}(),l=new u;e.default=l},function(t,e,n){"use strict";function i(t,e){if(!(t instanceof e))throw new TypeError("Cannot call a class as a function")}Object.defineProperty(e,"__esModule",{value:!0});var o=function(){function t(t,e){for(var n=0;n<e.length;n++){var i=e[n];i.enumerable=i.enumerable||!1,i.configurable=!0,"value"in i&&(i.writable=!0),Object.defineProperty(t,i.key,i)}}return function(e,n,i){return n&&t(e.prototype,n),i&&t(e,i),e}}(),r=n(1),s=function(){function t(){i(this,t)}return o(t,[{key:"onSubmenuOpenClick",value:function(t){t.preventDefault(),$("html").addClass("sub-collapse-open")}},{key:"onSubmenuCloseClick",value:function(t){t.preventDefault(),$("html").removeClass("sub-collapse-open")}},{key:"initSubmenuCollapse",value:function(){(0,r.trace)("init submenu collapse"),$("body").on("click",".sub-10.submenu-collapsed a",$.proxy(this.onSubmenuOpenClick,this)),$("body").on("click","#close-sub-sub",$.proxy(this.onSubmenuCloseClick,this))}},{key:"init",value:function(){$(".sub-10.submenu-collapsed").length&&this.initSubmenuCollapse()}}]),t}(),a=new s;e.default=a},function(t,e){"use strict";Object.defineProperty(e,"__esModule",{value:!0});var n=30,i=(e.initCookieTerms=function(){$("body").on("click",".cookies-accept",o),$("body").on("click",".cookies-deny",i),r()},function(t){t.preventDefault();var e=t.currentTarget,n=e.dataset.cookies;if(n){var i=n.split(",");i.forEach(function(t,e){l(t)})}e.classList.contains("cookies-finalize")?(document.documentElement.classList.add("cookieterms-dismiss"),document.documentElement.classList.remove("modal-open")):e.classList.contains("cookies-deny-all")&&document.documentElement.classList.remove("modal-open"),r()}),o=function(t){t.preventDefault();var e=t.currentTarget,i=e.dataset.cookies;if(i){var o=i.split(",");o.forEach(function(t,e){c(t,"1",n)})}e.classList.contains("cookies-finalize")?(document.documentElement.classList.add("cookieterms-dismiss"),document.documentElement.classList.remove("modal-open")):e.classList.contains("cookies-deny-all")&&document.documentElement.classList.remove("modal-open"),r()},r=function(){var t=document.querySelectorAll(".cookies-accept");t.forEach(s);var e=document.querySelectorAll(".cookies-deny");e.forEach(a)},s=function(t,e){var n=t.dataset.cookies;if(n){var i=n.split(","),o=!0;if(i.forEach(function(t,e){u(t)||(o=!1)}),o){t.classList.add("active");var r=t.parentNode.querySelector(".cookies-deny");r&&r.classList.remove("active")}}},a=function(t,e){var n=t.dataset.cookies;if(n){var i=n.split(","),o=!0;if(i.forEach(function(t,e){u(t)&&(o=!1)}),o){t.classList.add("active");var r=t.parentNode.querySelector(".cookies-accept");r&&r.classList.remove("active")}}},c=function(t,e,n){if(n){var i=new Date;i.setTime(i.getTime()+24*n*60*60*1e3);var o="; expires="+i.toGMTString()}else var o="";document.cookie=t+"="+e+o+"; path=/"},u=function(t){for(var e=t+"=",n=document.cookie.split(";"),i=0;i<n.length;i++){for(var o=n[i];" "==o.charAt(0);)o=o.substring(1,o.length);if(0==o.indexOf(e))return o.substring(e.length,o.length)}return null},l=function(t){c(t,"",-1)}},function(t,e){"use strict";Object.defineProperty(e,"__esModule",{value:!0});var n=function(t){t.preventDefault(),document.documentElement.classList.toggle("modal-open")},i=function(t){t.preventDefault(),document.documentElement.classList.remove("modal-open")};e.initModal=function(){$("body").on("click",'[data-toggle="modal"]',n),$("body").on("click",".modal .modal-close-btn, .modal-backdrop",i)}},function(t,e){},function(t,e,n){var i;/*! Hammer.JS - v2.0.7 - 2016-04-22
	 * http://hammerjs.github.io/
	 *
	 * Copyright (c) 2016 Jorik Tangelder;
	 * Licensed under the MIT license */
!function(o,r,s,a){"use strict";function c(t,e,n){return setTimeout(f(t,n),e)}function u(t,e,n){return!!Array.isArray(t)&&(l(t,n[e],n),!0)}function l(t,e,n){var i;if(t)if(t.forEach)t.forEach(e,n);else if(t.length!==a)for(i=0;i<t.length;)e.call(n,t[i],i,t),i++;else for(i in t)t.hasOwnProperty(i)&&e.call(n,t[i],i,t)}function h(t,e,n){var i="DEPRECATED METHOD: "+e+"\n"+n+" AT \n";return function(){var e=new Error("get-stack-trace"),n=e&&e.stack?e.stack.replace(/^[^\(]+?[\n$]/gm,"").replace(/^\s+at\s+/gm,"").replace(/^Object.<anonymous>\s*\(/gm,"{anonymous}()@"):"Unknown Stack Trace",r=o.console&&(o.console.warn||o.console.log);return r&&r.call(o.console,i,n),t.apply(this,arguments)}}function p(t,e,n){var i,o=e.prototype;i=t.prototype=Object.create(o),i.constructor=t,i._super=o,n&&vt(i,n)}function f(t,e){return function(){return t.apply(e,arguments)}}function d(t,e){return typeof t==yt?t.apply(e?e[0]||a:a,e):t}function v(t,e){return t===a?e:t}function m(t,e,n){l(b(e),function(e){t.addEventListener(e,n,!1)})}function g(t,e,n){l(b(e),function(e){t.removeEventListener(e,n,!1)})}function y(t,e){for(;t;){if(t==e)return!0;t=t.parentNode}return!1}function T(t,e){return t.indexOf(e)>-1}function b(t){return t.trim().split(/\s+/g)}function w(t,e,n){if(t.indexOf&&!n)return t.indexOf(e);for(var i=0;i<t.length;){if(n&&t[i][n]==e||!n&&t[i]===e)return i;i++}return-1}function E(t){return Array.prototype.slice.call(t,0)}function k(t,e,n){for(var i=[],o=[],r=0;r<t.length;){var s=e?t[r][e]:t[r];w(o,s)<0&&i.push(t[r]),o[r]=s,r++}return n&&(i=e?i.sort(function(t,n){return t[e]>n[e]}):i.sort()),i}function C(t,e){for(var n,i,o=e[0].toUpperCase()+e.slice(1),r=0;r<mt.length;){if(n=mt[r],i=n?n+o:e,i in t)return i;r++}return a}function S(){return Ct++}function x(t){var e=t.ownerDocument||t;return e.defaultView||e.parentWindow||o}function _(t,e){var n=this;this.manager=t,this.callback=e,this.element=t.element,this.target=t.options.inputTarget,this.domHandler=function(e){d(t.options.enable,[t])&&n.handler(e)},this.init()}function $(t){var e,n=t.options.inputClass;return new(e=n?n:_t?X:$t?H:xt?V:q)(t,A)}function A(t,e,n){var i=n.pointers.length,o=n.changedPointers.length,r=e&zt&&i-o===0,s=e&(Ot|Rt)&&i-o===0;n.isFirst=!!r,n.isFinal=!!s,r&&(t.session={}),n.eventType=e,I(t,n),t.emit("hammer.input",n),t.recognize(n),t.session.prevInput=n}function I(t,e){var n=t.session,i=e.pointers,o=i.length;n.firstInput||(n.firstInput=L(e)),o>1&&!n.firstMultiple?n.firstMultiple=L(e):1===o&&(n.firstMultiple=!1);var r=n.firstInput,s=n.firstMultiple,a=s?s.center:r.center,c=e.center=z(i);e.timeStamp=wt(),e.deltaTime=e.timeStamp-r.timeStamp,e.angle=N(a,c),e.distance=R(a,c),P(n,e),e.offsetDirection=O(e.deltaX,e.deltaY);var u=M(e.deltaTime,e.deltaX,e.deltaY);e.overallVelocityX=u.x,e.overallVelocityY=u.y,e.overallVelocity=bt(u.x)>bt(u.y)?u.x:u.y,e.scale=s?j(s.pointers,i):1,e.rotation=s?F(s.pointers,i):0,e.maxPointers=n.prevInput?e.pointers.length>n.prevInput.maxPointers?e.pointers.length:n.prevInput.maxPointers:e.pointers.length,D(n,e);var l=t.element;y(e.srcEvent.target,l)&&(l=e.srcEvent.target),e.target=l}function P(t,e){var n=e.center,i=t.offsetDelta||{},o=t.prevDelta||{},r=t.prevInput||{};e.eventType!==zt&&r.eventType!==Ot||(o=t.prevDelta={x:r.deltaX||0,y:r.deltaY||0},i=t.offsetDelta={x:n.x,y:n.y}),e.deltaX=o.x+(n.x-i.x),e.deltaY=o.y+(n.y-i.y)}function D(t,e){var n,i,o,r,s=t.lastInterval||e,c=e.timeStamp-s.timeStamp;if(e.eventType!=Rt&&(c>Lt||s.velocity===a)){var u=e.deltaX-s.deltaX,l=e.deltaY-s.deltaY,h=M(c,u,l);i=h.x,o=h.y,n=bt(h.x)>bt(h.y)?h.x:h.y,r=O(u,l),t.lastInterval=e}else n=s.velocity,i=s.velocityX,o=s.velocityY,r=s.direction;e.velocity=n,e.velocityX=i,e.velocityY=o,e.direction=r}function L(t){for(var e=[],n=0;n<t.pointers.length;)e[n]={clientX:Tt(t.pointers[n].clientX),clientY:Tt(t.pointers[n].clientY)},n++;return{timeStamp:wt(),pointers:e,center:z(e),deltaX:t.deltaX,deltaY:t.deltaY}}function z(t){var e=t.length;if(1===e)return{x:Tt(t[0].clientX),y:Tt(t[0].clientY)};for(var n=0,i=0,o=0;o<e;)n+=t[o].clientX,i+=t[o].clientY,o++;return{x:Tt(n/e),y:Tt(i/e)}}function M(t,e,n){return{x:e/t||0,y:n/t||0}}function O(t,e){return t===e?Nt:bt(t)>=bt(e)?t<0?Ft:jt:e<0?qt:Xt}function R(t,e,n){n||(n=Ut);var i=e[n[0]]-t[n[0]],o=e[n[1]]-t[n[1]];return Math.sqrt(i*i+o*o)}function N(t,e,n){n||(n=Ut);var i=e[n[0]]-t[n[0]],o=e[n[1]]-t[n[1]];return 180*Math.atan2(o,i)/Math.PI}function F(t,e){return N(e[1],e[0],Vt)+N(t[1],t[0],Vt)}function j(t,e){return R(e[0],e[1],Vt)/R(t[0],t[1],Vt)}function q(){this.evEl=Gt,this.evWin=Zt,this.pressed=!1,_.apply(this,arguments)}function X(){this.evEl=Qt,this.evWin=te,_.apply(this,arguments),this.store=this.manager.session.pointerEvents=[]}function Y(){this.evTarget=ne,this.evWin=ie,this.started=!1,_.apply(this,arguments)}function W(t,e){var n=E(t.touches),i=E(t.changedTouches);return e&(Ot|Rt)&&(n=k(n.concat(i),"identifier",!0)),[n,i]}function H(){this.evTarget=re,this.targetIds={},_.apply(this,arguments)}function U(t,e){var n=E(t.touches),i=this.targetIds;if(e&(zt|Mt)&&1===n.length)return i[n[0].identifier]=!0,[n,n];var o,r,s=E(t.changedTouches),a=[],c=this.target;if(r=n.filter(function(t){return y(t.target,c)}),e===zt)for(o=0;o<r.length;)i[r[o].identifier]=!0,o++;for(o=0;o<s.length;)i[s[o].identifier]&&a.push(s[o]),e&(Ot|Rt)&&delete i[s[o].identifier],o++;return a.length?[k(r.concat(a),"identifier",!0),a]:void 0}function V(){_.apply(this,arguments);var t=f(this.handler,this);this.touch=new H(this.manager,t),this.mouse=new q(this.manager,t),this.primaryTouch=null,this.lastTouches=[]}function B(t,e){t&zt?(this.primaryTouch=e.changedPointers[0].identifier,G.call(this,e)):t&(Ot|Rt)&&G.call(this,e)}function G(t){var e=t.changedPointers[0];if(e.identifier===this.primaryTouch){var n={x:e.clientX,y:e.clientY};this.lastTouches.push(n);var i=this.lastTouches,o=function(){var t=i.indexOf(n);t>-1&&i.splice(t,1)};setTimeout(o,se)}}function Z(t){for(var e=t.srcEvent.clientX,n=t.srcEvent.clientY,i=0;i<this.lastTouches.length;i++){var o=this.lastTouches[i],r=Math.abs(e-o.x),s=Math.abs(n-o.y);if(r<=ae&&s<=ae)return!0}return!1}function J(t,e){this.manager=t,this.set(e)}function K(t){if(T(t,fe))return fe;var e=T(t,de),n=T(t,ve);return e&&n?fe:e||n?e?de:ve:T(t,pe)?pe:he}function Q(){if(!ue)return!1;var t={},e=o.CSS&&o.CSS.supports;return["auto","manipulation","pan-y","pan-x","pan-x pan-y","none"].forEach(function(n){t[n]=!e||o.CSS.supports("touch-action",n)}),t}function tt(t){this.options=vt({},this.defaults,t||{}),this.id=S(),this.manager=null,this.options.enable=v(this.options.enable,!0),this.state=ge,this.simultaneous={},this.requireFail=[]}function et(t){return t&Ee?"cancel":t&be?"end":t&Te?"move":t&ye?"start":""}function nt(t){return t==Xt?"down":t==qt?"up":t==Ft?"left":t==jt?"right":""}function it(t,e){var n=e.manager;return n?n.get(t):t}function ot(){tt.apply(this,arguments)}function rt(){ot.apply(this,arguments),this.pX=null,this.pY=null}function st(){ot.apply(this,arguments)}function at(){tt.apply(this,arguments),this._timer=null,this._input=null}function ct(){ot.apply(this,arguments)}function ut(){ot.apply(this,arguments)}function lt(){tt.apply(this,arguments),this.pTime=!1,this.pCenter=!1,this._timer=null,this._input=null,this.count=0}function ht(t,e){return e=e||{},e.recognizers=v(e.recognizers,ht.defaults.preset),new pt(t,e)}function pt(t,e){this.options=vt({},ht.defaults,e||{}),this.options.inputTarget=this.options.inputTarget||t,this.handlers={},this.session={},this.recognizers=[],this.oldCssProps={},this.element=t,this.input=$(this),this.touchAction=new J(this,this.options.touchAction),ft(this,!0),l(this.options.recognizers,function(t){var e=this.add(new t[0](t[1]));t[2]&&e.recognizeWith(t[2]),t[3]&&e.requireFailure(t[3])},this)}function ft(t,e){var n=t.element;if(n.style){var i;l(t.options.cssProps,function(o,r){i=C(n.style,r),e?(t.oldCssProps[i]=n.style[i],n.style[i]=o):n.style[i]=t.oldCssProps[i]||""}),e||(t.oldCssProps={})}}function dt(t,e){var n=r.createEvent("Event");n.initEvent(t,!0,!0),n.gesture=e,e.target.dispatchEvent(n)}var vt,mt=["","webkit","Moz","MS","ms","o"],gt=r.createElement("div"),yt="function",Tt=Math.round,bt=Math.abs,wt=Date.now;vt="function"!=typeof Object.assign?function(t){if(t===a||null===t)throw new TypeError("Cannot convert undefined or null to object");for(var e=Object(t),n=1;n<arguments.length;n++){var i=arguments[n];if(i!==a&&null!==i)for(var o in i)i.hasOwnProperty(o)&&(e[o]=i[o])}return e}:Object.assign;var Et=h(function(t,e,n){for(var i=Object.keys(e),o=0;o<i.length;)(!n||n&&t[i[o]]===a)&&(t[i[o]]=e[i[o]]),o++;return t},"extend","Use `assign`."),kt=h(function(t,e){return Et(t,e,!0)},"merge","Use `assign`."),Ct=1,St=/mobile|tablet|ip(ad|hone|od)|android/i,xt="ontouchstart"in o,_t=C(o,"PointerEvent")!==a,$t=xt&&St.test(navigator.userAgent),At="touch",It="pen",Pt="mouse",Dt="kinect",Lt=25,zt=1,Mt=2,Ot=4,Rt=8,Nt=1,Ft=2,jt=4,qt=8,Xt=16,Yt=Ft|jt,Wt=qt|Xt,Ht=Yt|Wt,Ut=["x","y"],Vt=["clientX","clientY"];_.prototype={handler:function(){},init:function(){this.evEl&&m(this.element,this.evEl,this.domHandler),this.evTarget&&m(this.target,this.evTarget,this.domHandler),this.evWin&&m(x(this.element),this.evWin,this.domHandler)},destroy:function(){this.evEl&&g(this.element,this.evEl,this.domHandler),this.evTarget&&g(this.target,this.evTarget,this.domHandler),this.evWin&&g(x(this.element),this.evWin,this.domHandler)}};var Bt={mousedown:zt,mousemove:Mt,mouseup:Ot},Gt="mousedown",Zt="mousemove mouseup";p(q,_,{handler:function(t){var e=Bt[t.type];e&zt&&0===t.button&&(this.pressed=!0),e&Mt&&1!==t.which&&(e=Ot),this.pressed&&(e&Ot&&(this.pressed=!1),this.callback(this.manager,e,{pointers:[t],changedPointers:[t],pointerType:Pt,srcEvent:t}))}});var Jt={pointerdown:zt,pointermove:Mt,pointerup:Ot,pointercancel:Rt,pointerout:Rt},Kt={2:At,3:It,4:Pt,5:Dt},Qt="pointerdown",te="pointermove pointerup pointercancel";o.MSPointerEvent&&!o.PointerEvent&&(Qt="MSPointerDown",te="MSPointerMove MSPointerUp MSPointerCancel"),p(X,_,{handler:function(t){var e=this.store,n=!1,i=t.type.toLowerCase().replace("ms",""),o=Jt[i],r=Kt[t.pointerType]||t.pointerType,s=r==At,a=w(e,t.pointerId,"pointerId");o&zt&&(0===t.button||s)?a<0&&(e.push(t),a=e.length-1):o&(Ot|Rt)&&(n=!0),a<0||(e[a]=t,this.callback(this.manager,o,{pointers:e,changedPointers:[t],pointerType:r,srcEvent:t}),n&&e.splice(a,1))}});var ee={touchstart:zt,touchmove:Mt,touchend:Ot,touchcancel:Rt},ne="touchstart",ie="touchstart touchmove touchend touchcancel";p(Y,_,{handler:function(t){var e=ee[t.type];if(e===zt&&(this.started=!0),this.started){var n=W.call(this,t,e);e&(Ot|Rt)&&n[0].length-n[1].length===0&&(this.started=!1),this.callback(this.manager,e,{pointers:n[0],changedPointers:n[1],pointerType:At,srcEvent:t})}}});var oe={touchstart:zt,touchmove:Mt,touchend:Ot,touchcancel:Rt},re="touchstart touchmove touchend touchcancel";p(H,_,{handler:function(t){var e=oe[t.type],n=U.call(this,t,e);n&&this.callback(this.manager,e,{pointers:n[0],changedPointers:n[1],pointerType:At,srcEvent:t})}});var se=2500,ae=25;p(V,_,{handler:function(t,e,n){var i=n.pointerType==At,o=n.pointerType==Pt;if(!(o&&n.sourceCapabilities&&n.sourceCapabilities.firesTouchEvents)){if(i)B.call(this,e,n);else if(o&&Z.call(this,n))return;this.callback(t,e,n)}},destroy:function(){this.touch.destroy(),this.mouse.destroy()}});var ce=C(gt.style,"touchAction"),ue=ce!==a,le="compute",he="auto",pe="manipulation",fe="none",de="pan-x",ve="pan-y",me=Q();J.prototype={set:function(t){t==le&&(t=this.compute()),ue&&this.manager.element.style&&me[t]&&(this.manager.element.style[ce]=t),this.actions=t.toLowerCase().trim()},update:function(){this.set(this.manager.options.touchAction)},compute:function(){var t=[];return l(this.manager.recognizers,function(e){d(e.options.enable,[e])&&(t=t.concat(e.getTouchAction()))}),K(t.join(" "))},preventDefaults:function(t){var e=t.srcEvent,n=t.offsetDirection;if(this.manager.session.prevented)return void e.preventDefault();var i=this.actions,o=T(i,fe)&&!me[fe],r=T(i,ve)&&!me[ve],s=T(i,de)&&!me[de];if(o){var a=1===t.pointers.length,c=t.distance<2,u=t.deltaTime<250;if(a&&c&&u)return}return s&&r?void 0:o||r&&n&Yt||s&&n&Wt?this.preventSrc(e):void 0},preventSrc:function(t){this.manager.session.prevented=!0,t.preventDefault()}};var ge=1,ye=2,Te=4,be=8,we=be,Ee=16,ke=32;tt.prototype={defaults:{},set:function(t){return vt(this.options,t),this.manager&&this.manager.touchAction.update(),this},recognizeWith:function(t){if(u(t,"recognizeWith",this))return this;var e=this.simultaneous;return t=it(t,this),e[t.id]||(e[t.id]=t,t.recognizeWith(this)),this},dropRecognizeWith:function(t){return u(t,"dropRecognizeWith",this)?this:(t=it(t,this),delete this.simultaneous[t.id],this)},requireFailure:function(t){if(u(t,"requireFailure",this))return this;var e=this.requireFail;return t=it(t,this),w(e,t)===-1&&(e.push(t),t.requireFailure(this)),this},dropRequireFailure:function(t){if(u(t,"dropRequireFailure",this))return this;t=it(t,this);var e=w(this.requireFail,t);return e>-1&&this.requireFail.splice(e,1),this},hasRequireFailures:function(){return this.requireFail.length>0},canRecognizeWith:function(t){return!!this.simultaneous[t.id]},emit:function(t){function e(e){n.manager.emit(e,t)}var n=this,i=this.state;i<be&&e(n.options.event+et(i)),e(n.options.event),t.additionalEvent&&e(t.additionalEvent),i>=be&&e(n.options.event+et(i))},tryEmit:function(t){return this.canEmit()?this.emit(t):void(this.state=ke)},canEmit:function(){for(var t=0;t<this.requireFail.length;){if(!(this.requireFail[t].state&(ke|ge)))return!1;t++}return!0},recognize:function(t){var e=vt({},t);return d(this.options.enable,[this,e])?(this.state&(we|Ee|ke)&&(this.state=ge),this.state=this.process(e),void(this.state&(ye|Te|be|Ee)&&this.tryEmit(e))):(this.reset(),void(this.state=ke))},process:function(t){},getTouchAction:function(){},reset:function(){}},p(ot,tt,{defaults:{pointers:1},attrTest:function(t){var e=this.options.pointers;return 0===e||t.pointers.length===e},process:function(t){var e=this.state,n=t.eventType,i=e&(ye|Te),o=this.attrTest(t);return i&&(n&Rt||!o)?e|Ee:i||o?n&Ot?e|be:e&ye?e|Te:ye:ke}}),p(rt,ot,{defaults:{event:"pan",threshold:10,pointers:1,direction:Ht},getTouchAction:function(){var t=this.options.direction,e=[];return t&Yt&&e.push(ve),t&Wt&&e.push(de),e},directionTest:function(t){var e=this.options,n=!0,i=t.distance,o=t.direction,r=t.deltaX,s=t.deltaY;return o&e.direction||(e.direction&Yt?(o=0===r?Nt:r<0?Ft:jt,n=r!=this.pX,i=Math.abs(t.deltaX)):(o=0===s?Nt:s<0?qt:Xt,n=s!=this.pY,i=Math.abs(t.deltaY))),t.direction=o,n&&i>e.threshold&&o&e.direction},attrTest:function(t){return ot.prototype.attrTest.call(this,t)&&(this.state&ye||!(this.state&ye)&&this.directionTest(t))},emit:function(t){this.pX=t.deltaX,this.pY=t.deltaY;var e=nt(t.direction);e&&(t.additionalEvent=this.options.event+e),this._super.emit.call(this,t)}}),p(st,ot,{defaults:{event:"pinch",threshold:0,pointers:2},getTouchAction:function(){return[fe]},attrTest:function(t){return this._super.attrTest.call(this,t)&&(Math.abs(t.scale-1)>this.options.threshold||this.state&ye)},emit:function(t){if(1!==t.scale){var e=t.scale<1?"in":"out";t.additionalEvent=this.options.event+e}this._super.emit.call(this,t)}}),p(at,tt,{defaults:{event:"press",pointers:1,time:251,threshold:9},getTouchAction:function(){return[he]},process:function(t){var e=this.options,n=t.pointers.length===e.pointers,i=t.distance<e.threshold,o=t.deltaTime>e.time;if(this._input=t,!i||!n||t.eventType&(Ot|Rt)&&!o)this.reset();else if(t.eventType&zt)this.reset(),this._timer=c(function(){this.state=we,this.tryEmit()},e.time,this);else if(t.eventType&Ot)return we;return ke},reset:function(){clearTimeout(this._timer)},emit:function(t){this.state===we&&(t&&t.eventType&Ot?this.manager.emit(this.options.event+"up",t):(this._input.timeStamp=wt(),this.manager.emit(this.options.event,this._input)))}}),p(ct,ot,{defaults:{event:"rotate",threshold:0,pointers:2},getTouchAction:function(){return[fe]},attrTest:function(t){return this._super.attrTest.call(this,t)&&(Math.abs(t.rotation)>this.options.threshold||this.state&ye)}}),p(ut,ot,{defaults:{event:"swipe",threshold:10,velocity:.3,direction:Yt|Wt,pointers:1},getTouchAction:function(){return rt.prototype.getTouchAction.call(this)},attrTest:function(t){var e,n=this.options.direction;return n&(Yt|Wt)?e=t.overallVelocity:n&Yt?e=t.overallVelocityX:n&Wt&&(e=t.overallVelocityY),this._super.attrTest.call(this,t)&&n&t.offsetDirection&&t.distance>this.options.threshold&&t.maxPointers==this.options.pointers&&bt(e)>this.options.velocity&&t.eventType&Ot},emit:function(t){var e=nt(t.offsetDirection);e&&this.manager.emit(this.options.event+e,t),this.manager.emit(this.options.event,t)}}),p(lt,tt,{defaults:{event:"tap",pointers:1,taps:1,interval:300,time:250,threshold:9,posThreshold:10},getTouchAction:function(){return[pe]},process:function(t){var e=this.options,n=t.pointers.length===e.pointers,i=t.distance<e.threshold,o=t.deltaTime<e.time;if(this.reset(),t.eventType&zt&&0===this.count)return this.failTimeout();if(i&&o&&n){if(t.eventType!=Ot)return this.failTimeout();var r=!this.pTime||t.timeStamp-this.pTime<e.interval,s=!this.pCenter||R(this.pCenter,t.center)<e.posThreshold;this.pTime=t.timeStamp,this.pCenter=t.center,s&&r?this.count+=1:this.count=1,this._input=t;var a=this.count%e.taps;if(0===a)return this.hasRequireFailures()?(this._timer=c(function(){this.state=we,this.tryEmit()},e.interval,this),ye):we}return ke},failTimeout:function(){return this._timer=c(function(){this.state=ke},this.options.interval,this),ke},reset:function(){clearTimeout(this._timer)},emit:function(){this.state==we&&(this._input.tapCount=this.count,this.manager.emit(this.options.event,this._input))}}),ht.VERSION="2.0.7",ht.defaults={domEvents:!1,touchAction:le,enable:!0,inputTarget:null,inputClass:null,preset:[[ct,{enable:!1}],[st,{enable:!1},["rotate"]],[ut,{direction:Yt}],[rt,{direction:Yt},["swipe"]],[lt],[lt,{event:"doubletap",taps:2},["tap"]],[at]],cssProps:{userSelect:"none",touchSelect:"none",touchCallout:"none",contentZooming:"none",userDrag:"none",tapHighlightColor:"rgba(0,0,0,0)"}};var Ce=1,Se=2;pt.prototype={set:function(t){return vt(this.options,t),t.touchAction&&this.touchAction.update(),t.inputTarget&&(this.input.destroy(),this.input.target=t.inputTarget,this.input.init()),this},stop:function(t){this.session.stopped=t?Se:Ce},recognize:function(t){var e=this.session;if(!e.stopped){this.touchAction.preventDefaults(t);var n,i=this.recognizers,o=e.curRecognizer;(!o||o&&o.state&we)&&(o=e.curRecognizer=null);for(var r=0;r<i.length;)n=i[r],e.stopped===Se||o&&n!=o&&!n.canRecognizeWith(o)?n.reset():n.recognize(t),!o&&n.state&(ye|Te|be)&&(o=e.curRecognizer=n),r++}},get:function(t){if(t instanceof tt)return t;for(var e=this.recognizers,n=0;n<e.length;n++)if(e[n].options.event==t)return e[n];return null},add:function(t){if(u(t,"add",this))return this;var e=this.get(t.options.event);return e&&this.remove(e),this.recognizers.push(t),t.manager=this,this.touchAction.update(),t},remove:function(t){if(u(t,"remove",this))return this;if(t=this.get(t)){var e=this.recognizers,n=w(e,t);n!==-1&&(e.splice(n,1),this.touchAction.update())}return this},on:function(t,e){if(t!==a&&e!==a){var n=this.handlers;return l(b(t),function(t){n[t]=n[t]||[],n[t].push(e)}),this}},off:function(t,e){if(t!==a){var n=this.handlers;return l(b(t),function(t){e?n[t]&&n[t].splice(w(n[t],e),1):delete n[t]}),this}},emit:function(t,e){this.options.domEvents&&dt(t,e);var n=this.handlers[t]&&this.handlers[t].slice();if(n&&n.length){e.type=t,e.preventDefault=function(){e.srcEvent.preventDefault()};for(var i=0;i<n.length;)n[i](e),i++}},destroy:function(){this.element&&ft(this,!1),this.handlers={},this.session={},this.input.destroy(),this.element=null}},vt(ht,{INPUT_START:zt,INPUT_MOVE:Mt,INPUT_END:Ot,INPUT_CANCEL:Rt,STATE_POSSIBLE:ge,STATE_BEGAN:ye,STATE_CHANGED:Te,STATE_ENDED:be,STATE_RECOGNIZED:we,STATE_CANCELLED:Ee,STATE_FAILED:ke,DIRECTION_NONE:Nt,DIRECTION_LEFT:Ft,DIRECTION_RIGHT:jt,DIRECTION_UP:qt,DIRECTION_DOWN:Xt,DIRECTION_HORIZONTAL:Yt,DIRECTION_VERTICAL:Wt,DIRECTION_ALL:Ht,Manager:pt,Input:_,TouchAction:J,TouchInput:H,MouseInput:q,PointerEventInput:X,TouchMouseInput:V,SingleTouchInput:Y,Recognizer:tt,AttrRecognizer:ot,Tap:lt,Pan:rt,Swipe:ut,Pinch:st,Rotate:ct,Press:at,on:m,off:g,each:l,merge:kt,extend:Et,assign:vt,inherit:p,bindFn:f,prefixed:C});var xe="undefined"!=typeof o?o:"undefined"!=typeof self?self:{};xe.Hammer=ht,i=function(){return ht}.call(e,n,e,t),!(i!==a&&(t.exports=i))}(window,document,"Hammer")}]);