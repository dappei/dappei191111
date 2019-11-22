<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
<meta charset="utf-8">
<script type="text/javascript"
	src="https://bam.nr-data.net/1/1c0496e1d4?a=135496896&amp;v=1153.61ee9ba&amp;to=c1leEkcJDg1TRk5GWl9CXxUaFQoOQQ%3D%3D&amp;rst=1092&amp;ref=https://dappei.com/photos/79750&amp;ap=288&amp;be=669&amp;fe=893&amp;dc=871&amp;perf=%7B%22timing%22:%7B%22of%22:1574388063884,%22n%22:0,%22f%22:4,%22dn%22:4,%22dne%22:4,%22c%22:4,%22ce%22:4,%22rq%22:34,%22rp%22:346,%22rpe%22:352,%22dl%22:350,%22di%22:412,%22ds%22:619,%22de%22:620,%22dc%22:668,%22l%22:668,%22le%22:672%7D,%22navigation%22:%7B%22ty%22:2%7D%7D&amp;jsonp=NREUM.setToken"></script>
<script
	src="https://connect.facebook.net/signals/config/289590961505168?v=2.9.13&amp;r=stable"
	async=""></script>
<script
	src="https://connect.facebook.net/zh_TW/sdk.js?hash=cda37d420813467f2d60facaf1c907ce&amp;ua=modern_es6"
	async="" crossorigin="anonymous"></script>
<script src="https://js-agent.newrelic.com/nr-1153.min.js"></script>
<script async="" src="https://connect.facebook.net/en_US/fbevents.js"></script>
<script type="text/javascript" async=""
	src="https://d31qbv1cthcecs.cloudfront.net/atrk.js"></script>
<script id="facebook-jssdk"
	src="//connect.facebook.net/zh_TW/sdk.js#xfbml=1&amp;version=v2.3&amp;appId=197245307016690"></script>
<script async="" src="https://www.google-analytics.com/analytics.js"></script>
<script type="text/javascript">window.NREUM||(NREUM={});NREUM.info={"beacon":"bam.nr-data.net","errorBeacon":"bam.nr-data.net","licenseKey":"1c0496e1d4","applicationID":"135496896","transactionName":"c1leEkcJDg1TRk5GWl9CXxUaFQoOQQ==","queueTime":0,"applicationTime":288,"agent":""}</script>
<script type="text/javascript">(window.NREUM||(NREUM={})).loader_config={licenseKey:"1c0496e1d4",applicationID:"135496896"};window.NREUM||(NREUM={}),__nr_require=function(n,e,t){function r(t){if(!e[t]){var i=e[t]={exports:{}};n[t][0].call(i.exports,function(e){var i=n[t][1][e];return r(i||e)},i,i.exports)}return e[t].exports}if("function"==typeof __nr_require)return __nr_require;for(var i=0;i<t.length;i++)r(t[i]);return r}({1:[function(n,e,t){function r(){}function i(n,e,t){return function(){return o(n,[u.now()].concat(f(arguments)),e?null:this,t),e?void 0:this}}var o=n("handle"),a=n(4),f=n(5),c=n("ee").get("tracer"),u=n("loader"),s=NREUM;"undefined"==typeof window.newrelic&&(newrelic=s);var p=["setPageViewName","setCustomAttribute","setErrorHandler","finished","addToTrace","inlineHit","addRelease"],d="api-",l=d+"ixn-";a(p,function(n,e){s[e]=i(d+e,!0,"api")}),s.addPageAction=i(d+"addPageAction",!0),s.setCurrentRouteName=i(d+"routeName",!0),e.exports=newrelic,s.interaction=function(){return(new r).get()};var m=r.prototype={createTracer:function(n,e){var t={},r=this,i="function"==typeof e;return o(l+"tracer",[u.now(),n,t],r),function(){if(c.emit((i?"":"no-")+"fn-start",[u.now(),r,i],t),i)try{return e.apply(this,arguments)}catch(n){throw c.emit("fn-err",[arguments,this,n],t),n}finally{c.emit("fn-end",[u.now()],t)}}}};a("actionText,setName,setAttribute,save,ignore,onEnd,getContext,end,get".split(","),function(n,e){m[e]=i(l+e)}),newrelic.noticeError=function(n,e){"string"==typeof n&&(n=new Error(n)),o("err",[n,u.now(),!1,e])}},{}],2:[function(n,e,t){function r(n,e){var t=n.getEntries();t.forEach(function(n){"first-paint"===n.name?a("timing",["fp",Math.floor(n.startTime)]):"first-contentful-paint"===n.name&&a("timing",["fcp",Math.floor(n.startTime)])})}function i(n){if(n instanceof c&&!s){var e,t=Math.round(n.timeStamp);e=t>1e12?Date.now()-t:f.now()-t,s=!0,a("timing",["fi",t,{type:n.type,fid:e}])}}if(!("init"in NREUM&&"page_view_timing"in NREUM.init&&"enabled"in NREUM.init.page_view_timing&&NREUM.init.page_view_timing.enabled===!1)){var o,a=n("handle"),f=n("loader"),c=NREUM.o.EV;if("PerformanceObserver"in window&&"function"==typeof window.PerformanceObserver){o=new PerformanceObserver(r);try{o.observe({entryTypes:["paint"]})}catch(u){}}if("addEventListener"in document){var s=!1,p=["click","keydown","mousedown","pointerdown","touchstart"];p.forEach(function(n){document.addEventListener(n,i,!1)})}}},{}],3:[function(n,e,t){function r(n,e){if(!i)return!1;if(n!==i)return!1;if(!e)return!0;if(!o)return!1;for(var t=o.split("."),r=e.split("."),a=0;a<r.length;a++)if(r[a]!==t[a])return!1;return!0}var i=null,o=null,a=/Version\/(\S+)\s+Safari/;if(navigator.userAgent){var f=navigator.userAgent,c=f.match(a);c&&f.indexOf("Chrome")===-1&&f.indexOf("Chromium")===-1&&(i="Safari",o=c[1])}e.exports={agent:i,version:o,match:r}},{}],4:[function(n,e,t){function r(n,e){var t=[],r="",o=0;for(r in n)i.call(n,r)&&(t[o]=e(r,n[r]),o+=1);return t}var i=Object.prototype.hasOwnProperty;e.exports=r},{}],5:[function(n,e,t){function r(n,e,t){e||(e=0),"undefined"==typeof t&&(t=n?n.length:0);for(var r=-1,i=t-e||0,o=Array(i<0?0:i);++r<i;)o[r]=n[e+r];return o}e.exports=r},{}],6:[function(n,e,t){e.exports={exists:"undefined"!=typeof window.performance&&window.performance.timing&&"undefined"!=typeof window.performance.timing.navigationStart}},{}],ee:[function(n,e,t){function r(){}function i(n){function e(n){return n&&n instanceof r?n:n?c(n,f,o):o()}function t(t,r,i,o){if(!d.aborted||o){n&&n(t,r,i);for(var a=e(i),f=v(t),c=f.length,u=0;u<c;u++)f[u].apply(a,r);var p=s[y[t]];return p&&p.push([b,t,r,a]),a}}function l(n,e){h[n]=v(n).concat(e)}function m(n,e){var t=h[n];if(t)for(var r=0;r<t.length;r++)t[r]===e&&t.splice(r,1)}function v(n){return h[n]||[]}function g(n){return p[n]=p[n]||i(t)}function w(n,e){u(n,function(n,t){e=e||"feature",y[t]=e,e in s||(s[e]=[])})}var h={},y={},b={on:l,addEventListener:l,removeEventListener:m,emit:t,get:g,listeners:v,context:e,buffer:w,abort:a,aborted:!1};return b}function o(){return new r}function a(){(s.api||s.feature)&&(d.aborted=!0,s=d.backlog={})}var f="nr@context",c=n("gos"),u=n(4),s={},p={},d=e.exports=i();d.backlog=s},{}],gos:[function(n,e,t){function r(n,e,t){if(i.call(n,e))return n[e];var r=t();if(Object.defineProperty&&Object.keys)try{return Object.defineProperty(n,e,{value:r,writable:!0,enumerable:!1}),r}catch(o){}return n[e]=r,r}var i=Object.prototype.hasOwnProperty;e.exports=r},{}],handle:[function(n,e,t){function r(n,e,t,r){i.buffer([n],r),i.emit(n,e,t)}var i=n("ee").get("handle");e.exports=r,r.ee=i},{}],id:[function(n,e,t){function r(n){var e=typeof n;return!n||"object"!==e&&"function"!==e?-1:n===window?0:a(n,o,function(){return i++})}var i=1,o="nr@id",a=n("gos");e.exports=r},{}],loader:[function(n,e,t){function r(){if(!x++){var n=E.info=NREUM.info,e=l.getElementsByTagName("script")[0];if(setTimeout(s.abort,3e4),!(n&&n.licenseKey&&n.applicationID&&e))return s.abort();u(y,function(e,t){n[e]||(n[e]=t)}),c("mark",["onload",a()+E.offset],null,"api");var t=l.createElement("script");t.src="https://"+n.agent,e.parentNode.insertBefore(t,e)}}function i(){"complete"===l.readyState&&o()}function o(){c("mark",["domContent",a()+E.offset],null,"api")}function a(){return O.exists&&performance.now?Math.round(performance.now()):(f=Math.max((new Date).getTime(),f))-E.offset}var f=(new Date).getTime(),c=n("handle"),u=n(4),s=n("ee"),p=n(3),d=window,l=d.document,m="addEventListener",v="attachEvent",g=d.XMLHttpRequest,w=g&&g.prototype;NREUM.o={ST:setTimeout,SI:d.setImmediate,CT:clearTimeout,XHR:g,REQ:d.Request,EV:d.Event,PR:d.Promise,MO:d.MutationObserver};var h=""+location,y={beacon:"bam.nr-data.net",errorBeacon:"bam.nr-data.net",agent:"js-agent.newrelic.com/nr-1153.min.js"},b=g&&w&&w[m]&&!/CriOS/.test(navigator.userAgent),E=e.exports={offset:f,now:a,origin:h,features:{},xhrWrappable:b,userAgent:p};n(1),n(2),l[m]?(l[m]("DOMContentLoaded",o,!1),d[m]("load",r,!1)):(l[v]("onreadystatechange",i),d[v]("onload",r)),c("mark",["firstbyte",f],null,"api");var x=0,O=n(6)},{}],"wrap-function":[function(n,e,t){function r(n){return!(n&&n instanceof Function&&n.apply&&!n[a])}var i=n("ee"),o=n(5),a="nr@original",f=Object.prototype.hasOwnProperty,c=!1;e.exports=function(n,e){function t(n,e,t,i){function nrWrapper(){var r,a,f,c;try{a=this,r=o(arguments),f="function"==typeof t?t(r,a):t||{}}catch(u){d([u,"",[r,a,i],f])}s(e+"start",[r,a,i],f);try{return c=n.apply(a,r)}catch(p){throw s(e+"err",[r,a,p],f),p}finally{s(e+"end",[r,a,c],f)}}return r(n)?n:(e||(e=""),nrWrapper[a]=n,p(n,nrWrapper),nrWrapper)}function u(n,e,i,o){i||(i="");var a,f,c,u="-"===i.charAt(0);for(c=0;c<e.length;c++)f=e[c],a=n[f],r(a)||(n[f]=t(a,u?f+i:i,o,f))}function s(t,r,i){if(!c||e){var o=c;c=!0;try{n.emit(t,r,i,e)}catch(a){d([a,t,r,i])}c=o}}function p(n,e){if(Object.defineProperty&&Object.keys)try{var t=Object.keys(n);return t.forEach(function(t){Object.defineProperty(e,t,{get:function(){return n[t]},set:function(e){return n[t]=e,e}})}),e}catch(r){d([r])}for(var i in n)f.call(n,i)&&(e[i]=n[i]);return e}function d(e){try{n.emit("internal-error",e)}catch(t){}}return n||(n=i),t.inPlace=u,t.flag=a,t}},{}]},{},["loader"]);</script>
<meta content-language="zh-TW">
<title>穿搭主題：#媜 2o19 / o6 / o7 的搭配 by 楊 雅 媜 | Dappei</title>
<link href="https://dappei.com/photos/79750" rel="canonical">
<meta content="FF09B0A90610BC1D256F5A92C739B885" name="msvalidate.01">
<meta content="Dappei 搭配 - 高質感服飾穿搭社群" property="og:site_name">
<meta content="穿搭主題：#媜 2o19 / o6 / o7 的搭配 by 楊 雅 媜  | Dappei"
	property="og:title">
<meta
	content="https://images.dappei.com/uploads/photo/image/79750/large_f165a74984645b72.jpg"
	property="og:image">
<meta
	content="快來看看 楊 雅 媜  在 Dappei 發表的穿搭，別忘了註冊會員訂閱 楊 雅 媜 ，順便幫穿搭照按個「愛心」唷！"
	property="og:description">
<meta content="https://dappei.com/photos/79750" property="og:url">
<meta content="197245307016690" property="fb:app_id">
<meta content="181811028693919" property="fb:pages">
<meta content="556335474461387" property="fb:pages">
<meta content="220137288053782" property="fb:pages">
<meta
	content="Dress / YANG Studios 
. 
楊 雅 媜 https://www.facebook.com/AMBERYANGG 
Instagram: https://instagram.com/YANG_YA_CHEN | 標籤包含：媜STYLE"
	name="description">
<meta content="媜STYLE,穿搭,時尚,搭配" name="keywords">
<link rel="stylesheet" media="screen"
	href="//fonts.googleapis.com/css?family=Noto|Ubuntu|Merriweather">
<link rel="stylesheet" media="all"
	href="/assets/application-66cd917a4d80050b1bd784146393660a.css">
<script type="text/javascript">(function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
(i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
})(window,document,'script','https://www.google-analytics.com/analytics.js','ga');

ga('create', 'UA-43685958-1', 'auto');
ga('send', 'pageview');</script>
<script src="/assets/application-6984d723560094769ab9016d7903e2c9.js"
	type="text/javascript"></script>
<script type="text/javascript">I18n.defaultLocale = "zh-TW";
I18n.locale = "zh-TW";</script>
<meta name="csrf-param" content="authenticity_token">
<meta name="csrf-token"
	content="bvK8h770g8nGIqclHA8L1bNVp9tMARZFNOMyCVhy6HuoVq4Zv3G7VtPjOMMfK0LKGYwJ9Vqtyuq+E/qXo+nB3Q==">
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

	<jsp:include page="/WEB-INF/views/header.jsp" />
	<br>
	<br>
	<br>
	<br>

	<header id="header" style="opacity: 1;">
		<div id="header-container">
			<a id="logo" href="/">Dappei 搭配 - 高質感服飾穿搭社群</a>
			<nav id="main-nav">
				<ul class="main-nav">
					<li class="dropdown"><a href="/users">用戶</a>
						<div class="dropdown-menu users" style="display: none;">
							<div class="block followers">
								<h5>本週最多訂閱(女)</h5>
								<div class="block-nav">
									<a href="/user/errorless"><img alt="JESSIE CHEN"
										src="https://images.dappei.com/uploads/user/face/17969/medium_0e28c69c394849b6.jpg"><span>+
											10</span></a><a href="/user/w890045"><img alt="W."
										src="https://images.dappei.com/uploads/user/face/26137/medium_809c97675a96d7e3.jpg"><span>+
											9</span></a><a href="/user/zhi319"><img alt="Zoe Lee"
										src="https://images.dappei.com/uploads/user/face/20941/medium_54f0fe0b118e870e.jpg"><span>+
											9</span></a><a href="/user/eyes198877han"><img alt="77涵"
										src="https://images.dappei.com/uploads/user/face/19/medium_1784e91db6528e64.jpg"><span>+
											9</span></a><a href="/user/cecily0225"><img alt="CECILY"
										src="https://images.dappei.com/uploads/user/face/20389/medium_a3032f306be1c045.jpg"><span>+
											8</span></a><a href="/user/hisusan26"><img alt="陳映如"
										src="https://images.dappei.com/uploads/user/face/16700/medium_96bd393c3099f6d0.jpg"><span>+
											7</span></a><a href="/user/mibao"><img alt="Miriam Mibao"
										src="https://images.dappei.com/uploads/user/face/16835/medium_e6e7980d9eb611fb.jpg"><span>+
											7</span></a><a href="/user/huangbb421"><img alt="黃懸 / BB"
										src="https://images.dappei.com/uploads/user/face/22981/medium_95a47d4cd5b0994c.jpg"><span>+
											6</span></a><a href="/user/Amberyang"><img alt="楊 雅 媜 "
										src="https://images.dappei.com/uploads/user/face/47414/medium_66395c0f626850b3.jpg"><span>+
											6</span></a>
								</div>
							</div>
							<div class="block followers">
								<h5>本週最多訂閱(男)</h5>
								<div class="block-nav">
									<a href="/user/familybros"><img alt="唯家"
										src="https://images.dappei.com/uploads/user/face/41/medium_dac8d6cb404b4984.jpg"><span>+
											7</span></a><a href="/user/chehaoyang7"><img alt="綿羊奶瓶"
										src="https://images.dappei.com/uploads/user/face/27301/medium_ffbc8efd2ad3214c.jpg"><span>+
											6</span></a><a href="/user/plainakko"><img alt="Akko Liu"
										src="https://images.dappei.com/uploads/user/face/14/medium_ac315d53d6cf3920.jpg"><span>+
											6</span></a><a href="/user/Chainloop"><img alt="圈入準"
										src="https://images.dappei.com/uploads/user/face/1374/medium_e88ff92196283ddd.jpg"><span>+
											5</span></a><a href="/user/brother0711"><img alt="NICK"
										src="https://images.dappei.com/uploads/user/face/7307/medium_03df834d449856f6.jpg"><span>+
											5</span></a><a href="/user/johnkuo16"><img alt="John  Bigots"
										src="https://images.dappei.com/uploads/user/face/3442/medium_85216428ab0d82d6.jpg"><span>+
											5</span></a><a href="/user/joey7821785"><img alt="Benny bee"
										src="https://images.dappei.com/uploads/user/face/561/medium_306f30aac3951362.jpg"><span>+
											4</span></a><a href="/user/szuchiWu"><img alt="Pb Wu"
										src="https://images.dappei.com/uploads/user/face/38/medium_80584158d298a798.jpg"><span>+
											4</span></a><a href="/user/RikoChang"><img alt="Rïko Chang"
										src="https://images.dappei.com/uploads/user/face/2618/medium_915e4848ff1176d5.jpg"><span>+
											3</span></a>
								</div>
							</div>
							<div class="block likes">
								<h5>本週最多喜歡</h5>
								<div class="block-nav">
									<a href="/user/emma5200"><img alt="emma5200"
										src="https://images.dappei.com/uploads/user/face/94063/medium_8497a99cca472058.jpg"><span>+28</span></a><a
										href="/user/plainakko"><img alt="Akko Liu"
										src="https://images.dappei.com/uploads/user/face/14/medium_ac315d53d6cf3920.jpg"><span>+20</span></a><a
										href="/user/uniannie"><img alt="安妮"
										src="https://images.dappei.com/uploads/user/face/78650/medium_2df44c26e1b205a6.jpg"><span>+17</span></a><a
										href="/user/eyes198877han"><img alt="77涵"
										src="https://images.dappei.com/uploads/user/face/19/medium_1784e91db6528e64.jpg"><span>+16</span></a><a
										href="/user/Chainloop"><img alt="圈入準"
										src="https://images.dappei.com/uploads/user/face/1374/medium_e88ff92196283ddd.jpg"><span>+15</span></a><a
										href="/user/familybros"><img alt="唯家"
										src="https://images.dappei.com/uploads/user/face/41/medium_dac8d6cb404b4984.jpg"><span>+13</span></a><a
										href="/user/h22250121"><img alt="馬可-有禮貌穿搭"
										src="https://images.dappei.com/uploads/user/face/92174/medium_0a9dd062ee408dec.jpg"><span>+13</span></a><a
										href="/user/sanford521"><img alt="Wei Chia"
										src="https://images.dappei.com/uploads/user/face/83959/medium_d906761120887743.jpg"><span>+12</span></a><a
										href="/user/mibao"><img alt="Miriam Mibao"
										src="https://images.dappei.com/uploads/user/face/16835/medium_e6e7980d9eb611fb.jpg"><span>+11</span></a>
								</div>
							</div>
							<div class="block comments">
								<h5>本月最多討論</h5>
								<div class="block-nav">
									<a href="/user/sfnew0125"><img alt="star hsu"
										src="https://images.dappei.com/uploads/user/face/90429/medium_0c7f6b3a1be752b3.jpg"><span>+2</span></a><a
										href="/user/Ashlly517"><img alt="林雨葶"
										src="https://images.dappei.com/uploads/user/face/50340/medium_f309c0b2a2532b0e.jpg"><span>+1</span></a><a
										href="/user/reasonchen3"><img alt="ReasOñ Chen"
										src="https://images.dappei.com/uploads/user/face/6328/medium_9b950a2b57a617a6.jpg"><span>+1</span></a><a
										href="/user/Eyezhang1117"><img alt="吳彥璋"
										src="https://images.dappei.com/uploads/user/face/93188/medium_e653c7f4ca9e0b43.jpg"><span>+1</span></a>
								</div>
							</div>
						</div></li>
					<li class="dropdown"><a href="/photos">穿搭</a>
						<div class="dropdown-menu photo">
							<div class="block category">
								<h5>搭配分類</h5>
								<div class="block-nav">
									<a class="option" href="/photos?order=id">最新</a><a
										class="option" href="/photos?order=hot">熱門</a><a
										class="option" href="/photos?order=pick">精選</a><a
										class="option" href="/photos?leaderboard=daily">本日排行</a><a
										class="option" href="/photos?leaderboard=weekly">本周排行</a><a
										class="option" href="/photos?leaderboard=monthly">本月排行</a><a
										class="option" href="/photos?category=male">男性</a><a
										class="option" href="/photos?category=female">女性</a>
								</div>
							</div>
							<div class="block style">
								<h5>熱門標籤</h5>
								<div class="block-nav">
									<a class="option" href="/styles/115">紳士</a><a class="option"
										href="/styles/68">學院風</a><a class="option" href="/styles/1126">歐美時尚</a><a
										class="option" href="/styles/751">英倫混搭</a><a class="option"
										href="/styles/6">丹寧</a><a class="option" href="/styles/2959">NORMCORE</a>
								</div>
							</div>
							<div class="block daily-hot">
								<h5>本日人氣</h5>
								<div class="block-nav">
									<a href="/photos/80674"><img
										src="https://images.dappei.com/uploads/photo/image/80674/thumb_e2c71366874b5956.jpg"
										alt="Thumb e2c71366874b5956"><span>+ 1</span></a><a
										href="/photos/80675"><img
										src="https://images.dappei.com/uploads/photo/image/80675/thumb_953094e6a32d05b3.jpg"
										alt="Thumb 953094e6a32d05b3"><span>+ 0</span></a>
								</div>
							</div>
							<div class="block weekly-hot">
								<h5>本周人氣</h5>
								<div class="block-nav">
									<a href="/photos/80646"><img
										src="https://images.dappei.com/uploads/photo/image/80646/thumb_9259215f84c4073d.jpg"
										alt="Thumb 9259215f84c4073d"><span>+ 6</span></a><a
										href="/photos/80626"><img
										src="https://images.dappei.com/uploads/photo/image/80626/thumb_230a0bd92b11797f.jpg"
										alt="Thumb 230a0bd92b11797f"><span>+ 8</span></a>
								</div>
							</div>
						</div></li>
					<li class="dropdown"><a href="/articles">文章</a>
						<div class="dropdown-menu article">
							<div class="block category">
								<h5>文章分類</h5>
								<div class="block-nav">
									<a class="option" href="/articles">所有文章</a><a class="option"
										href="/article_categories/1">流行時尚</a><a class="option"
										href="/article_categories/2">焦點人物</a><a class="option"
										href="/article_categories/3">藝文新知</a><a class="option"
										href="/article_categories/4">美日一事</a><a class="option"
										href="/article_categories/5">生活風格</a><a class="option"
										href="/article_categories/6">特別企劃</a><a class="option"
										href="/article_categories/7">人氣排行</a><a class="option"
										href="/article_categories/9">職人專欄</a>
								</div>
							</div>
							<div class="block lastest">
								<h5>最新文章</h5>
								<div class="block-nav">
									<a class="option" href="/articles/7972">格紋這麼多種到底怎麼挑？這 2
										個「格紋挑選」守則，你也能入手寫有自己名字的格紋單品！</a><a class="option"
										href="/articles/7973">有很多獨一無二的人跟你站在一起，不用怕！專訪《大餓》女主角「蔡嘉茵」，給你最坦然面對世界的勇氣</a><a
										class="option" href="/articles/7974">秋冬穿搭好選擇，用顯瘦又修身的「直筒裙」搭出
										3 種風格！</a><a class="option" href="/articles/7987">2019
										年冬天絕不能錯過的「動物紋印花」來襲，展現你的強大氣勢！</a><a class="option"
										href="/articles/7988">換件褲子質感大幅提升！盤點男子的 3
										種「寬褲穿搭」，有多舒服穿過就知道！</a><a class="option" href="/articles/7989">吃飯就是要配影片！盤點
										Netflix 裡 3 個讓餐點越吃越香的配飯好朋友！</a>
								</div>
							</div>
							<div class="block magazine">
								<h5>高質感雜誌</h5>
								<div class="block-nav">
									<a target="_blank" href="/magazines/life-is-our-canvas"><img
										alt="LIFE IS OUR CANVAS"
										src="https://images.dappei.com/uploads/magazine/image/22/small_0046e57b2f84f6d6.jpg"></a><a
										target="_blank"
										href="/magazines/start-a-trip-with-my-vans-surf"><img
										alt="穿著Vans Surf，帶領我漫遊整座城市"
										src="https://images.dappei.com/uploads/magazine/image/21/small_1b7174525bd2c2b3.jpg"></a><a
										target="_blank"
										href="/magazines/vans-surf-takes-me-to-somewhere-nice"><img
										alt="城市漫遊：帶著我的 Vans Surf 來場輕旅行"
										src="https://images.dappei.com/uploads/magazine/image/20/small_f76015113ae31972.jpg"></a><a
										target="_blank"
										href="/magazines/slightly-numb-girls-interview"><img
										alt="闇黑系閨蜜 不為人知的友情大爆料"
										src="https://images.dappei.com/uploads/magazine/image/19/small_c45d50485b734dde.jpg"></a><a
										target="_blank"
										href="/magazines/nike-air-rift-interview-with-ghost"><img
										alt="NIKE Air Rift 忍者鞋極注目復刻 專訪鬼哥深入剖析"
										src="https://images.dappei.com/uploads/magazine/image/18/small_86651645e7b8358b.jpg"></a><a
										target="_blank"
										href="/magazines/nuovo-shoes-with-sweet-and-cool-girls-2"><img
										alt="厚底涼鞋趨勢回歸 浪漫甜美與頑酷個性穿搭提案"
										src="https://images.dappei.com/uploads/magazine/image/17/small_d59253339358bc7a.jpg"></a>
								</div>
							</div>
						</div></li>
					<li class="dropdown"><a href="javascript:void(0);">更多<i
							class="fa fa-caret-down"></i></a>
						<div class="dropdown-menu more">
							<div class="block more-nav">
								<h5>更多選項</h5>
								<div class="block-nav">
									<a target="_blank" class="option" href="http://mag.dappei.com">線上雜誌</a><a
										class="option" href="/brands">品牌列表</a><a class="option"
										href="/media">合作媒體</a><a class="option" href="/collections">最新收藏</a><a
										class="option" href="/tags">最新標籤</a><a class="option"
										href="/events">線上活動</a>
								</div>
							</div>
							<div class="block brands">
								<h5>熱門品牌</h5>
								<div class="block-nav">
									<a href="/brands/431"><img
										src="https://images.dappei.com/uploads/brand/image/431/thumb_22e3b468ed6b0597.jpg"
										alt="Thumb 22e3b468ed6b0597"></a><a href="/brands/2340"><img
										src="https://images.dappei.com/uploads/brand/image/2340/thumb_c069bd6756f30bfa.jpg"
										alt="Thumb c069bd6756f30bfa"></a><a href="/brands/235"><img
										src="https://images.dappei.com/uploads/brand/image/235/thumb_48444525a4515074.jpg"
										alt="Thumb 48444525a4515074"></a><a href="/brands/1109"><img
										src="https://images.dappei.com/uploads/brand/image/1109/thumb_a2c073df744e4d41.jpg"
										alt="Thumb a2c073df744e4d41"></a><a href="/brands/542"><img
										src="https://images.dappei.com/uploads/brand/image/542/thumb_4b813f8f6a26967d.jpg"
										alt="Thumb 4b813f8f6a26967d"></a><a href="/brands/1216"><img
										src="https://images.dappei.com/uploads/brand/image/1216/thumb_9a1b3bc6cf7989a3.jpg"
										alt="Thumb 9a1b3bc6cf7989a3"></a><a href="/brands/437"><img
										src="https://images.dappei.com/uploads/brand/image/437/thumb_b9c09c29ea294c6a.jpg"
										alt="Thumb b9c09c29ea294c6a"></a><a href="/brands/433"><img
										src="https://images.dappei.com/uploads/brand/image/433/thumb_a82d304061e0df6c.jpg"
										alt="Thumb a82d304061e0df6c"></a><a href="/brands/404"><img
										src="https://images.dappei.com/uploads/brand/image/404/thumb_0d1c0663a3419032.jpg"
										alt="Thumb 0d1c0663a3419032"></a><a href="/brands/112"><img
										src="https://images.dappei.com/uploads/brand/image/112/thumb_7f4828a07097f45c.jpg"
										alt="Thumb 7f4828a07097f45c"></a><a href="/brands/2903"><img
										src="https://images.dappei.com/uploads/brand/image/2903/thumb_9912e9d5babec619.jpg"
										alt="Thumb 9912e9d5babec619"></a>
								</div>
							</div>
							<div class="block media">
								<h5>熱門媒體</h5>
								<div class="block-nav">
									<a href="/media/dappei"><img alt="Dappei"
										src="https://images.dappei.com/uploads/medium/image/18/thumb_c6a0eca5e9b579d1.jpg"></a><a
										href="/media/marie-claire"><img alt="Marie Claire 美麗佳人"
										src="https://images.dappei.com/uploads/medium/image/13/thumb_37900609097651fc.jpg"></a><a
										href="/media/mf"><img alt="MF變型男"
										src="https://images.dappei.com/uploads/medium/image/1/thumb_14bd6bb267596751.jpg"></a><a
										href="/media/ttshow"><img alt="台灣達人秀"
										src="https://images.dappei.com/uploads/medium/image/39/thumb_6fcce394202b4c08.jpg"></a><a
										href="/media/elle"><img alt="ELLE"
										src="https://images.dappei.com/uploads/medium/image/7/thumb_45fca289a3ba75d3.jpg"></a><a
										href="/media/readygo"><img alt="ReadyGo出發前"
										src="https://images.dappei.com/uploads/medium/image/43/thumb_fb946cd3b146f179.jpg"></a><a
										href="/media/juksy"><img alt="JUKSY"
										src="https://images.dappei.com/uploads/medium/image/4/thumb_2133adf065b95dc0.jpg"></a><a
										href="/media/igorgeous"><img alt="iGorgeous 妝點生活"
										src="https://images.dappei.com/uploads/medium/image/42/thumb_7a0ba34ed9504602.jpg"></a><a
										href="/media/styletc"><img alt="Styletc 樂時尚"
										src="https://images.dappei.com/uploads/medium/image/30/thumb_978d0a068c8d77e7.jpg"></a><a
										href="/media/apple-fashion"><img alt="APPLE FASHION"
										src="https://images.dappei.com/uploads/medium/image/6/thumb_156a17d3286fea4e.jpg"></a><a
										href="/media/istyle"><img alt="自由時報 iStyle 頻道"
										src="https://images.dappei.com/uploads/medium/image/26/thumb_97f41a6d5ebf5022.jpg"></a><a
										href="/media/lookin"><img alt="【LOOKin】美人時髦話題網"
										src="https://images.dappei.com/uploads/medium/image/36/thumb_df523506923b4992.jpg"></a><a
										href="/media/hk01"><img alt="香港 01"
										src="https://images.dappei.com/uploads/medium/image/46/thumb_4e4c78a7e5323f62.jpg"></a><a
										href="/media/thepolysh"><img alt="Polysh"
										src="https://images.dappei.com/uploads/medium/image/33/thumb_92d52973067cbf34.jpg"></a><a
										href="/media/shopback"><img alt="ShopBack 部落格"
										src="https://images.dappei.com/uploads/medium/image/41/thumb_4e500a3a4c460ee4.jpg"></a>
								</div>
							</div>
						</div></li>
					<li class="header-search-box"><i class="fa fa-caret-down"><div
								id="search-box-container">
								<form action="/search" accept-charset="UTF-8" method="get">
									<input name="utf8" type="hidden" value="✓"><span
										class="twitter-typeahead"
										style="position: relative; display: inline-block;"><input
										autocomplete="off" type="text" class="tt-hint" readonly=""
										spellcheck="false" tabindex="-1" dir="ltr"
										style="position: absolute; top: 0px; left: 0px; border-color: transparent; box-shadow: none; opacity: 1; background: none 0% 0%/auto repeat scroll padding-box border-box rgb(255, 255, 255);"><input
										autocomplete="off" id="search-input" name="q"
										placeholder="現在大家都在搜尋「燈心絨」" type="text" class="tt-input"
										spellcheck="false" dir="auto"
										style="position: relative; vertical-align: top; background-color: transparent;">
										<pre aria-hidden="true"
											style="position: absolute; visibility: hidden; white-space: pre; font-family: Arial; font-size: 14px; font-style: normal; font-variant: normal; font-weight: 400; word-spacing: 0px; letter-spacing: 0px; text-indent: 0px; text-rendering: auto; text-transform: none;"></pre>
										<div class="tt-menu"
											style="position: absolute; top: 100%; left: 0px; z-index: 100; display: none;">
											<div class="tt-dataset tt-dataset-search_keywords"></div>
										</div></span>
									<button>
										<i class="fa fa-search"></i>
									</button>
								</form>
							</div></i></li>
				</ul>
			</nav>
			<nav id="user-nav">
				<ul class="user-nav">
					<li class="item face"><a
						href="/user/win800122/following_photos"><img alt="Allen 訂閱的穿搭"
							src="https://images.dappei.com/default/face/small/face.jpg?timestamp=1574268722"></a></li>
					<li class="item notification"><a href="/notifications"><i
							class="icon icon-bell2"></i>通知</a></li>
					<li class="item dropdown"><a href="/user/win800122"><i
							class="icon icon-cog"></i>選單</a>
						<ul class="dropdown-menu" style="display: none;">
							<li><a href="/photos/new">上傳搭配</a></li>
							<li><a href="/user/win800122">個人頁面</a></li>
							<li><a href="/user/win800122/edit">編輯資料</a></li>
							<li><a rel="nofollow" data-method="delete" href="/logout">登出</a></li>
						</ul></li>
				</ul>
			</nav>
		</div>
	</header>
	<div data-id="94059" id="container">
		<div data-id="79750" id="display-photo" itemscope=""
			itemtype="http://schema.org/Article">
			<article id="main">
				<div class="photo-container">
					<div class="actions">
						<a class="like-photo dark " data-id="79750"
							href="javascript:void(0);"><div class="like-photo-container">
								<i class="fa fa-heart"></i><span data-counter="11">11</span>
							</div></a><a class="collect-photo  " data-id="79750"
							href="javascript:void(0);"><i class="fa fa-star"></i><span
							data-counter="0">0</span></a><a class="tag  " href="#tags-preview"><i
							class="fa fa-tag"></i>0</a><a class="comment  " href="#comments"><i
							class="fa fa-comment"></i>0</a>
					</div>
					<div class="photo">
						<img alt="適合媜STYLE的穿搭" itemprop="image"
							src="https://images.dappei.com/uploads/photo/image/79750/large_f165a74984645b72.jpg">
					</div>
					<div class="tags"></div>
				</div>
				<div class="photo-information">
					<div class="title">
						<h1 itemprop="name">穿搭主題：#媜 2o19 / o6 / o7 的搭配</h1>
					</div>
					<div class="description" itemprop="articleBody">
						<p>
							Dress / YANG Studios <br>. <br>楊 雅 媜 <a rel="nofollow"
								target="_blank" href="https://www.facebook.com/AMBERYANGG">https://www.facebook.com/AMBERYANGG</a>
							<br>Instagram: <a rel="nofollow" target="_blank"
								href="https://instagram.com/YANG_YA_CHEN">https://instagram.com/YANG_YA_CHEN</a>
						</p>
					</div>
					<div class="related-tags">
						<h2>相關標籤</h2>
						<div class="related-tags-content">
							<a class="style" href="/styles/12985">媜STYLE (109)</a>
						</div>
					</div>
					<div class="information">
						<span class="time">發表於 <span content="2019-07-31 01:22"
							itemprop="datePublished">2019-07-31 01:22</span></span>
					</div>
					<a class="facebook-share-button" target="_blank"
						href="//www.facebook.com/sharer/sharer.php?u=https%3A%2F%2Fdappei.com%2Fphotos%2F79750">喜歡這則搭配？按此分享出去吧！</a>
				</div>
				<div class="block comments" data-id="79750" id="comments">
					<div class="title">
						<h2>留言</h2>
					</div>
					<div class="content">
						<p class="no-comment">目前還沒有人留言</p>
					</div>
					<div id="comment-form">
						<div class="form">
							<textarea id="comment-textarea" placeholder="請輸入留言"></textarea>
							<div class="actions">
								<a class="button black" id="send-comment" data-id="79750"
									data-type="Photo" href="javascript:void(0);">送出</a>
							</div>
						</div>
					</div>
				</div>
			</article>
			<aside id="sidebar">
				<div id="user-profile">
					<div class="profile">
						<div class="face">
							<a href="/user/Amberyang"><img alt="楊 雅 媜 的穿搭"
								src="https://images.dappei.com/uploads/user/face/47414/large_66395c0f626850b3.jpg?timestamp=1564507325"></a>
						</div>
						<div class="information">
							<div class="name">
								<a href="/user/Amberyang"><span itemprop="author"
									itemscope="" itemtype="http://schema.org/Person"><span
										itemprop="name">楊 雅 媜 </span></span></a>
							</div>
							<div class="meta">
								<i class="fa fa-user"></i><span>1</span><i class="fa fa-users"></i><span>4978</span><i
									class="fa fa-camera"></i><span>223</span><i class="fa fa-star"></i><span>0</span>
							</div>
							<div class="actions">
								<a class="button follow-user follow-user-47414 " data-id="47414"
									href="javascript:void(0);"><i class="icon"></i><span>訂閱</span></a><a
									target="_blank" class="button black homepage"
									href="https://www.facebook.com/AMBERYANGG">個人網站</a>
							</div>
						</div>
					</div>
					<div class="lastest-photos">
						<a href="/photos/79750"><img alt="時尚穿搭：#媜 2o19 / o6 / o7 的搭配"
							src="https://images.dappei.com/uploads/photo/image/79750/thumb_f165a74984645b72.jpg"><span>+
								11</span></a><a href="/photos/79525"><img
							alt="時尚穿搭：#媜 2o19 / o5 / 16 的搭配"
							src="https://images.dappei.com/uploads/photo/image/79525/thumb_be6d2e76b1d963e4.jpg"><span>+
								7</span></a><a href="/photos/78897"><img
							alt="時尚穿搭：#媜 2o19 / o4 / 26 的搭配"
							src="https://images.dappei.com/uploads/photo/image/78897/thumb_a016ebf5cf0586a2.jpg"><span>+
								12</span></a><a href="/photos/73135"><img
							alt="時尚穿搭：#媜 2o17 / 1o / 11 的搭配"
							src="https://images.dappei.com/uploads/photo/image/73135/thumb_cb7746f3ee49ad85.jpg"><span>+
								24</span></a><a href="/photos/72611"><img
							alt="時尚穿搭：#媜 2o17 / o8 / 19 的搭配"
							src="https://images.dappei.com/uploads/photo/image/72611/thumb_100acb247f1339ae.jpg"><span>+
								20</span></a><a href="/photos/72531"><img
							alt="時尚穿搭：#媜 2o17 / o8 / 1o 的搭配"
							src="https://images.dappei.com/uploads/photo/image/72531/thumb_3225d2ab154af6b3.jpg"><span>+
								32</span></a><a href="/photos/72476"><img
							alt="時尚穿搭：#媜 2o17 / o8 / o4 的搭配"
							src="https://images.dappei.com/uploads/photo/image/72476/thumb_1852137b92412251.jpg"><span>+
								22</span></a><a href="/photos/72462"><img
							alt="時尚穿搭：#媜 2o17 / o8 / o3 的搭配"
							src="https://images.dappei.com/uploads/photo/image/72462/thumb_82df0fcf6b777f76.jpg"><span>+
								27</span></a><a href="/photos/72458"><img
							alt="時尚穿搭：#媜 2o17 / o8 / o2 的搭配"
							src="https://images.dappei.com/uploads/photo/image/72458/thumb_dd8c87804372c403.jpg"><span>+
								19</span></a>
					</div>
				</div>
				<div id="recommend-photos">
					<div class="title">
						<h3>您可能會喜歡的搭配</h3>
					</div>
					<div class="photo-list">
						<a href="/photos/80493"><img alt="時尚穿搭：葡萄蘿蔔"
							src="https://images.dappei.com/uploads/photo/image/80493/thumb_ea4d8c922f4226d2.jpg"><span>+
								10</span></a><a href="/photos/80325"><img alt="時尚穿搭：雨天outfit"
							src="https://images.dappei.com/uploads/photo/image/80325/thumb_45ba99126829bd52.jpg"><span>+
								10</span></a><a href="/photos/80524"><img alt="時尚穿搭：小魔女"
							src="https://images.dappei.com/uploads/photo/image/80524/thumb_0ddfd4445ce1fd95.jpg"><span>+
								6</span></a><a href="/photos/80592"><img alt="時尚穿搭：幹練成熟型"
							src="https://images.dappei.com/uploads/photo/image/80592/thumb_a0e2b2a7ba34c7fa.jpg"><span>+
								8</span></a><a href="/photos/80416"><img alt="時尚穿搭：有暖陽的早晨"
							src="https://images.dappei.com/uploads/photo/image/80416/thumb_cf9ca329d839b1ce.jpg"><span>+
								9</span></a><a href="/photos/80364"><img alt="時尚穿搭：Blue Temple"
							src="https://images.dappei.com/uploads/photo/image/80364/thumb_b73b4ba5d7d42b48.jpg"><span>+
								11</span></a><a href="/photos/80547"><img alt="時尚穿搭：秋天穿搭"
							src="https://images.dappei.com/uploads/photo/image/80547/thumb_b3e506a7b1174177.jpg"><span>+
								6</span></a><a href="/photos/80631"><img
							alt="時尚穿搭：《 DRESS CODE 2019 秋冬：Coat Me 》"
							src="https://images.dappei.com/uploads/photo/image/80631/thumb_83acc02a44296c56.jpg"><span>+
								4</span></a><a href="/photos/80395"><img alt="時尚穿搭：突然來的靈感!"
							src="https://images.dappei.com/uploads/photo/image/80395/thumb_a54f88ca1d48e1d8.jpg"><span>+
								13</span></a>
					</div>
				</div>
				<div id="recommend-users">
					<div class="title">
						<h3>您可能會喜歡的用戶</h3>
						<a href="/users">更多</a>
					</div>
					<div class="content">
						<ul>
							<li><a class="show-user-info" data-id="13101"
								href="/user/plusqueen"><img class="face"
									src="https://images.dappei.com/uploads/user/face/13101/small_236f92334e491425.jpg"
									alt="Small 236f92334e491425"></a>
								<div class="info">
									<div class="name">
										<a href="/user/plusqueen">Yuna葵葵</a>
									</div>
									<div class="meta">
										<i class="fa fa-user"></i><span>4</span><i class="fa fa-users"></i><span>76</span><i
											class="fa fa-camera"></i><span>80</span>
									</div>
								</div> <a class="button follow-user follow-user-13101 "
								data-id="13101" href="javascript:void(0);"><i class="icon"></i><span>訂閱</span></a></li>
							<li><a class="show-user-info" data-id="6553"
								href="/user/huangyuan585"><img class="face"
									src="https://images.dappei.com/uploads/user/face/6553/small_3780ce0968618439.jpg"
									alt="Small 3780ce0968618439"></a>
								<div class="info">
									<div class="name">
										<a href="/user/huangyuan585">Una</a>
									</div>
									<div class="meta">
										<i class="fa fa-user"></i><span>74</span><i
											class="fa fa-users"></i><span>2</span><i class="fa fa-camera"></i><span>9</span>
									</div>
								</div> <a class="button follow-user follow-user-6553 " data-id="6553"
								href="javascript:void(0);"><i class="icon"></i><span>訂閱</span></a></li>
							<li><a class="show-user-info" data-id="29436"
								href="/user/chichie04"><img class="face"
									src="https://images.dappei.com/uploads/user/face/29436/small_ac5071901afebf1c.jpg"
									alt="Small ac5071901afebf1c"></a>
								<div class="info">
									<div class="name">
										<a href="/user/chichie04">李勤</a>
									</div>
									<div class="meta">
										<i class="fa fa-user"></i><span>0</span><i class="fa fa-users"></i><span>238</span><i
											class="fa fa-camera"></i><span>61</span>
									</div>
								</div> <a class="button follow-user follow-user-29436 "
								data-id="29436" href="javascript:void(0);"><i class="icon"></i><span>訂閱</span></a></li>
							<li><a class="show-user-info" data-id="79990"
								href="/user/kktt901"><img class="face"
									src="https://images.dappei.com/uploads/user/face/79990/small_252509cd15519232.jpg"
									alt="Small 252509cd15519232"></a>
								<div class="info">
									<div class="name">
										<a href="/user/kktt901">kktt901</a>
									</div>
									<div class="meta">
										<i class="fa fa-user"></i><span>4</span><i class="fa fa-users"></i><span>48</span><i
											class="fa fa-camera"></i><span>39</span>
									</div>
								</div> <a class="button follow-user follow-user-79990 "
								data-id="79990" href="javascript:void(0);"><i class="icon"></i><span>訂閱</span></a></li>
							<li><a class="show-user-info" data-id="91255"
								href="/user/zolin"><img class="face"
									src="https://images.dappei.com/uploads/user/face/91255/small_3b634a515ba7eccc.jpg"
									alt="Small 3b634a515ba7eccc"></a>
								<div class="info">
									<div class="name">
										<a href="/user/zolin">琳以食為天</a>
									</div>
									<div class="meta">
										<i class="fa fa-user"></i><span>29</span><i
											class="fa fa-users"></i><span>57</span><i
											class="fa fa-camera"></i><span>134</span>
									</div>
								</div> <a class="button follow-user follow-user-91255 "
								data-id="91255" href="javascript:void(0);"><i class="icon"></i><span>訂閱</span></a></li>
						</ul>
					</div>
				</div>
				<div id="lastest-comments">
					<div class="title">
						<h3>最新留言</h3>
						<a href="/comments">更多</a>
					</div>
					<div class="content">
						<ul>
							<li><a href="/photos/75563#comment-82019"><img
									alt="star hsu"
									src="https://images.dappei.com/uploads/user/face/90429/small_0c7f6b3a1be752b3.jpg?timestamp=1574381489"><span>star
										hsu在「star/自由穿搭」中留言</span></a></li>
							<li><a href="/photos/56626#comment-82018"><img
									alt="Ah Bit Bit"
									src="https://images.dappei.com/uploads/user/face/12702/small_296593b7e1525905.jpg?timestamp=1574254888"><span>Ah
										Bit Bit在「喜歡墨綠色」中留言</span></a></li>
							<li><a href="/photos/75563#comment-82017"><img
									alt="Ah Bit Bit"
									src="https://images.dappei.com/uploads/user/face/12702/small_296593b7e1525905.jpg?timestamp=1574254888"><span>Ah
										Bit Bit在「star/自由穿搭」中留言</span></a></li>
							<li><a href="/photos/22666#comment-82016"><img
									alt="emma5200"
									src="https://images.dappei.com/uploads/user/face/94063/small_8497a99cca472058.jpg?timestamp=1574320796"><span>emma5200在「防曬男孩之路人覺得我是神經病～」中留言</span></a></li>
							<li><a href="/photos/80491#comment-82015"><img alt="Kai"
									src="https://images.dappei.com/uploads/user/face/90716/small_f76cce76f6443be6.jpg?timestamp=1573980185"><span>Kai在「BLUE」中留言</span></a></li>
						</ul>
					</div>
				</div>
			</aside>
		</div>
	</div>
	<div id="footer">
		<div id="footer-container">
			<div class="fanpage">
				<div class="fb-page fb_iframe_widget"
					data-adapt-container-width="true" data-height="70"
					data-hide-cover="false" data-href="https://www.facebook.com/Dappei"
					data-show-facepile="false" data-show-posts="false"
					data-small-header="true" data-width="320" fb-xfbml-state="rendered"
					fb-iframe-plugin-query="adapt_container_width=true&amp;app_id=197245307016690&amp;container_width=320&amp;height=70&amp;hide_cover=false&amp;href=https%3A%2F%2Fwww.facebook.com%2FDappei&amp;locale=zh_TW&amp;sdk=joey&amp;show_facepile=false&amp;show_posts=false&amp;small_header=true&amp;width=320">
					<span style="vertical-align: bottom; width: 320px; height: 70px;"><iframe
							name="fc7dab86f2ff4" width="320px" height="70px"
							title="fb:page Facebook Social Plugin" frameborder="0"
							allowtransparency="true" allowfullscreen="true" scrolling="no"
							allow="encrypted-media"
							src="https://www.facebook.com/v2.3/plugins/page.php?adapt_container_width=true&amp;app_id=197245307016690&amp;channel=https%3A%2F%2Fstaticxx.facebook.com%2Fconnect%2Fxd_arbiter.php%3Fversion%3D44%23cb%3Df3115c3433a4f74%26domain%3Ddappei.com%26origin%3Dhttps%253A%252F%252Fdappei.com%252Ff1a09d539e7744%26relation%3Dparent.parent&amp;container_width=320&amp;height=70&amp;hide_cover=false&amp;href=https%3A%2F%2Fwww.facebook.com%2FDappei&amp;locale=zh_TW&amp;sdk=joey&amp;show_facepile=false&amp;show_posts=false&amp;small_header=true&amp;width=320"
							style="border: none; visibility: visible; width: 320px; height: 70px;"
							class=""></iframe></span>
				</div>
				<div class="fb-page fb_iframe_widget"
					data-adapt-container-width="true" data-height="70"
					data-hide-cover="false"
					data-href="https://www.facebook.com/dappeiformale"
					data-show-facepile="false" data-show-posts="false"
					data-small-header="true" data-width="320" fb-xfbml-state="rendered"
					fb-iframe-plugin-query="adapt_container_width=true&amp;app_id=197245307016690&amp;container_width=320&amp;height=70&amp;hide_cover=false&amp;href=https%3A%2F%2Fwww.facebook.com%2Fdappeiformale&amp;locale=zh_TW&amp;sdk=joey&amp;show_facepile=false&amp;show_posts=false&amp;small_header=true&amp;width=320">
					<span style="vertical-align: bottom; width: 320px; height: 70px;"><iframe
							name="f3927da33398c8" width="320px" height="70px"
							title="fb:page Facebook Social Plugin" frameborder="0"
							allowtransparency="true" allowfullscreen="true" scrolling="no"
							allow="encrypted-media"
							src="https://www.facebook.com/v2.3/plugins/page.php?adapt_container_width=true&amp;app_id=197245307016690&amp;channel=https%3A%2F%2Fstaticxx.facebook.com%2Fconnect%2Fxd_arbiter.php%3Fversion%3D44%23cb%3Df2cc6a7a35da3a%26domain%3Ddappei.com%26origin%3Dhttps%253A%252F%252Fdappei.com%252Ff1a09d539e7744%26relation%3Dparent.parent&amp;container_width=320&amp;height=70&amp;hide_cover=false&amp;href=https%3A%2F%2Fwww.facebook.com%2Fdappeiformale&amp;locale=zh_TW&amp;sdk=joey&amp;show_facepile=false&amp;show_posts=false&amp;small_header=true&amp;width=320"
							style="border: none; visibility: visible; width: 320px; height: 70px;"
							class=""></iframe></span>
				</div>
				<div class="fb-page last fb_iframe_widget"
					data-adapt-container-width="true" data-height="70"
					data-hide-cover="false"
					data-href="https://www.facebook.com/dappeiforfemale"
					data-show-facepile="false" data-show-posts="false"
					data-small-header="true" data-width="320" fb-xfbml-state="rendered"
					fb-iframe-plugin-query="adapt_container_width=true&amp;app_id=197245307016690&amp;container_width=320&amp;height=70&amp;hide_cover=false&amp;href=https%3A%2F%2Fwww.facebook.com%2Fdappeiforfemale&amp;locale=zh_TW&amp;sdk=joey&amp;show_facepile=false&amp;show_posts=false&amp;small_header=true&amp;width=320">
					<span style="vertical-align: bottom; width: 320px; height: 70px;"><iframe
							name="f182947f52d1904" width="320px" height="70px"
							title="fb:page Facebook Social Plugin" frameborder="0"
							allowtransparency="true" allowfullscreen="true" scrolling="no"
							allow="encrypted-media"
							src="https://www.facebook.com/v2.3/plugins/page.php?adapt_container_width=true&amp;app_id=197245307016690&amp;channel=https%3A%2F%2Fstaticxx.facebook.com%2Fconnect%2Fxd_arbiter.php%3Fversion%3D44%23cb%3Df1b98001cf2eee4%26domain%3Ddappei.com%26origin%3Dhttps%253A%252F%252Fdappei.com%252Ff1a09d539e7744%26relation%3Dparent.parent&amp;container_width=320&amp;height=70&amp;hide_cover=false&amp;href=https%3A%2F%2Fwww.facebook.com%2Fdappeiforfemale&amp;locale=zh_TW&amp;sdk=joey&amp;show_facepile=false&amp;show_posts=false&amp;small_header=true&amp;width=320"
							style="border: none; visibility: visible; width: 320px; height: 70px;"
							class=""></iframe></span>
				</div>
			</div>
		</div>
		<div id="footer-nav">
			<div id="footer-nav-container">
				<a href="/about">服務介紹</a><a href="/terms-of-use">服務條款</a><a
					href="/privacy-policy">隱私權政策</a><a href="/cooperation">合作提案</a><a
					href="/brand-confirmation">品牌認證</a><a href="/brands/new">品牌帳號申請</a><a
					href="/support">問題回報</a><a href="/hire">徵才資訊</a>
			</div>
		</div>
	</div>
	<div id="fb-root" class=" fb_reset">
		<script type="text/javascript">(function(d, s, id) {
  var js, fjs = d.getElementsByTagName(s)[0];
  if (d.getElementById(id)) return;
  js = d.createElement(s); js.id = id;
  js.src = "//connect.facebook.net/zh_TW/sdk.js#xfbml=1&version=v2.3&appId=197245307016690";
  fjs.parentNode.insertBefore(js, fjs);
}(document, 'script', 'facebook-jssdk'));</script>
		<div
			style="position: absolute; top: -10000px; width: 0px; height: 0px;">
			<div></div>
			<div>
				<iframe name="fb_xdm_frame_https" id="fb_xdm_frame_https"
					aria-hidden="true"
					title="Facebook Cross Domain Communication Frame" tabindex="-1"
					frameborder="0" allowtransparency="true" allowfullscreen="true"
					scrolling="no" allow="encrypted-media"
					src="https://staticxx.facebook.com/connect/xd_arbiter.php?version=44#channel=f1a09d539e7744&amp;origin=https%3A%2F%2Fdappei.com"
					style="border: none;"></iframe>
			</div>
		</div>
	</div>
	<input name="random" type="hidden"
		value="3c4da7e837b91ef5b47b7865fac57df1">
	<script type="text/javascript">$(document).on('click', '.dappei-ad', function(){
   ga('send', 'event', $(this).attr('data-id'), 'Click', $(this).attr('href'));
});

$(document).on('click', '#display-photo .tag-image', function() {
  ga('send', 'event', 'TagImage', 'Click', $('#display-photo').attr('data-id'));
});

$(document).on('click', '#display-photo .tag-preview-image', function() {
  ga('send', 'event', 'TagPreviewImage', 'Click', $('#display-photo').attr('data-id'));
});

$(document).on('click', '#display-photo .description a', function(){
  ga('send', 'event', 'DisplayPhotoDescriptionLink', 'Click', $(this).attr('href'));
});

$(document).on('click', '#display-article #main .content a', function(){
  ga('send', 'event', 'DisplayArticleDescriptionLink', 'Click', $(this).attr('href'));
});

$(document).on('click', '#comments .content-container a' , function(){
  ga('send', 'event', 'CommentLink', 'Click', $(this).attr('href'));
});

$(document).on('click', '#display-photo #sidebar #user-profile .homepage', function(){
  ga('send', 'event', 'DisplayPhotoSidebarHomepage', 'Click', $(this).attr('href'));
});

$(document).on('click', '#display-user #user-header .information .homepage', function(){
  ga('send', 'event', 'DisplayUserProfileHomepage', 'Click', $(this).attr('href'));
});

$(document).on('click', '#display-user #user-header .description a', function(){
  ga('send', 'event', 'DisplayUserDescriptionLink', 'Click', $(this).attr('href'));
});

$(document).on('click', '#tag-panel .more.link', function(){
  ga('send', 'event', 'TagPanelBuyItInfoLink', 'Click', $(this).attr('href'));
});

$(document).on('click', '#display-tag #sidebar .more.link', function(){
  ga('send', 'event', 'DisplayTagBuyItInfoLink', 'Click', $(this).attr('href'));
});

$(document).on('click', '.buy-it', function(){
  ga('send', 'event', $(this).attr('data-event'), 'Click', $(this).attr('href'));
});

$(document).on('click', '#recommend-users .follow-user', function(){
  ga('send', 'event', 'FollowUserOnSidebar', 'Click', $(this).attr('data-id'));
});

$(document).on('click', '#missko201501-bottom', function(){
  ga('send', 'event', 'MissKoAdOnBottom201501', 'Click', $(this).attr('href'));
});

$(document).on('click', '#vans201502-index', function(){
  ga('send', 'event', 'VansAdOnIndex201501', 'Click', $(this).attr('href'));
});

$(document).on('click', '#vans201502-photo-sidebar', function(){
  ga('send', 'event', 'VansAdOnPhotoSidebar201502', 'Click', $(this).attr('href'));
});

$(document).on('click', '#share-window #fb-share', function(){
  ga('send', 'event', 'ShareWindowOnPhotoShow', 'Click', $(this).attr('href'))
});

$(document).on('click', '.social-buttons a', function(){
  if ($(this).hasClass('fb-share')) {
    ga('send', 'event', 'ShareToFacebook', 'Click', $(this).attr('data-id'));
  } else if ($(this).hasClass('gplus-share')) {
    ga('send', 'event', 'ShareToGooglePlus', 'Click', $(this).attr('data-id'));
  } else if ($(this).hasClass('twitter-share')) {
    ga('send', 'event', 'ShareToTwitter', 'Click', $(this).attr('data-id'));
  }
});</script>
	<script type="text/javascript">_atrk_opts = { atrk_acct:"xSGmi1a8s700Uk", domain:"dappei.com",dynamic: true};
(function() { var as = document.createElement('script'); as.type = 'text/javascript'; as.async = true; as.src = "https://d31qbv1cthcecs.cloudfront.net/atrk.js"; var s = document.getElementsByTagName('script')[0];s.parentNode.insertBefore(as, s); })();</script>
	<noscript>
		<img alt="" height="1"
			src="https://d5nxst8fruw4z.cloudfront.net/atrk.gif?account=xSGmi1a8s700Uk"
			style="display: none" width="1" />
	</noscript>
	<script type="text/javascript">
!function(f,b,e,v,n,t,s)
{if(f.fbq)return;n=f.fbq=function(){n.callMethod?
n.callMethod.apply(n,arguments):n.queue.push(arguments)};
if(!f._fbq)f._fbq=n;n.push=n;n.loaded=!0;n.version='2.0';
n.queue=[];t=b.createElement(e);t.async=!0;
t.src=v;s=b.getElementsByTagName(e)[0];
s.parentNode.insertBefore(t,s)}(window,document,'script',
'https://connect.facebook.net/en_US/fbevents.js');
 fbq('init', '289590961505168');
fbq('track', 'PageView');
</script>
	<noscript>
		<img height="1" width="1"
			src="https://www.facebook.com/tr?id=289590961505168&ev=PageView
&noscript=1" />
	</noscript>


	</div>
	</div>
	</div>

	<!-- ---------------------------------------------------------------------------------------------------------- -->
	<jsp:include page="/WEB-INF/views/footer.jsp" />

</body>


</html>