<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>dappeis2</title>

<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">


<!-- ------------------------------------------------------------------------------------ -->

<script type="text/javascript"
	src="https://bam.nr-data.net/1/1c0496e1d4?a=135496896&amp;v=1153.61ee9ba&amp;to=c1leEkcJDg1TRk5XQERfUwpQFU0SXlsW&amp;rst=786&amp;ref=https://dappei.com/articles/7933&amp;ap=285&amp;be=722&amp;fe=756&amp;dc=748&amp;perf=%7B%22timing%22:%7B%22of%22:1574302604500,%22n%22:0,%22u%22:318,%22ue%22:318,%22f%22:2,%22dn%22:2,%22dne%22:2,%22c%22:2,%22ce%22:2,%22rq%22:4,%22rp%22:309,%22rpe%22:317,%22dl%22:323,%22di%22:463,%22ds%22:465,%22de%22:465,%22dc%22:722,%22l%22:722,%22le%22:724%7D,%22navigation%22:%7B%7D%7D&amp;fp=458&amp;fcp=458&amp;jsonp=NREUM.setToken"></script>
<script
	src="https://connect.facebook.net/signals/config/289590961505168?v=2.9.13&amp;r=stable"
	async=""></script>
<script
	src="https://connect.facebook.net/zh_TW/sdk.js?hash=37c36871540adf4ae52e6904d31ab57f&amp;ua=modern_es6"
	async="" crossorigin="anonymous"></script>
<script src="https://js-agent.newrelic.com/nr-1153.min.js"></script>
<script async="" src="https://connect.facebook.net/en_US/fbevents.js"></script>
<script type="text/javascript" async=""
	src="https://d31qbv1cthcecs.cloudfront.net/atrk.js"></script>
<script id="facebook-jssdk"
	src="//connect.facebook.net/zh_TW/sdk.js#xfbml=1&amp;version=v2.3&amp;appId=197245307016690"></script>
<script async="" src="https://www.google-analytics.com/analytics.js"></script>
<script type="text/javascript">window.NREUM||(NREUM={});NREUM.info={"beacon":"bam.nr-data.net","errorBeacon":"bam.nr-data.net","licenseKey":"1c0496e1d4","applicationID":"135496896","transactionName":"c1leEkcJDg1TRk5XQERfUwpQFU0SXlsW","queueTime":0,"applicationTime":285,"agent":""}</script>
<script type="text/javascript">(window.NREUM||(NREUM={})).loader_config={licenseKey:"1c0496e1d4",applicationID:"135496896"};window.NREUM||(NREUM={}),__nr_require=function(n,e,t){function r(t){if(!e[t]){var i=e[t]={exports:{}};n[t][0].call(i.exports,function(e){var i=n[t][1][e];return r(i||e)},i,i.exports)}return e[t].exports}if("function"==typeof __nr_require)return __nr_require;for(var i=0;i<t.length;i++)r(t[i]);return r}({1:[function(n,e,t){function r(){}function i(n,e,t){return function(){return o(n,[u.now()].concat(f(arguments)),e?null:this,t),e?void 0:this}}var o=n("handle"),a=n(4),f=n(5),c=n("ee").get("tracer"),u=n("loader"),s=NREUM;"undefined"==typeof window.newrelic&&(newrelic=s);var p=["setPageViewName","setCustomAttribute","setErrorHandler","finished","addToTrace","inlineHit","addRelease"],d="api-",l=d+"ixn-";a(p,function(n,e){s[e]=i(d+e,!0,"api")}),s.addPageAction=i(d+"addPageAction",!0),s.setCurrentRouteName=i(d+"routeName",!0),e.exports=newrelic,s.interaction=function(){return(new r).get()};var m=r.prototype={createTracer:function(n,e){var t={},r=this,i="function"==typeof e;return o(l+"tracer",[u.now(),n,t],r),function(){if(c.emit((i?"":"no-")+"fn-start",[u.now(),r,i],t),i)try{return e.apply(this,arguments)}catch(n){throw c.emit("fn-err",[arguments,this,n],t),n}finally{c.emit("fn-end",[u.now()],t)}}}};a("actionText,setName,setAttribute,save,ignore,onEnd,getContext,end,get".split(","),function(n,e){m[e]=i(l+e)}),newrelic.noticeError=function(n,e){"string"==typeof n&&(n=new Error(n)),o("err",[n,u.now(),!1,e])}},{}],2:[function(n,e,t){function r(n,e){var t=n.getEntries();t.forEach(function(n){"first-paint"===n.name?a("timing",["fp",Math.floor(n.startTime)]):"first-contentful-paint"===n.name&&a("timing",["fcp",Math.floor(n.startTime)])})}function i(n){if(n instanceof c&&!s){var e,t=Math.round(n.timeStamp);e=t>1e12?Date.now()-t:f.now()-t,s=!0,a("timing",["fi",t,{type:n.type,fid:e}])}}if(!("init"in NREUM&&"page_view_timing"in NREUM.init&&"enabled"in NREUM.init.page_view_timing&&NREUM.init.page_view_timing.enabled===!1)){var o,a=n("handle"),f=n("loader"),c=NREUM.o.EV;if("PerformanceObserver"in window&&"function"==typeof window.PerformanceObserver){o=new PerformanceObserver(r);try{o.observe({entryTypes:["paint"]})}catch(u){}}if("addEventListener"in document){var s=!1,p=["click","keydown","mousedown","pointerdown","touchstart"];p.forEach(function(n){document.addEventListener(n,i,!1)})}}},{}],3:[function(n,e,t){function r(n,e){if(!i)return!1;if(n!==i)return!1;if(!e)return!0;if(!o)return!1;for(var t=o.split("."),r=e.split("."),a=0;a<r.length;a++)if(r[a]!==t[a])return!1;return!0}var i=null,o=null,a=/Version\/(\S+)\s+Safari/;if(navigator.userAgent){var f=navigator.userAgent,c=f.match(a);c&&f.indexOf("Chrome")===-1&&f.indexOf("Chromium")===-1&&(i="Safari",o=c[1])}e.exports={agent:i,version:o,match:r}},{}],4:[function(n,e,t){function r(n,e){var t=[],r="",o=0;for(r in n)i.call(n,r)&&(t[o]=e(r,n[r]),o+=1);return t}var i=Object.prototype.hasOwnProperty;e.exports=r},{}],5:[function(n,e,t){function r(n,e,t){e||(e=0),"undefined"==typeof t&&(t=n?n.length:0);for(var r=-1,i=t-e||0,o=Array(i<0?0:i);++r<i;)o[r]=n[e+r];return o}e.exports=r},{}],6:[function(n,e,t){e.exports={exists:"undefined"!=typeof window.performance&&window.performance.timing&&"undefined"!=typeof window.performance.timing.navigationStart}},{}],ee:[function(n,e,t){function r(){}function i(n){function e(n){return n&&n instanceof r?n:n?c(n,f,o):o()}function t(t,r,i,o){if(!d.aborted||o){n&&n(t,r,i);for(var a=e(i),f=v(t),c=f.length,u=0;u<c;u++)f[u].apply(a,r);var p=s[y[t]];return p&&p.push([b,t,r,a]),a}}function l(n,e){h[n]=v(n).concat(e)}function m(n,e){var t=h[n];if(t)for(var r=0;r<t.length;r++)t[r]===e&&t.splice(r,1)}function v(n){return h[n]||[]}function g(n){return p[n]=p[n]||i(t)}function w(n,e){u(n,function(n,t){e=e||"feature",y[t]=e,e in s||(s[e]=[])})}var h={},y={},b={on:l,addEventListener:l,removeEventListener:m,emit:t,get:g,listeners:v,context:e,buffer:w,abort:a,aborted:!1};return b}function o(){return new r}function a(){(s.api||s.feature)&&(d.aborted=!0,s=d.backlog={})}var f="nr@context",c=n("gos"),u=n(4),s={},p={},d=e.exports=i();d.backlog=s},{}],gos:[function(n,e,t){function r(n,e,t){if(i.call(n,e))return n[e];var r=t();if(Object.defineProperty&&Object.keys)try{return Object.defineProperty(n,e,{value:r,writable:!0,enumerable:!1}),r}catch(o){}return n[e]=r,r}var i=Object.prototype.hasOwnProperty;e.exports=r},{}],handle:[function(n,e,t){function r(n,e,t,r){i.buffer([n],r),i.emit(n,e,t)}var i=n("ee").get("handle");e.exports=r,r.ee=i},{}],id:[function(n,e,t){function r(n){var e=typeof n;return!n||"object"!==e&&"function"!==e?-1:n===window?0:a(n,o,function(){return i++})}var i=1,o="nr@id",a=n("gos");e.exports=r},{}],loader:[function(n,e,t){function r(){if(!x++){var n=E.info=NREUM.info,e=l.getElementsByTagName("script")[0];if(setTimeout(s.abort,3e4),!(n&&n.licenseKey&&n.applicationID&&e))return s.abort();u(y,function(e,t){n[e]||(n[e]=t)}),c("mark",["onload",a()+E.offset],null,"api");var t=l.createElement("script");t.src="https://"+n.agent,e.parentNode.insertBefore(t,e)}}function i(){"complete"===l.readyState&&o()}function o(){c("mark",["domContent",a()+E.offset],null,"api")}function a(){return O.exists&&performance.now?Math.round(performance.now()):(f=Math.max((new Date).getTime(),f))-E.offset}var f=(new Date).getTime(),c=n("handle"),u=n(4),s=n("ee"),p=n(3),d=window,l=d.document,m="addEventListener",v="attachEvent",g=d.XMLHttpRequest,w=g&&g.prototype;NREUM.o={ST:setTimeout,SI:d.setImmediate,CT:clearTimeout,XHR:g,REQ:d.Request,EV:d.Event,PR:d.Promise,MO:d.MutationObserver};var h=""+location,y={beacon:"bam.nr-data.net",errorBeacon:"bam.nr-data.net",agent:"js-agent.newrelic.com/nr-1153.min.js"},b=g&&w&&w[m]&&!/CriOS/.test(navigator.userAgent),E=e.exports={offset:f,now:a,origin:h,features:{},xhrWrappable:b,userAgent:p};n(1),n(2),l[m]?(l[m]("DOMContentLoaded",o,!1),d[m]("load",r,!1)):(l[v]("onreadystatechange",i),d[v]("onload",r)),c("mark",["firstbyte",f],null,"api");var x=0,O=n(6)},{}],"wrap-function":[function(n,e,t){function r(n){return!(n&&n instanceof Function&&n.apply&&!n[a])}var i=n("ee"),o=n(5),a="nr@original",f=Object.prototype.hasOwnProperty,c=!1;e.exports=function(n,e){function t(n,e,t,i){function nrWrapper(){var r,a,f,c;try{a=this,r=o(arguments),f="function"==typeof t?t(r,a):t||{}}catch(u){d([u,"",[r,a,i],f])}s(e+"start",[r,a,i],f);try{return c=n.apply(a,r)}catch(p){throw s(e+"err",[r,a,p],f),p}finally{s(e+"end",[r,a,c],f)}}return r(n)?n:(e||(e=""),nrWrapper[a]=n,p(n,nrWrapper),nrWrapper)}function u(n,e,i,o){i||(i="");var a,f,c,u="-"===i.charAt(0);for(c=0;c<e.length;c++)f=e[c],a=n[f],r(a)||(n[f]=t(a,u?f+i:i,o,f))}function s(t,r,i){if(!c||e){var o=c;c=!0;try{n.emit(t,r,i,e)}catch(a){d([a,t,r,i])}c=o}}function p(n,e){if(Object.defineProperty&&Object.keys)try{var t=Object.keys(n);return t.forEach(function(t){Object.defineProperty(e,t,{get:function(){return n[t]},set:function(e){return n[t]=e,e}})}),e}catch(r){d([r])}for(var i in n)f.call(n,i)&&(e[i]=n[i]);return e}function d(e){try{n.emit("internal-error",e)}catch(t){}}return n||(n=i),t.inPlace=u,t.flag=a,t}},{}]},{},["loader"]);</script>
<meta content-language="zh-TW">
<title>帶「它」上路最吸睛！盤點 8 位潮人的選車考量， 跟著全新世代 BMW 1 系列成為眾人焦點！ | Dappei</title>
<link href="https://dappei.com/articles/7933" rel="canonical">
<meta content="FF09B0A90610BC1D256F5A92C739B885" name="msvalidate.01">
<meta content="Dappei 搭配 - 高質感服飾穿搭社群" property="og:site_name">
<meta content="帶「它」上路最吸睛！盤點 8 位潮人的選車考量， 跟著全新世代 BMW 1 系列成為眾人焦點！ | Dappei"
	property="og:title">
<meta
	content="https://images.dappei.com/uploads/article/cover/7933/large_e56cbe2ac055660f.jpg"
	property="og:image">
<meta
	content="有種人，不願被世俗框架所綁定，看似叛逆不羈或背離常規，但其實他們只是不願隨波逐流與跟風，他們不甘只在原地踏步，永遠在探索各種可能性。擁有一台 BMW 1 系列，不僅能陪伴你肆意在城市巷弄間探險，在擁有生活品質的同時，也展現「有種不同」的魅力，隨時享受注目禮。



全新世代 BMW 1 系列在台北 101 水舞廣場前用前衛科技打造潮流體驗特區，不管是自動倒車或是 6 色炫影拍照牆，渾..."
	property="og:description">
<meta content="https://dappei.com/articles/7933" property="og:url">
<meta content="197245307016690" property="fb:app_id">
<meta content="181811028693919" property="fb:pages">
<meta content="556335474461387" property="fb:pages">
<meta content="220137288053782" property="fb:pages">
<meta content="article" property="og:type">
<meta content="https://www.facebook.com/Dappei"
	property="article:author">
<meta content="https://www.facebook.com/Dappei"
	property="article:publisher">
<meta
	content="有種人，不願被世俗框架所綁定，看似叛逆不羈或背離常規，但其實他們只是不願隨波逐流與跟風，他們不甘只在原地踏步，永遠在探索各種可能性。擁有一台 BMW 1 系列，不僅能陪伴你肆意在城市巷弄間探險，在擁有生活品質的同時，也展現「有種不同」的魅力，隨時享受注目禮。



全新世代 BMW 1 系列在台北 101 水舞廣場前用前衛科技打造潮流體驗特區，不管是自動倒車或是 6 色炫影拍照牆，渾..."
	name="description">
<meta content="穿搭,時尚,搭配,Lookbook,時尚,女穿搭,男穿搭" name="keywords">
<link rel="stylesheet" media="screen"
	href="//fonts.googleapis.com/css?family=Noto|Ubuntu|Merriweather">
<link rel="stylesheet" media="all"
	href="/assets/application-66cd917a4d80050b1bd784146393660a.css">
<script type="text/javascript">(function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
(i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
})(window,document,'script','https://www.google-analytics.com/analytics.js','ga');

ga('create', 'UA-43685958-1', 'auto');
ga('set', 'dimension1', 'LadyBird');
ga('set', 'dimension2', '特別企劃');
ga('set', 'dimension3', '2019');
ga('set', 'dimension4', '2019-11');
ga('set', 'dimension5', '/media/dappei');
ga('send', 'pageview');</script>
<script src="/assets/application-6984d723560094769ab9016d7903e2c9.js"
	type="text/javascript"></script>
<script type="text/javascript">I18n.defaultLocale = "zh-TW";
I18n.locale = "zh-TW";</script>
<meta name="csrf-param" content="authenticity_token">
<meta name="csrf-token"
	content="bL6pdJCXf71LUJA40zxJq8XR8OiCcz9FhlGgR9Ll8QuqGrvqkRJHIl6RD97QGAC0bwhexpTf4+oMoWjZKX7YrQ==">
<style type="text/css">
.fb_hidden {
	position: absolute;
	top: -10000px;
	z-index: 10001
}

.fb_reposition {
	overflow: hidden;
	position: relative
}

.fb_invisible {
	display: none
}

.fb_reset {
	background: none;
	border: 0;
	border-spacing: 0;
	color: #000;
	cursor: auto;
	direction: ltr;
	font-family: "lucida grande", tahoma, verdana, arial, sans-serif;
	font-size: 12px;
	font-style: normal;
	font-variant: normal;
	font-weight: normal;
	letter-spacing: normal;
	line-height: 1;
	margin: 0;
	overflow: visible;
	padding: 0;
	text-align: left;
	text-decoration: none;
	text-indent: 0;
	text-shadow: none;
	text-transform: none;
	visibility: visible;
	white-space: normal;
	word-spacing: normal
}

.fb_reset>div {
	overflow: hidden
}

@
keyframes fb_transform {
	from {opacity: 0;
	transform: scale(.95)
}

to {
	opacity: 1;
	transform: scale(1)
}

}
.fb_animate {
	animation: fb_transform .3s forwards
}

.fb_dialog {
	background: rgba(82, 82, 82, .7);
	position: absolute;
	top: -10000px;
	z-index: 10001
}

.fb_dialog_advanced {
	border-radius: 8px;
	padding: 10px
}

.fb_dialog_content {
	background: #fff;
	color: #373737
}

.fb_dialog_close_icon {
	background:
		url(https://static.xx.fbcdn.net/rsrc.php/v3/yq/r/IE9JII6Z1Ys.png)
		no-repeat scroll 0 0 transparent;
	cursor: pointer;
	display: block;
	height: 15px;
	position: absolute;
	right: 18px;
	top: 17px;
	width: 15px
}

.fb_dialog_mobile .fb_dialog_close_icon {
	left: 5px;
	right: auto;
	top: 5px
}

.fb_dialog_padding {
	background-color: transparent;
	position: absolute;
	width: 1px;
	z-index: -1
}

.fb_dialog_close_icon:hover {
	background:
		url(https://static.xx.fbcdn.net/rsrc.php/v3/yq/r/IE9JII6Z1Ys.png)
		no-repeat scroll 0 -15px transparent
}

.fb_dialog_close_icon:active {
	background:
		url(https://static.xx.fbcdn.net/rsrc.php/v3/yq/r/IE9JII6Z1Ys.png)
		no-repeat scroll 0 -30px transparent
}

.fb_dialog_iframe {
	line-height: 0
}

.fb_dialog_content .dialog_title {
	background: #6d84b4;
	border: 1px solid #365899;
	color: #fff;
	font-size: 15px;
	font-weight: bold;
	margin: 0
}

.fb_dialog_content .dialog_title>span {
	background:
		url(https://static.xx.fbcdn.net/rsrc.php/v3/yd/r/Cou7n-nqK52.gif)
		no-repeat 5px 50%;
	float: left;
	padding: 5px 0 7px 26px
}

body.fb_hidden {
	height: 100%;
	left: 0;
	margin: 0;
	overflow: visible;
	position: absolute;
	top: -10000px;
	transform: none;
	width: 100%
}

.fb_dialog.fb_dialog_mobile.loading {
	background:
		url(https://static.xx.fbcdn.net/rsrc.php/v3/ya/r/3rhSv5V8j3o.gif)
		white no-repeat 50% 50%;
	min-height: 100%;
	min-width: 100%;
	overflow: hidden;
	position: absolute;
	top: 0;
	z-index: 10001
}

.fb_dialog.fb_dialog_mobile.loading.centered {
	background: none;
	height: auto;
	min-height: initial;
	min-width: initial;
	width: auto
}

.fb_dialog.fb_dialog_mobile.loading.centered #fb_dialog_loader_spinner {
	width: 100%
}

.fb_dialog.fb_dialog_mobile.loading.centered .fb_dialog_content {
	background: none
}

.loading.centered #fb_dialog_loader_close {
	clear: both;
	color: #fff;
	display: block;
	font-size: 19px;
	padding-top: 20px
}

#fb-root #fb_dialog_ipad_overlay {
	background: rgba(0, 0, 0, .4);
	bottom: 0;
	left: 0;
	min-height: 100%;
	position: absolute;
	right: 0;
	top: 0;
	width: 100%;
	z-index: 10000
}

#fb-root #fb_dialog_ipad_overlay.hidden {
	display: none
}

.fb_dialog.fb_dialog_mobile.loading iframe {
	visibility: hidden
}

.fb_dialog_mobile .fb_dialog_iframe {
	position: sticky;
	top: 0
}

.fb_dialog_content .dialog_header {
	background: linear-gradient(from(#738aba), to(#2c4987));
	border-bottom: 1px solid;
	border-color: #043b87;
	box-shadow: white 0 1px 1px -1px inset;
	color: #fff;
	font: bold 14px Helvetica, sans-serif;
	text-overflow: ellipsis;
	text-shadow: rgba(0, 30, 84, .296875) 0 -1px 0;
	vertical-align: middle;
	white-space: nowrap
}

.fb_dialog_content .dialog_header table {
	height: 43px;
	width: 100%
}

.fb_dialog_content .dialog_header td.header_left {
	font-size: 13px;
	padding-left: 5px;
	vertical-align: middle;
	width: 60px
}

.fb_dialog_content .dialog_header td.header_right {
	font-size: 13px;
	padding-right: 5px;
	vertical-align: middle;
	width: 60px
}

.fb_dialog_content .touchable_button {
	background: linear-gradient(from(#4267B2), to(#2a4887));
	background-clip: padding-box;
	border: 1px solid #29487d;
	border-radius: 3px;
	display: inline-block;
	line-height: 18px;
	margin-top: 3px;
	max-width: 85px;
	padding: 4px 12px;
	position: relative
}

.fb_dialog_content .dialog_header .touchable_button input {
	background: none;
	border: none;
	color: #fff;
	font: bold 12px Helvetica, sans-serif;
	margin: 2px -12px;
	padding: 2px 6px 3px 6px;
	text-shadow: rgba(0, 30, 84, .296875) 0 -1px 0
}

.fb_dialog_content .dialog_header .header_center {
	color: #fff;
	font-size: 17px;
	font-weight: bold;
	line-height: 18px;
	text-align: center;
	vertical-align: middle
}

.fb_dialog_content .dialog_content {
	background:
		url(https://static.xx.fbcdn.net/rsrc.php/v3/y9/r/jKEcVPZFk-2.gif)
		no-repeat 50% 50%;
	border: 1px solid #4a4a4a;
	border-bottom: 0;
	border-top: 0;
	height: 150px
}

.fb_dialog_content .dialog_footer {
	background: #f5f6f7;
	border: 1px solid #4a4a4a;
	border-top-color: #ccc;
	height: 40px
}

#fb_dialog_loader_close {
	float: left
}

.fb_dialog.fb_dialog_mobile .fb_dialog_close_button {
	text-shadow: rgba(0, 30, 84, .296875) 0 -1px 0
}

.fb_dialog.fb_dialog_mobile .fb_dialog_close_icon {
	visibility: hidden
}

#fb_dialog_loader_spinner {
	animation: rotateSpinner 1.2s linear infinite;
	background-color: transparent;
	background-image:
		url(https://static.xx.fbcdn.net/rsrc.php/v3/yD/r/t-wz8gw1xG1.png);
	background-position: 50% 50%;
	background-repeat: no-repeat;
	height: 24px;
	width: 24px
}

@
keyframes rotateSpinner { 0%{
	transform: rotate(0deg)
}

100%{
transform








:rotate(360deg)








}
}
.fb_iframe_widget {
	display: inline-block;
	position: relative
}

.fb_iframe_widget span {
	display: inline-block;
	position: relative;
	text-align: justify
}

.fb_iframe_widget iframe {
	position: absolute
}

.fb_iframe_widget_fluid_desktop, .fb_iframe_widget_fluid_desktop span,
	.fb_iframe_widget_fluid_desktop iframe {
	max-width: 100%
}

.fb_iframe_widget_fluid_desktop iframe {
	min-width: 220px;
	position: relative
}

.fb_iframe_widget_lift {
	z-index: 1
}

.fb_iframe_widget_fluid {
	display: inline
}

.fb_iframe_widget_fluid span {
	width: 100%
}
</style>
</head>


<body>
	<jsp:include page="/WEB-INF/views/header2.jsp" />

	<br>
	<br>
	<br>

	<div class="container">
		<div data-id="94059" id="container">
			<div id="display-article">
				<div id="cover">
					<img alt="帶「它」上路最吸睛！盤點 8 位潮人的選車考量， 跟著全新世代 BMW 1 系列成為眾人焦點！"
						src="https://images.dappei.com/uploads/article/cover/7933/large_e56cbe2ac055660f.jpg">
					<div class="time">Nov ,18 2019</div>
					<h1>
						<a href="/articles/7933">帶「它」上路最吸睛！盤點 8 位潮人的選車考量， 跟著全新世代 BMW 1
							系列成為眾人焦點！</a>
					</h1>
				</div>
				<div id="main">
					<div class="content">
						<p>有種人，不願被世俗框架所綁定，看似叛逆不羈或背離常規，但其實他們只是不願隨波逐流與跟風，他們不甘只在原地踏步，永遠在探索各種可能性。擁有一台
							BMW 1 系列，不僅能陪伴你肆意在城市巷弄間探險，在擁有生活品質的同時，也展現「有種不同」的魅力，隨時享受注目禮。</p>
						<p>&nbsp;</p>
						<p>
							全新世代 BMW 1 系列在台北 101 水舞廣場前用前衛科技打造潮流體驗特區，不管是自動倒車或是 6
							色炫影拍照牆，渾身都是亮點，成為流行時尚圈必備車款。<a href="https://dappei.com/"
								target="_blank">Dappei&nbsp;</a>決定專訪一同前往這次 BMW 有種不同特展的 8
							位潮人，了解他們對於 BMW 1 系列的看法以及選車時的考量，協助各位潮男潮女尋找最適合你的車款。
						</p>
						<p>&nbsp;</p>
						<p>
							<img
								src="https://images.dappei.com/uploads/article_image/image/79697/large_d02aa0b3a2f48077.jpg">
						</p>
						<p>&nbsp;</p>
						<h3
							style="font-style: normal; font-weight: normal; text-align: center;">
							—&nbsp;<a href="https://www.instagram.com/chainloop/?hl=zh-tw"
								target="_blank">圈入準</a>&nbsp;不需太在意別人眼光過生活，便是一種潮流態度<span
								style="font-style: normal; font-weight: 400;">&nbsp;</span>—
						</h3>
						<p>同時擁有時尚部落客、造型師、Youtuber
							與爸爸等多重身份，成為父親後圈入準漸漸將家庭轉為生活重心，因此擁有一輛能兼顧家庭生活娛樂與工作的車款是必備條件，圈入準也提到他特別喜歡
							BMW
							的掀背小車，買車時也會一併將智慧性能考量進清單。至於如何定義潮流生活，圈入準透露：「不需要在意別人眼光用自己的生活態度過每一天，便是一種潮流的生活態度。」</p>
						<p>&nbsp;</p>
						<p>
							<img
								src="https://images.dappei.com/uploads/article_image/image/79814/large_65f9992d31d74fe7.jpg">
						</p>
						<p>
							<img
								src="https://images.dappei.com/uploads/article_image/image/79564/large_506d5da988b731e2.jpg">
						</p>
						<p>&nbsp;</p>
						<h3
							style="font-style: normal; font-weight: normal; text-align: center;">
							—&nbsp;<a href="https://www.instagram.com/altom_777/"
								target="_blank">阿湯</a>&nbsp;讓生活過得有品味，但不盲目跟風 —
						</h3>
						<p>對於創立服飾品牌 Marksmans
							的阿湯哥來說，談及買車的考量時：「第一眼會考慮到外型風格符不符合自己，其次性能安全性跟舒適度，畢竟車子除了自己駕馭也要載家人，當然也不能只考慮到自己駕駛的感受。」體驗過車展特區後
							Dappei 接著訪問阿湯哥關於 BMW 1
							系列的想法，他回答：「首先在外型上不像是入門款的小車，在風格跟流線設計跑格強烈，從側身望過去時不禁令人驚艷於逐漸上揚並展現張力的車線，延伸並豐富了視覺效果，賦予車身動感鮮明的風格。當然我也非常喜歡
							BMW
							品牌精神象徵的雙腎形水箱護罩，這次新世代的家族設計風格非常獨特！當然內裝質感也相當高級，無論智慧駕駛輔助等相關科技配備都也很到位。」</p>
						<p>&nbsp;</p>
						<p>
							<img
								src="https://images.dappei.com/uploads/article_image/image/79815/large_a16b2718267cba2a.jpg">
						</p>
						<p>
							<img
								src="https://images.dappei.com/uploads/article_image/image/79589/large_86ff6fd955828386.jpg">
						</p>
						<p>&nbsp;</p>
						<h3
							style="font-style: normal; font-weight: normal; text-align: center;">
							—&nbsp;<a href="https://www.instagram.com/candeekuo/"
								target="_blank">Candee</a>&nbsp;希望自己勿忘初衷並且努力地生活著<span
								style="font-style: normal; font-weight: 400;">&nbsp;</span>—
						</h3>
						<p>身為服飾品牌 Gotnofears 公關與知名 KOL
							的&nbsp;Candee&nbsp;，在被問起車子對於生活的重要性時解釋到：「擁有一台好車，是每一個人的夢想，有些人習慣開車上下班，有些人當作是一種興趣，有些則是代表著生活地位的象徵。車子對於我的重要性則是缺一不可的存在，是我跟爸爸的回憶。從小爸爸開車的時候總會把我放在腿上。手握著方向盤，讓我覺得自己也很會開車。之後就特別喜歡看車子相關的東西，30
							歲的時候買了自己的第一台車子，車牌還特別選了爸爸的生日，希望自己勿忘初衷，並且努力地生活著。」至於買車時的考量，Candee
							說：「第一點一定是先參考品牌，再來則是外觀、價錢、性能舒適度。BMW 就是我最喜歡的品牌，全新的 1
							系列在設計上也更符合我的需求，除了外觀帥氣之外，舒適度和操作介面都很人性化，另外加上我工作的緣故，置物空間大小可以裝載多少容量也是我主要考量因素。」</p>
						<p>&nbsp;</p>
						<p>
							<img
								src="https://images.dappei.com/uploads/article_image/image/79906/large_21afbf6f981210e7.jpg">
						</p>
						<p>
							<img
								src="https://images.dappei.com/uploads/article_image/image/79611/large_e6df66147be85473.jpg">
						</p>
						<p
							style="font-style: normal; font-weight: normal; text-align: center;">&nbsp;</p>
						<h3
							style="font-style: normal; font-weight: normal; text-align: center;">
							—&nbsp;<a href="https://www.instagram.com/jarvisyang/"
								target="_blank">易光</a>&nbsp;選對車款讓生活與工作更有格調 —
						</h3>
						<p>作為一位專業的攝影師，易光認為：「開車無非就是為了提高交通效率換取時間，讓生活及工作更有格調，而買車時會特別注重第一外型、第二性能與第三空間，畢竟沒結婚前都屬於前座買家，在台北開車不能太大台！」易光還提到：「我一直都喜歡
							BMW 品牌帶給人神秘的紳士感，這次 1
							系列配備的全數位虛擬座艙，直覺的操作介面搭配潮流科技感十足的座艙空間，完全顛覆我想像，讓我也想要立刻入手！」</p>
						<p>&nbsp;</p>
						<p>
							<img
								src="https://images.dappei.com/uploads/article_image/image/79817/large_dd5650c4c9a77982.jpg">
						</p>
						<p>
							<img
								src="https://images.dappei.com/uploads/article_image/image/79614/large_558721548820febf.jpg">
						</p>
						<p>&nbsp;</p>
						<h3
							style="font-style: normal; font-weight: normal; text-align: center;">
							—&nbsp;<a href="https://www.instagram.com/lisalaisdiary/"
								target="_blank">Lisa&nbsp;</a>&nbsp;勇於挑戰是生活中的一部分 —
						</h3>
						<p>擅長寫文章的 Lisa 不僅僅是位 Blogger 也是位 KOL。Dappei 詢問 Lisa
							關於潮流生活的看法時她認為：「找尋到自己想要的是什麼，不斷地勇於挑戰與甘願接收，適時地於生活中帶給自己一份自在，便為潮流生活。」而
							BMW 也相當符合潮流的風格，Lisa
							談論買車時特別注重外型，她也偷偷告訴我們說喜歡座椅的包覆性高，因為喜歡追求速度感，所以是本人非常看重的一點。這次 1
							系列的車款也讓 Lisa 顛覆對&nbsp;BMW 的品牌印象：「對於 BMW 的既定印象是個運動感十足的男人，這次與 1
							系列有了近距離的接觸之後，我很喜歡智慧駕駛輔助系統，像自動倒車和自動停車功能可以滿足像我這種倒車技術不太 OK
							的人，如此人性化科技搭上酷帥的外型，這樣的平衡我覺得很完美！」</p>
						<p>&nbsp;</p>
						<p style="font-style: normal; font-weight: 400;">
							<img
								src="https://images.dappei.com/uploads/article_image/image/79818/medium_4a8d600198268cfb.jpg">
						</p>
						<p style="font-style: normal; font-weight: 400;">
							<img
								src="https://images.dappei.com/uploads/article_image/image/79635/large_f26746e84d8e085a.jpg">
						</p>
						<p>&nbsp;</p>
						<p
							style="font-style: normal; font-weight: normal; text-align: center;">&nbsp;</p>
						<h3
							style="font-style: normal; font-weight: normal; text-align: center;">
							—&nbsp;<a href="https://www.instagram.com/kevin830105/"
								target="_blank">Kevin&nbsp;</a>&nbsp;用自信的態度與自己的角度來享受每一天 —
						</h3>
						<p>經營「THE SHORTY 那個矮子」頻道的
							Youtuber&nbsp;Kevin，平常熱愛分享與穿搭技巧或是服飾品牌等相關知識，被問起買車會注重什麼樣的地方時 Kevin
							說：「雖然到現在25歲依舊是個機車族，但如果真的到了需要買車的時候，我想外型一定是非常必要的考量，畢竟對自己的穿著都這麼注重，小老婆的外衣一定也要顧慮一下的（笑），另外就是置物空間，因為頻道的關係，每次出外拍片，東西總是一大推，足夠的置物空間，想必移動上會輕鬆許多的。」至於這次
							BMW 1 系列的車款最讓 Kevin 感到驚艷的地方他回答：「外觀吧！其實外觀還蠻特別的，在這之前，我未曾想過 BMW
							與潮流的關聯，但這次的 BMW 1
							系列，不但有寬大的置物空間，流線的外型，同時、整體加上配色，都給人一種年輕率性的潮流感，第一眼就有想上它.....駕駛座的衝動啊！」</p>
						<p>&nbsp;</p>
						<p>
							<img
								src="https://images.dappei.com/uploads/article_image/image/79819/large_3d18a56576af383d.jpg">
						</p>
						<p>
							<img
								src="https://images.dappei.com/uploads/article_image/image/79719/large_152fbf44849bba52.jpg">
						</p>
						<p>&nbsp;</p>
						<h3
							style="font-style: normal; font-weight: normal; text-align: center;">
							—&nbsp;<a href="https://www.instagram.com/li_shyang_an/"
								target="_blank">李祥安</a>&nbsp;將有種不同的態度融入日常 —
						</h3>
						<p>擁有 193
							公分身高優勢的李祥安，工作時除了接拍平面與動態廣告外，也經常出席各種品牌活動，專訪時他也大方談論到買車時特別重視品牌、車子外觀、機能及安全舒適性，而其中
							1 系列最讓他喜歡的地方為：「不僅保有 BMW
							車款該有的動感不失豪華的外型，車體線條上更運動與年輕化。印象最深的是車壇首創的「自動倒車輔助系統」對於駕駛者來說十分實用，不經意闖入狹窄的路段，還是能一個轉身，輕鬆脫困！。」</p>
						<p>&nbsp;</p>
						<p>
							<img
								src="https://images.dappei.com/uploads/article_image/image/79820/large_ea4e993e6b148ace.jpg">
						</p>
						<p>
							<img
								src="https://images.dappei.com/uploads/article_image/image/79720/large_45a707c11e5c403e.jpg">
						</p>
						<p
							style="font-style: normal; font-weight: normal; text-align: center;">&nbsp;</p>
						<h3
							style="font-style: normal; font-weight: normal; text-align: center;">
							<span
								style="font-style: normal; font-weight: 400; text-align: center;">—&nbsp;&nbsp;</span><a
								href="https://www.instagram.com/aonoya8287/" target="_blank"><span
								style="font-style: normal; font-weight: 400;">Maggy</span></a>&nbsp;人生就是要探索無限可能&nbsp;&nbsp;—
						</h3>
						<p>熱衷於各種戶外運動的
							Maggy，平常總愛出遠門進行衝浪、滑板、潛水與露營等休閒娛樂，盡情擁抱大自然，因此擁有一台合適的車款能陪著自己上山下海十分重要，在買車時著重於車內的空間大小，並且
							Maggy 也透露對於掀背款情有獨鍾。體驗過 BMW 1 系列第三代車款後也讓她驚嘆不已：「&nbsp;1
							系列搭載的「智慧語音助理」非常人性化，因為能讓我以最簡潔快速的方式來與愛車溝通（笑），只要輕喚『您好，BMW！』，或把它改名為我的偶像『你好，Rima！』便能做到導航、播放音樂、撥打電話、開關空調等細節繁瑣的事項！很方便!
							」</p>
						<p>&nbsp;</p>
						<p>
							<img
								src="https://images.dappei.com/uploads/article_image/image/79821/large_4362a4b0143e5c3a.jpg">
						</p>
						<p>
							<img
								src="https://images.dappei.com/uploads/article_image/image/79728/large_f230b9e016edbb05.jpg">
						</p>
						<p>&nbsp;</p>
						<p>此次八位潮人參與了「The 1 And
							Only」BMW有種不同特展後，對於BMW這個品牌又有更進一步的認識與了解，全新BMW
							1系列從外觀到內裝的迷人魅力讓它自成焦點，人性化的科技更締造獨一無二的駕馭體驗，建議喜愛BMW的車迷朋友一定要親自去看看這款全新世代的車款！</p>
						<p>&nbsp;</p>
						<p>
							<img
								src="https://images.dappei.com/uploads/article_image/image/79610/large_c523163c54a1fc99.jpg"><br>
							<img
								src="https://images.dappei.com/uploads/article_image/image/79721/large_6bc1377e98af0804.jpg">
						</p>
						<p>
							<img
								src="https://images.dappei.com/uploads/article_image/image/79699/large_5b06954f1fb5d721.jpg">
						</p>


					</div>
				</div>
			</div>
		</div>
	</div>

	<br>


	<jsp:include page="/WEB-INF/views/footer.jsp" />
</body>
</html>