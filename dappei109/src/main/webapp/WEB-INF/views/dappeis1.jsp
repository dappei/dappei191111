<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>dappeis1</title>

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

</head>

<body>


<html lang="zh-TW">
<head>
<meta charset="utf-8">
<script type="text/javascript"
	src="https://bam.nr-data.net/1/1c0496e1d4?a=135496896&amp;v=1153.61ee9ba&amp;to=c1leEkcJDg1TRk5XQERfUwpQFU0SXlsW&amp;rst=1543&amp;ref=https://dappei.com/articles/7907&amp;ap=1036&amp;be=1470&amp;fe=1511&amp;dc=1502&amp;perf=%7B%22timing%22:%7B%22of%22:1574250379468,%22n%22:0,%22u%22:1069,%22ue%22:1069,%22f%22:3,%22dn%22:3,%22dne%22:3,%22c%22:3,%22ce%22:3,%22rq%22:5,%22rp%22:1057,%22rpe%22:1063,%22dl%22:1074,%22di%22:1112,%22ds%22:1172,%22de%22:1172,%22dc%22:1469,%22l%22:1469,%22le%22:1471%7D,%22navigation%22:%7B%7D%7D&amp;fp=1169&amp;fcp=1169&amp;jsonp=NREUM.setToken"></script>
<script
	src="https://connect.facebook.net/signals/config/289590961505168?v=2.9.13&amp;r=stable"
	async=""></script>
<script
	src="https://connect.facebook.net/zh_TW/sdk.js?hash=d298438b670365a187c8c578579e4899&amp;ua=modern_es6"
	async="" crossorigin="anonymous"></script>
<script src="https://js-agent.newrelic.com/nr-1153.min.js"></script>
<script async="" src="https://connect.facebook.net/en_US/fbevents.js"></script>
<script type="text/javascript" async=""
	src="https://d31qbv1cthcecs.cloudfront.net/atrk.js"></script>
<script id="facebook-jssdk"
	src="//connect.facebook.net/zh_TW/sdk.js#xfbml=1&amp;version=v2.3&amp;appId=197245307016690"></script>
<script async="" src="https://www.google-analytics.com/analytics.js"></script>
<script type="text/javascript">window.NREUM||(NREUM={});NREUM.info={"beacon":"bam.nr-data.net","errorBeacon":"bam.nr-data.net","licenseKey":"1c0496e1d4","applicationID":"135496896","transactionName":"c1leEkcJDg1TRk5XQERfUwpQFU0SXlsW","queueTime":0,"applicationTime":1036,"agent":""}</script>
<script type="text/javascript">(window.NREUM||(NREUM={})).loader_config={licenseKey:"1c0496e1d4",applicationID:"135496896"};window.NREUM||(NREUM={}),__nr_require=function(n,e,t){function r(t){if(!e[t]){var i=e[t]={exports:{}};n[t][0].call(i.exports,function(e){var i=n[t][1][e];return r(i||e)},i,i.exports)}return e[t].exports}if("function"==typeof __nr_require)return __nr_require;for(var i=0;i<t.length;i++)r(t[i]);return r}({1:[function(n,e,t){function r(){}function i(n,e,t){return function(){return o(n,[u.now()].concat(f(arguments)),e?null:this,t),e?void 0:this}}var o=n("handle"),a=n(4),f=n(5),c=n("ee").get("tracer"),u=n("loader"),s=NREUM;"undefined"==typeof window.newrelic&&(newrelic=s);var p=["setPageViewName","setCustomAttribute","setErrorHandler","finished","addToTrace","inlineHit","addRelease"],d="api-",l=d+"ixn-";a(p,function(n,e){s[e]=i(d+e,!0,"api")}),s.addPageAction=i(d+"addPageAction",!0),s.setCurrentRouteName=i(d+"routeName",!0),e.exports=newrelic,s.interaction=function(){return(new r).get()};var m=r.prototype={createTracer:function(n,e){var t={},r=this,i="function"==typeof e;return o(l+"tracer",[u.now(),n,t],r),function(){if(c.emit((i?"":"no-")+"fn-start",[u.now(),r,i],t),i)try{return e.apply(this,arguments)}catch(n){throw c.emit("fn-err",[arguments,this,n],t),n}finally{c.emit("fn-end",[u.now()],t)}}}};a("actionText,setName,setAttribute,save,ignore,onEnd,getContext,end,get".split(","),function(n,e){m[e]=i(l+e)}),newrelic.noticeError=function(n,e){"string"==typeof n&&(n=new Error(n)),o("err",[n,u.now(),!1,e])}},{}],2:[function(n,e,t){function r(n,e){var t=n.getEntries();t.forEach(function(n){"first-paint"===n.name?a("timing",["fp",Math.floor(n.startTime)]):"first-contentful-paint"===n.name&&a("timing",["fcp",Math.floor(n.startTime)])})}function i(n){if(n instanceof c&&!s){var e,t=Math.round(n.timeStamp);e=t>1e12?Date.now()-t:f.now()-t,s=!0,a("timing",["fi",t,{type:n.type,fid:e}])}}if(!("init"in NREUM&&"page_view_timing"in NREUM.init&&"enabled"in NREUM.init.page_view_timing&&NREUM.init.page_view_timing.enabled===!1)){var o,a=n("handle"),f=n("loader"),c=NREUM.o.EV;if("PerformanceObserver"in window&&"function"==typeof window.PerformanceObserver){o=new PerformanceObserver(r);try{o.observe({entryTypes:["paint"]})}catch(u){}}if("addEventListener"in document){var s=!1,p=["click","keydown","mousedown","pointerdown","touchstart"];p.forEach(function(n){document.addEventListener(n,i,!1)})}}},{}],3:[function(n,e,t){function r(n,e){if(!i)return!1;if(n!==i)return!1;if(!e)return!0;if(!o)return!1;for(var t=o.split("."),r=e.split("."),a=0;a<r.length;a++)if(r[a]!==t[a])return!1;return!0}var i=null,o=null,a=/Version\/(\S+)\s+Safari/;if(navigator.userAgent){var f=navigator.userAgent,c=f.match(a);c&&f.indexOf("Chrome")===-1&&f.indexOf("Chromium")===-1&&(i="Safari",o=c[1])}e.exports={agent:i,version:o,match:r}},{}],4:[function(n,e,t){function r(n,e){var t=[],r="",o=0;for(r in n)i.call(n,r)&&(t[o]=e(r,n[r]),o+=1);return t}var i=Object.prototype.hasOwnProperty;e.exports=r},{}],5:[function(n,e,t){function r(n,e,t){e||(e=0),"undefined"==typeof t&&(t=n?n.length:0);for(var r=-1,i=t-e||0,o=Array(i<0?0:i);++r<i;)o[r]=n[e+r];return o}e.exports=r},{}],6:[function(n,e,t){e.exports={exists:"undefined"!=typeof window.performance&&window.performance.timing&&"undefined"!=typeof window.performance.timing.navigationStart}},{}],ee:[function(n,e,t){function r(){}function i(n){function e(n){return n&&n instanceof r?n:n?c(n,f,o):o()}function t(t,r,i,o){if(!d.aborted||o){n&&n(t,r,i);for(var a=e(i),f=v(t),c=f.length,u=0;u<c;u++)f[u].apply(a,r);var p=s[y[t]];return p&&p.push([b,t,r,a]),a}}function l(n,e){h[n]=v(n).concat(e)}function m(n,e){var t=h[n];if(t)for(var r=0;r<t.length;r++)t[r]===e&&t.splice(r,1)}function v(n){return h[n]||[]}function g(n){return p[n]=p[n]||i(t)}function w(n,e){u(n,function(n,t){e=e||"feature",y[t]=e,e in s||(s[e]=[])})}var h={},y={},b={on:l,addEventListener:l,removeEventListener:m,emit:t,get:g,listeners:v,context:e,buffer:w,abort:a,aborted:!1};return b}function o(){return new r}function a(){(s.api||s.feature)&&(d.aborted=!0,s=d.backlog={})}var f="nr@context",c=n("gos"),u=n(4),s={},p={},d=e.exports=i();d.backlog=s},{}],gos:[function(n,e,t){function r(n,e,t){if(i.call(n,e))return n[e];var r=t();if(Object.defineProperty&&Object.keys)try{return Object.defineProperty(n,e,{value:r,writable:!0,enumerable:!1}),r}catch(o){}return n[e]=r,r}var i=Object.prototype.hasOwnProperty;e.exports=r},{}],handle:[function(n,e,t){function r(n,e,t,r){i.buffer([n],r),i.emit(n,e,t)}var i=n("ee").get("handle");e.exports=r,r.ee=i},{}],id:[function(n,e,t){function r(n){var e=typeof n;return!n||"object"!==e&&"function"!==e?-1:n===window?0:a(n,o,function(){return i++})}var i=1,o="nr@id",a=n("gos");e.exports=r},{}],loader:[function(n,e,t){function r(){if(!x++){var n=E.info=NREUM.info,e=l.getElementsByTagName("script")[0];if(setTimeout(s.abort,3e4),!(n&&n.licenseKey&&n.applicationID&&e))return s.abort();u(y,function(e,t){n[e]||(n[e]=t)}),c("mark",["onload",a()+E.offset],null,"api");var t=l.createElement("script");t.src="https://"+n.agent,e.parentNode.insertBefore(t,e)}}function i(){"complete"===l.readyState&&o()}function o(){c("mark",["domContent",a()+E.offset],null,"api")}function a(){return O.exists&&performance.now?Math.round(performance.now()):(f=Math.max((new Date).getTime(),f))-E.offset}var f=(new Date).getTime(),c=n("handle"),u=n(4),s=n("ee"),p=n(3),d=window,l=d.document,m="addEventListener",v="attachEvent",g=d.XMLHttpRequest,w=g&&g.prototype;NREUM.o={ST:setTimeout,SI:d.setImmediate,CT:clearTimeout,XHR:g,REQ:d.Request,EV:d.Event,PR:d.Promise,MO:d.MutationObserver};var h=""+location,y={beacon:"bam.nr-data.net",errorBeacon:"bam.nr-data.net",agent:"js-agent.newrelic.com/nr-1153.min.js"},b=g&&w&&w[m]&&!/CriOS/.test(navigator.userAgent),E=e.exports={offset:f,now:a,origin:h,features:{},xhrWrappable:b,userAgent:p};n(1),n(2),l[m]?(l[m]("DOMContentLoaded",o,!1),d[m]("load",r,!1)):(l[v]("onreadystatechange",i),d[v]("onload",r)),c("mark",["firstbyte",f],null,"api");var x=0,O=n(6)},{}],"wrap-function":[function(n,e,t){function r(n){return!(n&&n instanceof Function&&n.apply&&!n[a])}var i=n("ee"),o=n(5),a="nr@original",f=Object.prototype.hasOwnProperty,c=!1;e.exports=function(n,e){function t(n,e,t,i){function nrWrapper(){var r,a,f,c;try{a=this,r=o(arguments),f="function"==typeof t?t(r,a):t||{}}catch(u){d([u,"",[r,a,i],f])}s(e+"start",[r,a,i],f);try{return c=n.apply(a,r)}catch(p){throw s(e+"err",[r,a,p],f),p}finally{s(e+"end",[r,a,c],f)}}return r(n)?n:(e||(e=""),nrWrapper[a]=n,p(n,nrWrapper),nrWrapper)}function u(n,e,i,o){i||(i="");var a,f,c,u="-"===i.charAt(0);for(c=0;c<e.length;c++)f=e[c],a=n[f],r(a)||(n[f]=t(a,u?f+i:i,o,f))}function s(t,r,i){if(!c||e){var o=c;c=!0;try{n.emit(t,r,i,e)}catch(a){d([a,t,r,i])}c=o}}function p(n,e){if(Object.defineProperty&&Object.keys)try{var t=Object.keys(n);return t.forEach(function(t){Object.defineProperty(e,t,{get:function(){return n[t]},set:function(e){return n[t]=e,e}})}),e}catch(r){d([r])}for(var i in n)f.call(n,i)&&(e[i]=n[i]);return e}function d(e){try{n.emit("internal-error",e)}catch(t){}}return n||(n=i),t.inPlace=u,t.flag=a,t}},{}]},{},["loader"]);</script>
<meta content-language="zh-TW">
<title>自然捲的男生都看過來！別讓「自然捲」成為你的髮型殺手，注意這 4 點也能讓自然捲人人稱羨！ | Dappei</title>
<link href="https://dappei.com/articles/7907" rel="canonical">
<meta content="FF09B0A90610BC1D256F5A92C739B885" name="msvalidate.01">
<meta content="Dappei 搭配 - 高質感服飾穿搭社群" property="og:site_name">
<meta content="自然捲的男生都看過來！別讓「自然捲」成為你的髮型殺手，注意這 4 點也能讓自然捲人人稱羨！ | Dappei"
	property="og:title">
<meta
	content="https://images.dappei.com/uploads/article/cover/7907/large_dc1362b4d84e8d96.jpg"
	property="og:image">
<meta
	content="每個自然捲的人一定都有怨嘆頭髮難整理的時候。依據髮質的不同就會影響髮型的選擇。但對自然捲的人來說，不論髮型是什麼，最後自然捲的魔力總會將髮型長成原先的模樣，永遠會讓整顆頭看起來巨大又毛躁，尤其是短髮造型，不能用頭髮的重量把捲度拉直，只能任毛髮自然生長。反覆燙髮又會導致頭皮和髮質受損。其實只要順應自然捲的特性，修剪時注意一些重點，自然捲也能變成一種優勢唷！"
	property="og:description">
<meta content="https://dappei.com/articles/7907" property="og:url">
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
	content="每個自然捲的人一定都有怨嘆頭髮難整理的時候。依據髮質的不同就會影響髮型的選擇。但對自然捲的人來說，不論髮型是什麼，最後自然捲的魔力總會將髮型長成原先的模樣，永遠會讓整顆頭看起來巨大又毛躁，尤其是短髮造型，不能用頭髮的重量把捲度拉直，只能任毛髮自然生長。反覆燙髮又會導致頭皮和髮質受損。其實只要順應自然捲的特性，修剪時注意一些重點，自然捲也能變成一種優勢唷！"
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
ga('set', 'dimension1', 'nonolin');
ga('set', 'dimension2', '美日一事');
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
	content="QQGtKcz5yHbwQRWBwSuE/MqLo20JR4r4INNmio1g7peHpb+3zXzw6eWAimfCD83jYFINQx/rVleqI64UdvvHMQ==">
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
									<a href="/user/zhi319"><img alt="Zoe Lee"
										src="https://images.dappei.com/uploads/user/face/20941/medium_54f0fe0b118e870e.jpg"><span>+ 12</span></a><a
										href="/user/eyes198877han"><img alt="77涵"
										src="https://images.dappei.com/uploads/user/face/19/medium_1784e91db6528e64.jpg"><span>+ 11</span></a><a
										href="/user/errorless"><img alt="JESSIE CHEN"
										src="https://images.dappei.com/uploads/user/face/17969/medium_0e28c69c394849b6.jpg"><span>+ 10</span></a><a
										href="/user/w890045"><img alt="W."
										src="https://images.dappei.com/uploads/user/face/26137/medium_809c97675a96d7e3.jpg"><span>+ 10</span></a><a
										href="/user/cecily0225"><img alt="CECILY"
										src="https://images.dappei.com/uploads/user/face/20389/medium_a3032f306be1c045.jpg"><span>+ 9</span></a><a
										href="/user/Amberyang"><img alt="楊 雅 媜 "
										src="https://images.dappei.com/uploads/user/face/47414/medium_66395c0f626850b3.jpg"><span>+ 8</span></a><a
										href="/user/mibao"><img alt="Miriam Mibao"
										src="https://images.dappei.com/uploads/user/face/16835/medium_e6e7980d9eb611fb.jpg"><span>+ 8</span></a><a
										href="/user/roseandshoes"><img alt="Bella Wang"
										src="https://images.dappei.com/uploads/user/face/764/medium_f2c7d53c02565ab4.jpg"><span>+ 7</span></a><a
										href="/user/huangbb421"><img alt="黃懸 / BB"
										src="https://images.dappei.com/uploads/user/face/22981/medium_95a47d4cd5b0994c.jpg"><span>+ 7</span></a>
								</div>
							</div>
							<div class="block followers">
								<h5>本週最多訂閱(男)</h5>
								<div class="block-nav">
									<a href="/user/johnkuo16"><img alt="John  Bigots"
										src="https://images.dappei.com/uploads/user/face/3442/medium_85216428ab0d82d6.jpg"><span>+ 7</span></a><a
										href="/user/chehaoyang7"><img alt="綿羊奶瓶"
										src="https://images.dappei.com/uploads/user/face/27301/medium_ffbc8efd2ad3214c.jpg"><span>+ 6</span></a><a
										href="/user/plainakko"><img alt="Akko Liu"
										src="https://images.dappei.com/uploads/user/face/14/medium_ac315d53d6cf3920.jpg"><span>+ 5</span></a><a
										href="/user/familybros"><img alt="唯家"
										src="https://images.dappei.com/uploads/user/face/41/medium_dac8d6cb404b4984.jpg"><span>+ 5</span></a><a
										href="/user/Chainloop"><img alt="圈入準"
										src="https://images.dappei.com/uploads/user/face/1374/medium_e88ff92196283ddd.jpg"><span>+ 5</span></a><a
										href="/user/joey7821785"><img alt="Benny bee"
										src="https://images.dappei.com/uploads/user/face/561/medium_306f30aac3951362.jpg"><span>+ 4</span></a><a
										href="/user/RikoChang"><img alt="Rïko Chang"
										src="https://images.dappei.com/uploads/user/face/2618/medium_915e4848ff1176d5.jpg"><span>+ 3</span></a><a
										href="/user/IVANC"><img alt="Ivan Chang"
										src="https://images.dappei.com/uploads/user/face/77549/medium_aed9d6da07ae1417.jpg"><span>+ 3</span></a><a
										href="/user/szuchiWu"><img alt="Pb Wu"
										src="https://images.dappei.com/uploads/user/face/38/medium_80584158d298a798.jpg"><span>+ 3</span></a>
								</div>
							</div>
							<div class="block likes">
								<h5>本週最多喜歡</h5>
								<div class="block-nav">
									<a href="/user/plainakko"><img alt="Akko Liu"
										src="https://images.dappei.com/uploads/user/face/14/medium_ac315d53d6cf3920.jpg"><span>+46</span></a><a
										href="/user/emma5200"><img alt="emma5200"
										src="https://images.dappei.com/uploads/user/face/94063/medium_8497a99cca472058.jpg"><span>+28</span></a><a
										href="/user/Chainloop"><img alt="圈入準"
										src="https://images.dappei.com/uploads/user/face/1374/medium_e88ff92196283ddd.jpg"><span>+24</span></a><a
										href="/user/uniannie"><img alt="安妮"
										src="https://images.dappei.com/uploads/user/face/78650/medium_2df44c26e1b205a6.jpg"><span>+19</span></a><a
										href="/user/eyes198877han"><img alt="77涵"
										src="https://images.dappei.com/uploads/user/face/19/medium_1784e91db6528e64.jpg"><span>+16</span></a><a
										href="/user/familybros"><img alt="唯家"
										src="https://images.dappei.com/uploads/user/face/41/medium_dac8d6cb404b4984.jpg"><span>+13</span></a><a
										href="/user/h22250121"><img alt="馬可-有禮貌穿搭"
										src="https://images.dappei.com/uploads/user/face/92174/medium_0a9dd062ee408dec.jpg"><span>+13</span></a><a
										href="/user/sanford521"><img alt="Wei Chia"
										src="https://images.dappei.com/uploads/user/face/83959/medium_d906761120887743.jpg"><span>+12</span></a><a
										href="/user/wind7220"><img alt="轟炸機"
										src="https://images.dappei.com/uploads/user/face/571/medium_f0970f9a69f9410d.jpg"><span>+12</span></a>
								</div>
							</div>
							<div class="block comments">
								<h5>本月最多討論</h5>
								<div class="block-nav">
									<a href="/user/reasonchen3"><img alt="ReasOñ Chen"
										src="https://images.dappei.com/uploads/user/face/6328/medium_9b950a2b57a617a6.jpg"><span>+1</span></a><a
										href="/user/Eyezhang1117"><img alt="吳彥璋"
										src="https://images.dappei.com/uploads/user/face/93188/medium_e653c7f4ca9e0b43.jpg"><span>+1</span></a>
								</div>
							</div>
						</div></li>
					<li class="dropdown"><a href="/photos">穿搭</a>
					<div class="dropdown-menu photo" style="display: none;">
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
									<a class="option" href="/styles/751">英倫混搭</a><a class="option"
										href="/styles/128">OVERSIZE</a><a class="option"
										href="/styles/31">條紋</a><a class="option" href="/styles/68">學院風</a><a
										class="option" href="/styles/1441">黑白搭配</a><a class="option"
										href="/styles/13557">格紋西裝</a>
								</div>
							</div>
							<div class="block daily-hot">
								<h5>本日人氣</h5>
								<div class="block-nav">
									<a href="/photos/80666"><img
										src="https://images.dappei.com/uploads/photo/image/80666/thumb_67b0af576fc70a70.jpg"
										alt="Thumb 67b0af576fc70a70"><span>+ 1</span></a><a
										href="/photos/80664"><img
										src="https://images.dappei.com/uploads/photo/image/80664/thumb_6bdd5b4774af91c3.jpg"
										alt="Thumb 6bdd5b4774af91c3"><span>+ 1</span></a>
								</div>
							</div>
							<div class="block weekly-hot">
								<h5>本周人氣</h5>
								<div class="block-nav">
									<a href="/photos/80612"><img
										src="https://images.dappei.com/uploads/photo/image/80612/thumb_2c7dfdeecf300477.jpg"
										alt="Thumb 2c7dfdeecf300477"><span>+ 7</span></a><a
										href="/photos/80626"><img
										src="https://images.dappei.com/uploads/photo/image/80626/thumb_230a0bd92b11797f.jpg"
										alt="Thumb 230a0bd92b11797f"><span>+ 7</span></a>
								</div>
							</div>
						</div></li>
					<li class="dropdown"><a href="/articles">文章</a>
					<div class="dropdown-menu article" style="display: none;">
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
									<a class="option" href="/articles/7969">多彩、圖樣好難搭？和穿搭好手 Olivia 學習「街頭穿搭」守則，你也能在街頭帥一波！</a><a
										class="option" href="/articles/7999">時間就該浪費在美好的事情上！「林果良品 4 號店」讓你醉心於 1965 美好歲月，細酌每一刻慢時光。</a><a
										class="option" href="/articles/8000">紳士魅力的迷人之處，URBANER 奧本電剪 5 周年「鬚構生活」新品發表派對，帶你領略生活的意義！</a><a
										class="option" href="/articles/7980">人生就夠苦了，咖啡就別喝苦的了！手搖品牌「不要對我尖叫」推出冬季限定熱飲溫暖你的心！</a><a
										class="option" href="/articles/7933">帶「它」上路最吸睛！盤點 8 位潮人的選車考量， 跟著全新世代 BMW 1 系列成為眾人焦點！</a><a
										class="option" href="/articles/7944">戒不掉手滑失心瘋？跟著「極簡 Youtuber」這樣做，面對網拍你也可以不為所動！</a>
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
					<div class="dropdown-menu more" style="display: none;">
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
									<a href="/brands/1109"><img
										src="https://images.dappei.com/uploads/brand/image/1109/thumb_a2c073df744e4d41.jpg"
										alt="Thumb a2c073df744e4d41"></a><a href="/brands/431"><img
										src="https://images.dappei.com/uploads/brand/image/431/thumb_22e3b468ed6b0597.jpg"
										alt="Thumb 22e3b468ed6b0597"></a><a href="/brands/2340"><img
										src="https://images.dappei.com/uploads/brand/image/2340/thumb_c069bd6756f30bfa.jpg"
										alt="Thumb c069bd6756f30bfa"></a><a href="/brands/235"><img
										src="https://images.dappei.com/uploads/brand/image/235/thumb_48444525a4515074.jpg"
										alt="Thumb 48444525a4515074"></a><a href="/brands/542"><img
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
										href="/media/hk01"><img alt="香港 01"
										src="https://images.dappei.com/uploads/medium/image/46/thumb_4e4c78a7e5323f62.jpg"></a><a
										href="/media/lookin"><img alt="【LOOKin】美人時髦話題網"
										src="https://images.dappei.com/uploads/medium/image/36/thumb_df523506923b4992.jpg"></a><a
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
										style="position: absolute; top: 0px; left: 0px; border-color: transparent; box-shadow: none; opacity: 1; background: none 0% 0% / auto repeat scroll padding-box border-box rgb(255, 255, 255);"><input
										autocomplete="off" id="search-input" name="q"
										placeholder="現在大家都在搜尋「聖誕」" type="text" class="tt-input"
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
							src="https://images.dappei.com/default/face/small/face.jpg?timestamp=1574161089"></a></li>
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
		<div id="display-article">
			<div id="cover">
				<img alt="自然捲的男生都看過來！別讓「自然捲」成為你的髮型殺手，注意這 4 點也能讓自然捲人人稱羨！"
					src="https://images.dappei.com/uploads/article/cover/7907/large_dc1362b4d84e8d96.jpg">
				<div class="time">Nov ,05 2019</div>
				<h1>
					<a href="/articles/7907">自然捲的男生都看過來！別讓「自然捲」成為你的髮型殺手，注意這 4 點也能讓自然捲人人稱羨！</a>
				</h1>
			</div>
			<div id="main">
				<div class="content">
					<p>每個自然捲的人一定都有怨嘆頭髮難整理的時候。依據髮質的不同就會影響髮型的選擇。但對自然捲的人來說，不論髮型是什麼，最後自然捲的魔力總會將髮型長成原先的模樣，永遠會讓整顆頭看起來巨大又毛躁，尤其是短髮造型，不能用頭髮的重量把捲度拉直，只能任毛髮自然生長。反覆燙髮又會導致頭皮和髮質受損。其實只要順應自然捲的特性，修剪時注意一些重點，自然捲也能變成一種優勢唷！</p>
<p>&nbsp;</p>
<p>
						<strong style="font-style:normal;font-weight:700;">｜</strong><strong>鬢角越短越好</strong>
					</p>
<p>&nbsp;</p>
<p>
						<img
							src="https://images.dappei.com/uploads/article_image/image/79341/medium_67fc8aa898988225.jpg">
					</p>
<p>&nbsp;</p>
<p>因為自然捲會讓整體頭髮的蓬鬆度遠遠大於直髮，想要有直順服貼的鬢角，除非用燙髮的方式，否則鬢角會有多長就捲多長，不僅看起來凌亂無神，整理也非常費工夫。建議自然捲的男士剪髮時將鬢角剃短，留下輪廓及可。如果喜歡清爽的造型，頭頂的髮量可以短一些，讓自然捲製造的空氣厚度幫髮型變得立體，像微飛機頭。如果不習慣沒有瀏海，剪成 undercut 的髮型也可以，頭頂的髮長可以稍長一點，自然捲自帶的蓬鬆效果，也會讓 undercut 變得更慵懶時尚。（圖片來源<a
							href="https://www.pinterest.com/pin/816277501192392356/"
							target="_blank">１</a><a
							href="https://www.pinterest.com/pin/610941505680712740/"
							target="_blank">２</a><a
							href="https://www.pinterest.com/pin/774900679616985989/"
							target="_blank">３</a>）</p>
<p>&nbsp;</p>
<p>
						<strong style="font-style:normal;font-weight:700;">｜</strong><strong>髮尾剃高</strong>
					</p>
<p>&nbsp;</p>
<p>
						<img
							src="https://images.dappei.com/uploads/article_image/image/79340/medium_a4fdb3d5272a79ec.jpg">
					</p>
<p>&nbsp;</p>
<p>如果沒有要做長髮造型的男生，剪髮時建議將髮尾剃高，原因和鬢角相同，同樣是怕自然捲會讓整體造型看起來邋遢，將髮尾剃高製造髮型的線條。如果是扁頭的話，可以將剃髮的高度落在頭部的三分之一左右，上半部可以稍微長一些，讓自然捲的蓬度剛好修飾扁塌的頭部，讓髮型更完美。（圖片來源<a
							href="https://www.pinterest.com/pin/474566879485638080/"
							target="_blank">１</a><a
							href="https://www.pinterest.com/pin/751960469013516820/"
							target="_blank">２</a><a
							href="https://www.pinterest.com/pin/672443788084517385/"
							target="_blank">３</a>）</p>
<p>&nbsp;</p>
<p>
						<strong style="font-style:normal;font-weight:700;">｜</strong><strong>避免打薄改剪層次​</strong>
					</p>
<p>&nbsp;</p>
<p>
						<img
							src="https://images.dappei.com/uploads/article_image/image/79339/medium_e38383e3a30de71b.jpg">
					</p>
<p>&nbsp;</p>
<p>自然捲的人常常會有頭髮毛躁的困擾，因為頭髮彎折讓表面的毛鱗片被掀開來，無法保持鎖水的狀態，所以自然捲的髮質通常都較脆弱，看起來也容易毛躁。如果再用無規則的方式打薄頭髮，可能會讓整體髮型更加凌亂，所以如果覺得頭髮太厚，可以改用剪層次的方式，從最頂端分層修剪，讓頭髮不厚重又不會顯得毛躁。（圖片來源<a
							href="https://www.pinterest.com/pin/115545546669873859/"
							target="_blank">１</a><a
							href="https://www.pinterest.com/pin/802063014866201417/"
							target="_blank">２</a><a
							href="https://www.pinterest.com/pin/630644754050920928/"
							target="_blank">３</a>）</p>
<p>&nbsp;</p>
<p>
						<strong style="font-style:normal;font-weight:700;">｜</strong><strong>讓瀏海統一方向​</strong>
					</p>
<p>&nbsp;</p>
<p>
						<img
							src="https://images.dappei.com/uploads/article_image/image/79338/medium_121ba43a32a9580c.jpg">
					</p>
<p>&nbsp;</p>
<p>瀏海永遠是自然捲的痛，如果不刻意燙直，瀏海總是不會照著主人的意思生活。如果自然捲的男生想要有瀏海，建議讓瀏海整體往同一個方向梳理，統一往左、往右或是順流而下，因為捲度可能會讓瀏海難以分區，統一方向不會讓捲度影響瀏海的分線區塊，然後再稍微吹整，用指縫梳整自然捲的髮流並挑出層次，巧妙利用自然捲的特性讓瀏海有蓬鬆感，自然又不用燙髮傷髮質！（圖片來源<a
							href="https://www.pinterest.com/pin/680958406130216734/"
							target="_blank">１</a><a
							href="https://www.pinterest.com/pin/258675572334843895/"
							target="_blank">２</a><a
							href="https://www.pinterest.com/pin/515240013601487392/"
							target="_blank">３</a>）</p>
<p>&nbsp;</p>
<h3>Dappei 結語：</h3>
<p>那些因為自然捲飽受困擾的男性同胞們，下次剪髮注意這些小細節，就能拯救被自然捲弄得面目全非的髮型了！</p>
<p>&nbsp;</p>
<p>
						<span style="font-weight:normal;"><span
							style="background-color:transparent;font-style:normal;font-weight:400;">文字編輯：Nono</span></span>
					</p>
<p>&nbsp;</p>
<h3>你可能也有興趣的文章：</h3>
<p>
						<a href="http://dappei.com/articles/7776" target="_blank">男士必讀！2019秋冬韓系髮型指標，跟著韓國男星照著剪一起帥一波</a>
					</p>
<p>
						<a href="http://dappei.com/articles/7758" target="_blank">別再讓髮型和上次一樣！盤點 5 種簡單俐落的「男生髮型」，好整理不怕早八睡過頭！</a>
					</p>
<p>
						<a href="http://dappei.com/articles/7872" target="_blank">男人必看！想換造型就把頭髮燙捲，盤點 5 種捲髮，率性、可愛、成熟的風格通通有！</a>
					</p>
<p>&nbsp;</p>
<p>
						<span style="font-weight:normal;"><span
							style="font-style:normal;font-weight:400;">穿搭、彩妝、旅遊美照 IG TAG </span><a
							href="http://www.instagram.com/explore/tags/%E6%88%91%E6%98%AF%E6%90%AD%E9%BB%A8/"
							target="_blank"><span
								style="font-style:normal;font-weight:400;">#我是搭黨</span></a><span
							style="font-style:normal;font-weight:400;"> </span><a
							href="http://www.instagram.com/explore/tags/iamdappeiest/"
							target="_blank"><span
								style="font-style:normal;font-weight:400;">#IamDappeiest</span></a><span
							style="font-style:normal;font-weight:400;"> 就有機會登上 Dappei 官方 IG (</span><a
							href="https://goo.gl/TiDMOH" target="_blank"><span
								style="font-style:normal;font-weight:400;">@Dappei_tw</span></a><span
							style="font-style:normal;font-weight:400;">) 或網站文章唷！</span></span>
					</p>
<p>&nbsp;</p>
<p>
						<span style="font-weight:normal;"><span
							style="font-style:normal;font-weight:400;">如果您對文章有任何問題，請</span><a
							target="_blank"><span
								style="font-style:normal;font-weight:400;">來信</span></a><span
							style="font-style:normal;font-weight:400;">或</span><a
							href="https://business.facebook.com/Dappei" target="_blank"><span
								style="font-style:normal;font-weight:400;">私訊</span></a><span
							style="font-style:normal;font-weight:400;">，我們會盡快為您處理。</span></span>
					</p>
<p>&nbsp;</p>
</div>
				<div class="pagination-center"></div>
				<div class="related-tags">
					<h4>相關標籤</h4>
					<div class="related-tags-content">
						<a class="article-category" href="/article_categories/4">分類 - 美日一事</a>
					</div>
				</div>
				<a class="facebook-share-button" target="_blank"
					href="//www.facebook.com/sharer/sharer.php?u=https%3A%2F%2Fdappei.com%2Farticles%2F7907">喜歡這則文章？按此分享出去吧！</a>
			</div>
			<aside id="sidebar">
				<div class="publisher">
					<h2>
						<a href="/media/dappei">Dappei</a>
					</h2>
					<div class="publisher-container">
						<a target="_blank" class="link homepage active"
							href="http://dappei.com">Dappei的官方網站</a><a target="_blank"
							class="link facebook active"
							href="https://www.facebook.com/Dappei">Dappei的Facebook粉絲團</a><a
							target="_blank" class="link instagram active"
							href="http://instagram.com/dappeitw/">Dappei的Instagram</a><a
							target="_blank" class="link youtube active"
							href="https://www.youtube.com/user/DappeiTV"><span
							class="translation_missing"
							title="translation missing: zh-TW.article_publisher.youtube">Youtube</span></a>
					</div>
				</div>
				<div class="facebook-like">
					<h2>喜歡這篇文章？</h2>
					<div class="like-container">
						<iframe allowtransparency="true" frameborder="0" scrolling="no"
							src="//www.facebook.com/plugins/like.php?href=https%3A%2F%2Fdappei.com%2Farticles%2F7907&amp;amp;width&amp;amp;layout=standard&amp;amp;action=like&amp;amp;show_faces=true&amp;amp;share=false&amp;amp;width=300&amp;amp;height=30&amp;amp;appId=197245307016690"
							style="border:none; overflow:hidden; width:300px; height:30px;"></iframe>
					</div>
				</div>
				<div class="photos">
					<h2>今日穿搭</h2>
					<div class="photo-container">
						<a class="photo" href="/photos?leaderboard=daily"><img
							src="https://images.dappei.com/uploads/photo/image/80584/small_bea77dff884dda86.jpg"
							alt="Small bea77dff884dda86">
						<h3>熱 　 門</h3></a><a class="photo" href="/photos?orders=pick"><img
							src="https://images.dappei.com/uploads/photo/image/80584/small_bea77dff884dda86.jpg"
							alt="Small bea77dff884dda86">
						<h3>精 　 選</h3></a><a class="photo" href="/photos?category=female"><img
							src="https://images.dappei.com/uploads/photo/image/80573/small_8060670811516460.jpg"
							alt="Small 8060670811516460">
						<h3>女 　 性</h3></a><a class="photo" href="/photos?category=male"><img
							src="https://images.dappei.com/uploads/photo/image/80590/small_ab1b579b87225313.jpg"
							alt="Small ab1b579b87225313">
						<h3>男 　 性</h3></a>
					</div>
				</div>
				<div class="tags">
					<h2>熱門標籤</h2>
					<div class="tag-container">
						<a class="tag" href="/styles/751">英倫混搭</a><a class="tag"
							href="/styles/6">丹寧</a><a class="tag" href="/styles/13565">熱帶印花</a><a
							class="tag" href="/styles/68">學院風</a><a class="tag"
							href="/styles/128">OVERSIZE</a><a class="tag" href="/styles/31">條紋</a><a
							class="tag" href="/styles/115">紳士</a><a class="tag"
							href="/styles/13557">格紋西裝</a><a class="tag" href="/styles/1441">黑白搭配</a><a
							class="tag" href="/styles/2959">NORMCORE</a><a class="tag"
							href="/styles/1126">歐美時尚</a><a class="tag" href="/styles/144">運動混搭風</a>
					</div>
				</div>
				<div class="users">
					<h2>熱門搭黨</h2>
					<a class="user face" href="/user/w890045"><img
						src="https://images.dappei.com/uploads/user/face/26137/medium_809c97675a96d7e3.jpg"
						alt="Medium 809c97675a96d7e3"></a><a class="user face"
						href="/user/eyes198877han"><img
						src="https://images.dappei.com/uploads/user/face/19/medium_1784e91db6528e64.jpg"
						alt="Medium 1784e91db6528e64"></a><a class="user face"
						href="/user/hisusan26"><img
						src="https://images.dappei.com/uploads/user/face/16700/medium_96bd393c3099f6d0.jpg"
						alt="Medium 96bd393c3099f6d0"></a><a class="user face"
						href="/user/b112820"><img
						src="https://images.dappei.com/uploads/user/face/50315/medium_85520a8cd1caf092.jpg"
						alt="Medium 85520a8cd1caf092"></a><a class="user face"
						href="/user/zhi319"><img
						src="https://images.dappei.com/uploads/user/face/20941/medium_54f0fe0b118e870e.jpg"
						alt="Medium 54f0fe0b118e870e"></a><a class="user face"
						href="/user/sunhuigin"><img
						src="https://images.dappei.com/uploads/user/face/15257/medium_3b3d9639d46368b3.jpg"
						alt="Medium 3b3d9639d46368b3"></a><a class="user face"
						href="/user/cecily0225"><img
						src="https://images.dappei.com/uploads/user/face/20389/medium_a3032f306be1c045.jpg"
						alt="Medium a3032f306be1c045"></a><a class="user face"
						href="/user/yuanyuanf"><img
						src="https://images.dappei.com/uploads/user/face/4908/medium_52d00b3b3ac113af.jpg"
						alt="Medium 52d00b3b3ac113af"></a><a class="user face"
						href="/user/roseandshoes"><img
						src="https://images.dappei.com/uploads/user/face/764/medium_f2c7d53c02565ab4.jpg"
						alt="Medium f2c7d53c02565ab4"></a><a class="user face"
						href="/user/Aileen0317"><img
						src="https://images.dappei.com/uploads/user/face/62261/medium_2cc8f8f90dc5e2bb.jpg"
						alt="Medium 2cc8f8f90dc5e2bb"></a><a class="user face"
						href="/user/ajinchan"><img
						src="https://images.dappei.com/uploads/user/face/7425/medium_60fa7614c9034192.jpg"
						alt="Medium 60fa7614c9034192"></a><a class="user face"
						href="/user/huangbb421"><img
						src="https://images.dappei.com/uploads/user/face/22981/medium_95a47d4cd5b0994c.jpg"
						alt="Medium 95a47d4cd5b0994c"></a><a class="user face"
						href="/user/chiangdenise"><img
						src="https://images.dappei.com/uploads/user/face/12984/medium_376728d0dc3ba2ba.jpg"
						alt="Medium 376728d0dc3ba2ba"></a><a class="user face"
						href="/user/Amberyang"><img
						src="https://images.dappei.com/uploads/user/face/47414/medium_66395c0f626850b3.jpg"
						alt="Medium 66395c0f626850b3"></a><a class="user face"
						href="/user/IVANC"><img
						src="https://images.dappei.com/uploads/user/face/77549/medium_aed9d6da07ae1417.jpg"
						alt="Medium aed9d6da07ae1417"></a><a class="user face"
						href="/user/e92560103"><img
						src="https://images.dappei.com/uploads/user/face/2321/medium_be3bfbcd1247e6d1.jpg"
						alt="Medium be3bfbcd1247e6d1"></a>
				</div>
				<div class="instagram">
					<h2>Instagram</h2>
					<div class="instagram-container">
						<script src="//lightwidget.com/widgets/lightwidget.js"
							type="text/javascript"></script>
						<iframe allowtransparency="true" class="lightwidget-widget"
							scrolling="no"
							src="//lightwidget.com/widgets/8eb2753720bf5ae8834961efb0433d59.html"
							style="width: 100%; border: 0px; overflow: hidden; height: 290px;"></iframe>
					</div>
				</div>
			</aside>
		</div>
		<div id="display-article-bottom">
			<h4>推薦閱讀</h4>
			<div id="articles-list">
				<div class="articles">
					<div class="article">
						<div class="cover">
							<a href="/articles/7931"><img
								src="https://images.dappei.com/uploads/article/square_cover/7931/medium_7762a722eb2129c4.jpg"
								alt="Medium 7762a722eb2129c4"></a><a class="category"
								href="/article_categories/4">美日</a>
						</div>
						<div class="info">
							<h3>
								<a href="/articles/7931">秋季楓紅妝必須有這一色點綴！「南瓜果醬色」頰彩展現慵懶血色，讓妳的妝比糖更甜！</a>
							</h3>
						</div>
					</div>
					<div class="article">
						<div class="cover">
							<a href="/articles/7810"><img
								src="https://images.dappei.com/uploads/article/square_cover/7810/medium_27f02b15983da858.jpg"
								alt="Medium 27f02b15983da858"></a><a class="category"
								href="/article_categories/4">美日</a>
						</div>
						<div class="info">
							<h3>
								<a href="/articles/7810">男生最愛 5 大「經典油頭 Undercut」髮型推薦，年底脫單有望！</a>
							</h3>
						</div>
					</div>
					<div class="article">
						<div class="cover">
							<a href="/articles/7767"><img
								src="https://images.dappei.com/uploads/article/square_cover/7767/medium_ec0b3f725f0ea41b.jpg"
								alt="Medium ec0b3f725f0ea41b"></a><a class="category"
								href="/article_categories/4">美日</a>
						</div>
						<div class="info">
							<h3>
								<a href="/articles/7767">想剪短別猶豫了，5 位「短髮女星」造型靈感簿，原來短髮這麼多選擇！</a>
							</h3>
						</div>
					</div>
					<div class="article">
						<div class="cover">
							<a href="/articles/7752"><img
								src="https://images.dappei.com/uploads/article/square_cover/7752/medium_23ab10399f7216e2.jpg"
								alt="Medium 23ab10399f7216e2"></a><a class="category"
								href="/article_categories/4">美日</a>
						</div>
						<div class="info">
							<h3>
								<a href="/articles/7752">男生髮型參考書！「布萊德彼特」9 大經典髮型，挑一個來挑戰！</a>
							</h3>
						</div>
					</div>
					<div class="article">
						<div class="cover">
							<a href="/articles/7740"><img
								src="https://images.dappei.com/uploads/article/square_cover/7740/medium_b16c0eabd90d3b87.jpg"
								alt="Medium b16c0eabd90d3b87"></a><a class="category"
								href="/article_categories/4">美日</a>
						</div>
						<div class="info">
							<h3>
								<a href="/articles/7740">換髮型前必看！「圓臉髮型」不踩雷，從短髮、及肩髮、長髮剪出完美的顯瘦小臉</a>
							</h3>
						</div>
					</div>
					<div class="article">
						<div class="cover">
							<a href="/articles/7764"><img
								src="https://images.dappei.com/uploads/article/square_cover/7764/medium_19a39a1c4d2b337e.jpg"
								alt="Medium 19a39a1c4d2b337e"></a><a class="category"
								href="/article_categories/4">美日</a>
						</div>
						<div class="info">
							<h3>
								<a href="/articles/7764">神級單品全面實測：「網傳必買腮紅刷 Top 5」媲美彩妝師神手！好用跟買型號全公開！</a>
							</h3>
						</div>
					</div>
				</div>
			</div>
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
							name="f2f8a80d6062b2" width="320px" height="70px"
							title="fb:page Facebook Social Plugin" frameborder="0"
							allowtransparency="true" allowfullscreen="true" scrolling="no"
							allow="encrypted-media"
							src="https://www.facebook.com/v2.3/plugins/page.php?adapt_container_width=true&amp;app_id=197245307016690&amp;channel=https%3A%2F%2Fstaticxx.facebook.com%2Fconnect%2Fxd_arbiter.php%3Fversion%3D44%23cb%3Df3cc96efcf71c0c%26domain%3Ddappei.com%26origin%3Dhttps%253A%252F%252Fdappei.com%252Ff2e761c4898bff%26relation%3Dparent.parent&amp;container_width=320&amp;height=70&amp;hide_cover=false&amp;href=https%3A%2F%2Fwww.facebook.com%2FDappei&amp;locale=zh_TW&amp;sdk=joey&amp;show_facepile=false&amp;show_posts=false&amp;small_header=true&amp;width=320"
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
							name="fa194259745bd" width="320px" height="70px"
							title="fb:page Facebook Social Plugin" frameborder="0"
							allowtransparency="true" allowfullscreen="true" scrolling="no"
							allow="encrypted-media"
							src="https://www.facebook.com/v2.3/plugins/page.php?adapt_container_width=true&amp;app_id=197245307016690&amp;channel=https%3A%2F%2Fstaticxx.facebook.com%2Fconnect%2Fxd_arbiter.php%3Fversion%3D44%23cb%3Df929fc34d43768%26domain%3Ddappei.com%26origin%3Dhttps%253A%252F%252Fdappei.com%252Ff2e761c4898bff%26relation%3Dparent.parent&amp;container_width=320&amp;height=70&amp;hide_cover=false&amp;href=https%3A%2F%2Fwww.facebook.com%2Fdappeiformale&amp;locale=zh_TW&amp;sdk=joey&amp;show_facepile=false&amp;show_posts=false&amp;small_header=true&amp;width=320"
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
							name="f2741976299e408" width="320px" height="70px"
							title="fb:page Facebook Social Plugin" frameborder="0"
							allowtransparency="true" allowfullscreen="true" scrolling="no"
							allow="encrypted-media"
							src="https://www.facebook.com/v2.3/plugins/page.php?adapt_container_width=true&amp;app_id=197245307016690&amp;channel=https%3A%2F%2Fstaticxx.facebook.com%2Fconnect%2Fxd_arbiter.php%3Fversion%3D44%23cb%3Df1c142c3e49279%26domain%3Ddappei.com%26origin%3Dhttps%253A%252F%252Fdappei.com%252Ff2e761c4898bff%26relation%3Dparent.parent&amp;container_width=320&amp;height=70&amp;hide_cover=false&amp;href=https%3A%2F%2Fwww.facebook.com%2Fdappeiforfemale&amp;locale=zh_TW&amp;sdk=joey&amp;show_facepile=false&amp;show_posts=false&amp;small_header=true&amp;width=320"
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
					src="https://staticxx.facebook.com/connect/xd_arbiter.php?version=44#channel=f2e761c4898bff&amp;origin=https%3A%2F%2Fdappei.com"
					style="border: none;"></iframe>
			</div>
		</div>
	</div>
	<input name="random" type="hidden"
		value="c45e4a522d1680e20adfa8917bbccd77">
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
			style="display:none" width="1" />
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
<script async="" defer="" src="//platform.instagram.com/en_US/embeds.js"
		type="text/javascript"></script>
		
		
		<jsp:include page="/WEB-INF/views/footer.jsp" />
		
		
		
</body>
</html>


</body>
</html>