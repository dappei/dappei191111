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


<!-- --------------------------------------------------------------------------------------- -->


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


<body>
	<jsp:include page="/WEB-INF/views/header2.jsp" />

	<br>
	<br>
	<br>
	<div class="container">
		<div data-id="94059" id="container">
			<div id="display-article">
				<div id="cover">
					<img alt="自然捲的男生都看過來！別讓「自然捲」成為你的髮型殺手，注意這 4 點也能讓自然捲人人稱羨！"
						src="https://images.dappei.com/uploads/article/cover/7907/large_dc1362b4d84e8d96.jpg">
					<div class="time">Nov ,05 2019</div>
					<h1>
						<a href="/articles/7907">自然捲的男生都看過來！別讓「自然捲」成為你的髮型殺手，注意這 4
							點也能讓自然捲人人稱羨！</a>
					</h1>
				</div>
				<div id="main">
					<div class="content">
						<p>每個自然捲的人一定都有怨嘆頭髮難整理的時候。依據髮質的不同就會影響髮型的選擇。但對自然捲的人來說，不論髮型是什麼，最後自然捲的魔力總會將髮型長成原先的模樣，永遠會讓整顆頭看起來巨大又毛躁，尤其是短髮造型，不能用頭髮的重量把捲度拉直，只能任毛髮自然生長。反覆燙髮又會導致頭皮和髮質受損。其實只要順應自然捲的特性，修剪時注意一些重點，自然捲也能變成一種優勢唷！</p>
						<p>&nbsp;</p>
						<p>
							<strong style="font-style: normal; font-weight: 700;">｜</strong><strong>鬢角越短越好</strong>
						</p>
						<p>&nbsp;</p>
						<p>
							<img
								src="https://images.dappei.com/uploads/article_image/image/79341/medium_67fc8aa898988225.jpg">
						</p>
						<p>&nbsp;</p>
						<p>
							因為自然捲會讓整體頭髮的蓬鬆度遠遠大於直髮，想要有直順服貼的鬢角，除非用燙髮的方式，否則鬢角會有多長就捲多長，不僅看起來凌亂無神，整理也非常費工夫。建議自然捲的男士剪髮時將鬢角剃短，留下輪廓及可。如果喜歡清爽的造型，頭頂的髮量可以短一些，讓自然捲製造的空氣厚度幫髮型變得立體，像微飛機頭。如果不習慣沒有瀏海，剪成
							undercut 的髮型也可以，頭頂的髮長可以稍長一點，自然捲自帶的蓬鬆效果，也會讓 undercut 變得更慵懶時尚。（圖片來源<a
								href="https://www.pinterest.com/pin/816277501192392356/"
								target="_blank">１</a><a
								href="https://www.pinterest.com/pin/610941505680712740/"
								target="_blank">２</a><a
								href="https://www.pinterest.com/pin/774900679616985989/"
								target="_blank">３</a>）
						</p>
						<p>&nbsp;</p>
						<p>
							<strong style="font-style: normal; font-weight: 700;">｜</strong><strong>髮尾剃高</strong>
						</p>
						<p>&nbsp;</p>
						<p>
							<img
								src="https://images.dappei.com/uploads/article_image/image/79340/medium_a4fdb3d5272a79ec.jpg">
						</p>
						<p>&nbsp;</p>
						<p>
							如果沒有要做長髮造型的男生，剪髮時建議將髮尾剃高，原因和鬢角相同，同樣是怕自然捲會讓整體造型看起來邋遢，將髮尾剃高製造髮型的線條。如果是扁頭的話，可以將剃髮的高度落在頭部的三分之一左右，上半部可以稍微長一些，讓自然捲的蓬度剛好修飾扁塌的頭部，讓髮型更完美。（圖片來源<a
								href="https://www.pinterest.com/pin/474566879485638080/"
								target="_blank">１</a><a
								href="https://www.pinterest.com/pin/751960469013516820/"
								target="_blank">２</a><a
								href="https://www.pinterest.com/pin/672443788084517385/"
								target="_blank">３</a>）
						</p>
						<p>&nbsp;</p>
						<p>
							<strong style="font-style: normal; font-weight: 700;">｜</strong><strong>避免打薄改剪層次​</strong>
						</p>
						<p>&nbsp;</p>
						<p>
							<img
								src="https://images.dappei.com/uploads/article_image/image/79339/medium_e38383e3a30de71b.jpg">
						</p>
						<p>&nbsp;</p>
						<p>
							自然捲的人常常會有頭髮毛躁的困擾，因為頭髮彎折讓表面的毛鱗片被掀開來，無法保持鎖水的狀態，所以自然捲的髮質通常都較脆弱，看起來也容易毛躁。如果再用無規則的方式打薄頭髮，可能會讓整體髮型更加凌亂，所以如果覺得頭髮太厚，可以改用剪層次的方式，從最頂端分層修剪，讓頭髮不厚重又不會顯得毛躁。（圖片來源<a
								href="https://www.pinterest.com/pin/115545546669873859/"
								target="_blank">１</a><a
								href="https://www.pinterest.com/pin/802063014866201417/"
								target="_blank">２</a><a
								href="https://www.pinterest.com/pin/630644754050920928/"
								target="_blank">３</a>）
						</p>
						<p>&nbsp;</p>
						<p>
							<strong style="font-style: normal; font-weight: 700;">｜</strong><strong>讓瀏海統一方向​</strong>
						</p>
						<p>&nbsp;</p>
						<p>
							<img
								src="https://images.dappei.com/uploads/article_image/image/79338/medium_121ba43a32a9580c.jpg">
						</p>
						<p>&nbsp;</p>
						<p>
							瀏海永遠是自然捲的痛，如果不刻意燙直，瀏海總是不會照著主人的意思生活。如果自然捲的男生想要有瀏海，建議讓瀏海整體往同一個方向梳理，統一往左、往右或是順流而下，因為捲度可能會讓瀏海難以分區，統一方向不會讓捲度影響瀏海的分線區塊，然後再稍微吹整，用指縫梳整自然捲的髮流並挑出層次，巧妙利用自然捲的特性讓瀏海有蓬鬆感，自然又不用燙髮傷髮質！（圖片來源<a
								href="https://www.pinterest.com/pin/680958406130216734/"
								target="_blank">１</a><a
								href="https://www.pinterest.com/pin/258675572334843895/"
								target="_blank">２</a><a
								href="https://www.pinterest.com/pin/515240013601487392/"
								target="_blank">３</a>）
						</p>

					</div>
				</div>
			</div>
		</div>
<!--------------------------------------- 結尾--------------------------------------------------- -->
	</div>
	

	<jsp:include page="/WEB-INF/views/footer.jsp" />



</body>
</html>

