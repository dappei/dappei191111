<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<script type="text/javascript"
	src="https://bam.nr-data.net/1/1c0496e1d4?a=135496896&amp;v=1153.61ee9ba&amp;to=c1leEkcJDg1TRk5XQERfUwpQFU0SXlsW&amp;rst=1218&amp;ref=https://dappei.com/articles/7873&amp;ap=254&amp;be=1130&amp;fe=1186&amp;dc=1176&amp;perf=%7B%22timing%22:%7B%22of%22:1574344076544,%22n%22:0,%22u%22:292,%22ue%22:293,%22f%22:2,%22dn%22:2,%22dne%22:2,%22c%22:2,%22ce%22:2,%22rq%22:4,%22rp%22:285,%22rpe%22:289,%22dl%22:297,%22di%22:417,%22ds%22:419,%22de%22:419,%22dc%22:1130,%22l%22:1130,%22le%22:1131%7D,%22navigation%22:%7B%7D%7D&amp;fp=415&amp;fcp=415&amp;jsonp=NREUM.setToken"></script>
<script
	src="https://connect.facebook.net/signals/config/289590961505168?v=2.9.13&amp;r=stable"
	async=""></script>
<script
	src="https://connect.facebook.net/zh_TW/sdk.js?hash=5b4e58b1b04d6750a6eea77553c8c888&amp;ua=modern_es6"
	async="" crossorigin="anonymous"></script>
<script src="https://js-agent.newrelic.com/nr-1153.min.js"></script>
<script async="" src="https://connect.facebook.net/en_US/fbevents.js"></script>
<script type="text/javascript" async=""
	src="https://d31qbv1cthcecs.cloudfront.net/atrk.js"></script>
<script id="facebook-jssdk"
	src="//connect.facebook.net/zh_TW/sdk.js#xfbml=1&amp;version=v2.3&amp;appId=197245307016690"></script>
<script async="" src="https://www.google-analytics.com/analytics.js"></script>
<script type="text/javascript">window.NREUM||(NREUM={});NREUM.info={"beacon":"bam.nr-data.net","errorBeacon":"bam.nr-data.net","licenseKey":"1c0496e1d4","applicationID":"135496896","transactionName":"c1leEkcJDg1TRk5XQERfUwpQFU0SXlsW","queueTime":0,"applicationTime":254,"agent":""}</script>
<script type="text/javascript">(window.NREUM||(NREUM={})).loader_config={licenseKey:"1c0496e1d4",applicationID:"135496896"};window.NREUM||(NREUM={}),__nr_require=function(n,e,t){function r(t){if(!e[t]){var i=e[t]={exports:{}};n[t][0].call(i.exports,function(e){var i=n[t][1][e];return r(i||e)},i,i.exports)}return e[t].exports}if("function"==typeof __nr_require)return __nr_require;for(var i=0;i<t.length;i++)r(t[i]);return r}({1:[function(n,e,t){function r(){}function i(n,e,t){return function(){return o(n,[u.now()].concat(f(arguments)),e?null:this,t),e?void 0:this}}var o=n("handle"),a=n(4),f=n(5),c=n("ee").get("tracer"),u=n("loader"),s=NREUM;"undefined"==typeof window.newrelic&&(newrelic=s);var p=["setPageViewName","setCustomAttribute","setErrorHandler","finished","addToTrace","inlineHit","addRelease"],d="api-",l=d+"ixn-";a(p,function(n,e){s[e]=i(d+e,!0,"api")}),s.addPageAction=i(d+"addPageAction",!0),s.setCurrentRouteName=i(d+"routeName",!0),e.exports=newrelic,s.interaction=function(){return(new r).get()};var m=r.prototype={createTracer:function(n,e){var t={},r=this,i="function"==typeof e;return o(l+"tracer",[u.now(),n,t],r),function(){if(c.emit((i?"":"no-")+"fn-start",[u.now(),r,i],t),i)try{return e.apply(this,arguments)}catch(n){throw c.emit("fn-err",[arguments,this,n],t),n}finally{c.emit("fn-end",[u.now()],t)}}}};a("actionText,setName,setAttribute,save,ignore,onEnd,getContext,end,get".split(","),function(n,e){m[e]=i(l+e)}),newrelic.noticeError=function(n,e){"string"==typeof n&&(n=new Error(n)),o("err",[n,u.now(),!1,e])}},{}],2:[function(n,e,t){function r(n,e){var t=n.getEntries();t.forEach(function(n){"first-paint"===n.name?a("timing",["fp",Math.floor(n.startTime)]):"first-contentful-paint"===n.name&&a("timing",["fcp",Math.floor(n.startTime)])})}function i(n){if(n instanceof c&&!s){var e,t=Math.round(n.timeStamp);e=t>1e12?Date.now()-t:f.now()-t,s=!0,a("timing",["fi",t,{type:n.type,fid:e}])}}if(!("init"in NREUM&&"page_view_timing"in NREUM.init&&"enabled"in NREUM.init.page_view_timing&&NREUM.init.page_view_timing.enabled===!1)){var o,a=n("handle"),f=n("loader"),c=NREUM.o.EV;if("PerformanceObserver"in window&&"function"==typeof window.PerformanceObserver){o=new PerformanceObserver(r);try{o.observe({entryTypes:["paint"]})}catch(u){}}if("addEventListener"in document){var s=!1,p=["click","keydown","mousedown","pointerdown","touchstart"];p.forEach(function(n){document.addEventListener(n,i,!1)})}}},{}],3:[function(n,e,t){function r(n,e){if(!i)return!1;if(n!==i)return!1;if(!e)return!0;if(!o)return!1;for(var t=o.split("."),r=e.split("."),a=0;a<r.length;a++)if(r[a]!==t[a])return!1;return!0}var i=null,o=null,a=/Version\/(\S+)\s+Safari/;if(navigator.userAgent){var f=navigator.userAgent,c=f.match(a);c&&f.indexOf("Chrome")===-1&&f.indexOf("Chromium")===-1&&(i="Safari",o=c[1])}e.exports={agent:i,version:o,match:r}},{}],4:[function(n,e,t){function r(n,e){var t=[],r="",o=0;for(r in n)i.call(n,r)&&(t[o]=e(r,n[r]),o+=1);return t}var i=Object.prototype.hasOwnProperty;e.exports=r},{}],5:[function(n,e,t){function r(n,e,t){e||(e=0),"undefined"==typeof t&&(t=n?n.length:0);for(var r=-1,i=t-e||0,o=Array(i<0?0:i);++r<i;)o[r]=n[e+r];return o}e.exports=r},{}],6:[function(n,e,t){e.exports={exists:"undefined"!=typeof window.performance&&window.performance.timing&&"undefined"!=typeof window.performance.timing.navigationStart}},{}],ee:[function(n,e,t){function r(){}function i(n){function e(n){return n&&n instanceof r?n:n?c(n,f,o):o()}function t(t,r,i,o){if(!d.aborted||o){n&&n(t,r,i);for(var a=e(i),f=v(t),c=f.length,u=0;u<c;u++)f[u].apply(a,r);var p=s[y[t]];return p&&p.push([b,t,r,a]),a}}function l(n,e){h[n]=v(n).concat(e)}function m(n,e){var t=h[n];if(t)for(var r=0;r<t.length;r++)t[r]===e&&t.splice(r,1)}function v(n){return h[n]||[]}function g(n){return p[n]=p[n]||i(t)}function w(n,e){u(n,function(n,t){e=e||"feature",y[t]=e,e in s||(s[e]=[])})}var h={},y={},b={on:l,addEventListener:l,removeEventListener:m,emit:t,get:g,listeners:v,context:e,buffer:w,abort:a,aborted:!1};return b}function o(){return new r}function a(){(s.api||s.feature)&&(d.aborted=!0,s=d.backlog={})}var f="nr@context",c=n("gos"),u=n(4),s={},p={},d=e.exports=i();d.backlog=s},{}],gos:[function(n,e,t){function r(n,e,t){if(i.call(n,e))return n[e];var r=t();if(Object.defineProperty&&Object.keys)try{return Object.defineProperty(n,e,{value:r,writable:!0,enumerable:!1}),r}catch(o){}return n[e]=r,r}var i=Object.prototype.hasOwnProperty;e.exports=r},{}],handle:[function(n,e,t){function r(n,e,t,r){i.buffer([n],r),i.emit(n,e,t)}var i=n("ee").get("handle");e.exports=r,r.ee=i},{}],id:[function(n,e,t){function r(n){var e=typeof n;return!n||"object"!==e&&"function"!==e?-1:n===window?0:a(n,o,function(){return i++})}var i=1,o="nr@id",a=n("gos");e.exports=r},{}],loader:[function(n,e,t){function r(){if(!x++){var n=E.info=NREUM.info,e=l.getElementsByTagName("script")[0];if(setTimeout(s.abort,3e4),!(n&&n.licenseKey&&n.applicationID&&e))return s.abort();u(y,function(e,t){n[e]||(n[e]=t)}),c("mark",["onload",a()+E.offset],null,"api");var t=l.createElement("script");t.src="https://"+n.agent,e.parentNode.insertBefore(t,e)}}function i(){"complete"===l.readyState&&o()}function o(){c("mark",["domContent",a()+E.offset],null,"api")}function a(){return O.exists&&performance.now?Math.round(performance.now()):(f=Math.max((new Date).getTime(),f))-E.offset}var f=(new Date).getTime(),c=n("handle"),u=n(4),s=n("ee"),p=n(3),d=window,l=d.document,m="addEventListener",v="attachEvent",g=d.XMLHttpRequest,w=g&&g.prototype;NREUM.o={ST:setTimeout,SI:d.setImmediate,CT:clearTimeout,XHR:g,REQ:d.Request,EV:d.Event,PR:d.Promise,MO:d.MutationObserver};var h=""+location,y={beacon:"bam.nr-data.net",errorBeacon:"bam.nr-data.net",agent:"js-agent.newrelic.com/nr-1153.min.js"},b=g&&w&&w[m]&&!/CriOS/.test(navigator.userAgent),E=e.exports={offset:f,now:a,origin:h,features:{},xhrWrappable:b,userAgent:p};n(1),n(2),l[m]?(l[m]("DOMContentLoaded",o,!1),d[m]("load",r,!1)):(l[v]("onreadystatechange",i),d[v]("onload",r)),c("mark",["firstbyte",f],null,"api");var x=0,O=n(6)},{}],"wrap-function":[function(n,e,t){function r(n){return!(n&&n instanceof Function&&n.apply&&!n[a])}var i=n("ee"),o=n(5),a="nr@original",f=Object.prototype.hasOwnProperty,c=!1;e.exports=function(n,e){function t(n,e,t,i){function nrWrapper(){var r,a,f,c;try{a=this,r=o(arguments),f="function"==typeof t?t(r,a):t||{}}catch(u){d([u,"",[r,a,i],f])}s(e+"start",[r,a,i],f);try{return c=n.apply(a,r)}catch(p){throw s(e+"err",[r,a,p],f),p}finally{s(e+"end",[r,a,c],f)}}return r(n)?n:(e||(e=""),nrWrapper[a]=n,p(n,nrWrapper),nrWrapper)}function u(n,e,i,o){i||(i="");var a,f,c,u="-"===i.charAt(0);for(c=0;c<e.length;c++)f=e[c],a=n[f],r(a)||(n[f]=t(a,u?f+i:i,o,f))}function s(t,r,i){if(!c||e){var o=c;c=!0;try{n.emit(t,r,i,e)}catch(a){d([a,t,r,i])}c=o}}function p(n,e){if(Object.defineProperty&&Object.keys)try{var t=Object.keys(n);return t.forEach(function(t){Object.defineProperty(e,t,{get:function(){return n[t]},set:function(e){return n[t]=e,e}})}),e}catch(r){d([r])}for(var i in n)f.call(n,i)&&(e[i]=n[i]);return e}function d(e){try{n.emit("internal-error",e)}catch(t){}}return n||(n=i),t.inPlace=u,t.flag=a,t}},{}]},{},["loader"]);</script>
<meta content-language="zh-TW">
<title>你屬於哪一種類型！盤點 4 種「職場性格」與穿搭，看完馬上傳給辦公室同事！ | Dappei</title>
<link href="https://dappei.com/articles/7873" rel="canonical">
<meta content="FF09B0A90610BC1D256F5A92C739B885" name="msvalidate.01">
<meta content="Dappei 搭配 - 高質感服飾穿搭社群" property="og:site_name">
<meta content="你屬於哪一種類型！盤點 4 種「職場性格」與穿搭，看完馬上傳給辦公室同事！ | Dappei"
	property="og:title">
<meta
	content="https://images.dappei.com/uploads/article/cover/7873/large_039896c38cfbdc8f.jpg"
	property="og:image">
<meta
	content="早晨飲用一杯口感滑順的拿鐵或是藉由黑咖啡的苦澀喚醒昏沉的腦袋，提醒自己不要讓搖搖晃晃的身體再次墜入被窩的柔軟，在許多人步入職場後或許每個工作日皆是如此展開，平凡卻也想讓人細細品嚐每次點滴，試著找尋生活中的浪漫與樂趣開啟新的篇章。職場如戰場，但和擁有不同個性的夥伴一起工作相處卻無時無刻能創造出花樣百出的笑料，使充滿厭世感的日常解讀出另一種生活面貌，而這些不盡相同的個性與習慣似乎也默默影響著自己..."
	property="og:description">
<meta content="https://dappei.com/articles/7873" property="og:url">
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
	content="早晨飲用一杯口感滑順的拿鐵或是藉由黑咖啡的苦澀喚醒昏沉的腦袋，提醒自己不要讓搖搖晃晃的身體再次墜入被窩的柔軟，在許多人步入職場後或許每個工作日皆是如此展開，平凡卻也想讓人細細品嚐每次點滴，試著找尋生活中的浪漫與樂趣開啟新的篇章。職場如戰場，但和擁有不同個性的夥伴一起工作相處卻無時無刻能創造出花樣百出的笑料，使充滿厭世感的日常解讀出另一種生活面貌，而這些不盡相同的個性與習慣似乎也默默影響著自己..."
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
	content="+dXwDErVJ/qx+5qsD/rhxt6ZDUK9tFHt5+tAeFqtzRw/ceKSS1AfZaQ6BUoM3qjZdECjbKsYjUJtG4jmoTbkug==">
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

	<div class="container">
		<div data-id="94059" id="container">
			<div id="display-article">
				<div id="cover">
					<img alt="你屬於哪一種類型！盤點 4 種「職場性格」與穿搭，看完馬上傳給辦公室同事！"
						src="https://images.dappei.com/uploads/article/cover/7873/large_039896c38cfbdc8f.jpg">
					<div class="time">Nov ,10 2019</div>
					<h1>
						<a href="/articles/7873">你屬於哪一種類型！盤點 4 種「職場性格」與穿搭，看完馬上傳給辦公室同事！</a>
					</h1>
				</div>
				<div id="main">
					<div class="content">
						<p>
							早晨飲用一杯口感滑順的拿鐵或是藉由黑咖啡的<span
								style="font-style: normal; font-weight: 400;">苦澀</span>喚醒昏沉的腦袋，提醒自己不要讓搖搖晃晃的身體再次墜入被窩的柔軟，許多人步入職場後或許每個工作日皆是如此展開，平凡卻也想讓人細細品嚐每次點滴，試著找尋生活中的浪漫與樂趣開啟新的篇章。
						</p>
						<p>&nbsp;</p>
						<p>職場如戰場，但和擁有不同個性的夥伴一起工作相處卻無時無刻能創造花樣百出的笑料，使充滿厭世感的日常解讀成另一種生活面貌，而這些不盡相同的個性與習慣似乎也默默影響著自己的穿搭風格與對單品質感的堅持，那麼你認為你屬於職場中哪一種類型呢？</p>
						<p>&nbsp;</p>
						<p>▏幹練成熟型</p>
						<p>在職場中常有著辦事有條不紊、乾淨利落的印象，比起依賴他人更傾向於獨立自主的作業，處世圓滑成熟且善於溝通。在疲憊又煩亂不堪的日常工作中，總能用溫柔的視角去看待這些不完美，在大家尤其厭倦的星期一早晨，仍然能沈著應對所有繁忙事務，展露的專業性令周遭人都很欣賞。</p>
						<p>&nbsp;</p>
						<p>
							<img
								src="https://images.dappei.com/uploads/article_image/image/79437/large_68e743ea7339b08a.jpg">
						</p>
						<p>&nbsp;</p>
						<p>
							<span style="font-style: normal; font-weight: 400;">幹練成熟型者</span>擅長採用「無彩度穿搭」呈現沈穩內斂的個性美，上班族最常需要穿著白色襯衫搭配黑長褲展現正式感，這時上身建議選擇材質柔軟的無領款式，除了一樣能保留白襯衫的知性美，也易於跳脫原本過於侷限的穿衣框架，領巾中央的金屬釦環則可凝聚視線焦點，下身挑選厚實又兼具分量感的黑寬褲將質感襯托而出，
							最後套上羊毛大衣，讓灰色與格紋花色替穿搭注入低調奢華的調性。幹練成熟型者在工作中講求完美外，對於衣著品味也有其重視的一面，<span
								style="font-style: normal; font-weight: 400;">衣服不求多但求精，將衣櫃留給高品質的單品是在職場生活中逐漸意識到
								less is more 的重要性。來自丹麥時裝品牌&nbsp;ONLY
								不走快時尚路線，此次秋冬設計便是將北歐揉和紐約打造出多元且迷人的風貌，讓各位體會到即使在平淡的小日子中，也能從穿著舒適的衣服中獲得心靈滿足。</span>
						</p>
						<p>&nbsp;</p>
						<p>
							<img
								src="https://images.dappei.com/uploads/article_image/image/79485/large_c086d35244bba849.jpg">
						</p>
						<p>
							<img
								src="https://images.dappei.com/uploads/article_image/image/79436/large_4ee4de803c8f274a.jpg">
						</p>
						<p>
							Outer：復古雙面毛呢大衣 / Top：<span
								style="font-style: normal; font-weight: 400;">環扣領帶雪紡襯衫
								/&nbsp; Bottom：黑色高腰西裝寬褲</span>
						</p>
						<p>&nbsp;</p>
						<p style="font-style: normal; font-weight: 400;">▏外向交際型（外向公關型）</p>
						<p style="font-style: normal; font-weight: 400;">和學校相同，職場上也總會遇見幾個特別喜愛與他人有所連結的同事，她們願意傾聽你的無聊瑣事也樂於分享笑話與抱怨苦悶，不僅能輕鬆應對和調解各種人際關係，還熟絡各種專業人脈，將其交友圈建構的相當廣泛，並能在交際場合中與初次相見的對象相談甚歡，隨時將分寸與談話內容拿捏得很好。</p>
						<p style="font-style: normal; font-weight: 400;">&nbsp;</p>
						<p style="font-style: normal; font-weight: 400;">
							<img
								src="https://images.dappei.com/uploads/article_image/image/79418/large_f860b029cc51677b.jpg">
						</p>
						<p style="font-style: normal; font-weight: 400;">&nbsp;</p>
						<p style="font-style: normal; font-weight: 400;">
							而在穿搭方面，外向交際型者也常願意打破墨守常規的風格，例如大膽著用揉和豹紋元素的卡其風衣作為穿搭主體。秋冬裡，一件份量扎實的風衣能讓你在兼具保暖度的同時也增添時尚氣息，<span
								style="font-style: normal; font-weight: 400;">配上近年最流行的螢光色系，與</span>錯落其中的豹紋色塊更巧妙提升自身氣場；利用一件緊身針織衣製造視覺收斂效果，粗細不一的條紋與藍、黃、咖三種顏色互相調和下，營造更為豐富的變化性，牛仔中長裙不規則與抽鬚設計的下擺展現多樣化的造型，並踩上皮靴延伸整體的身形比例，配件適當的挑選能提升穿搭的細緻度與質感，黑色報童帽獨特的圓弧帽頂與帽沿剪裁，予人一種些許叛逆且又街頭的時髦氛圍，在耳環和戒指加乘下更凸顯注重細節的品味。
						</p>
						<p style="font-style: normal; font-weight: 400;">&nbsp;</p>
						<p style="font-style: normal; font-weight: 400;">
							<img
								src="https://images.dappei.com/uploads/article_image/image/79506/large_2e15bf3527c6749e.jpg">
						</p>
						<p>
							<img
								src="https://images.dappei.com/uploads/article_image/image/79419/large_64cc3ff64944e37c.jpg">
						</p>
						<p>
							Outer：棕褐豹紋拼接羽絨外套 / Top：<span
								style="font-style: normal; font-weight: 400;">撞色條紋彈力針織上衣
								/ Bottom：</span>高腰不規則開叉丹寧裙&nbsp;/ Hat：黑色毛呢海軍帽
						</p>
						<p>&nbsp;</p>
						<p>▏親切和善型（親切鄰家型）</p>
						<p>
							在需要收起稚氣展現專業性的職場裡，也有人的身上時刻帶著純粹、無邪甚至一點的傻氣，改變工作環境冷漠又壓迫的氣氛，且著實驗證<span
								style="font-style: normal; font-weight: 400;">笑容是縮短與人距離最佳的化學劑，親切和善型者不會過於強勢，懂得傾聽並用輕柔的話語表達自己的想法，於單品或是配件的選擇也多會採用視覺上看似和諧又恬靜的色彩，使氣質自然流露而出。</span>
						</p>
						<p>&nbsp;</p>
						<p>
							<img
								src="https://images.dappei.com/uploads/article_image/image/79421/large_f07c35c44a5949d4.jpg">
						</p>
						<p>&nbsp;</p>
						<p>
							分秒必爭的職場中，穿著舒適愜意並能讓自身感到自信的單品最為合適，以略為寬鬆的淺色牛仔外套營造隨和休閒感，接著肩處、袖口與手肘精緻的繡花紋樣多了一分俏皮和可愛的風格，可拆式連帽的設計則平衡單寧的率性；毛衣上不規則的色塊製造時髦氣息，<span
								style="font-style: normal; font-weight: 400;">低色階、低飽和度不過份搶眼，並</span>為整體帶出溫潤優雅的氛圍，下身裝束選擇焦糖色寬褲，讓硬挺材質加重俐落感，以一雙白色高跟鞋拉長身形並同時塑造都會女性的氣質。丹麥品牌
							ONLY 的秋冬新品分為<span style="font-style: normal; font-weight: 400;">追求突破的
								TRUE（潮流系列）、復古奢華 70 年代 LOVE （浪漫系列）與玩轉
								DENIM（丹寧系列），每種系列皆有各自強烈的風采，卻也能互相調和風格或是製造反差感藉此傳遞獨有的衣著態度。</span>
						</p>
						<p>&nbsp;</p>
						<p>
							<img
								src="https://images.dappei.com/uploads/article_image/image/79507/medium_9cb2915634c59818.jpg">
						</p>
						<p>
							<img
								src="https://images.dappei.com/uploads/article_image/image/79425/large_2d619a0e7449db59.jpg">
						</p>
						<p>
							&nbsp;Outer：印花刺繡連帽丹寧外套 / Top：<span
								style="font-style: normal; font-weight: 400;">&nbsp;寬鬆立領幾何圖紋上衣
								/ Bottom：焦糖色高腰九分寬褲</span>
						</p>
						<p>&nbsp;</p>
						<p>▏可靠任務型</p>
						<p>有些人總能將工作應對的完美無瑕，交代的事項絕對不出錯，讓人十分安心，做事井然有序有規劃，能在規定時間內完成任務，性格細心又體貼，會隨時注意細節不讓事情脫軌，深受同事們的信賴。可靠任務型者雖然常將精力集中於辦公，但同時也很注重穿衣的質感與個人風格。</p>
						<p>&nbsp;</p>
						<p>
							<img
								src="https://images.dappei.com/uploads/article_image/image/79438/large_9ada03dfad744983.jpg">
						</p>
						<p>&nbsp;</p>
						<p>
							穿著內斂不張揚，條紋襯衫的連帽與胸前織帶拉鍊設計，顛覆以往對於襯衫的商務印象，連結休閒與潮流感。寬褲為想感受舒坦愜意的最佳單品之一，牛仔材質不易髒且百搭，與襯衫混合搭配後不失正式感卻同樣保有輕鬆的感覺，佐以一雙小白鞋就能從容淡定迎接辦公戰場。套上羽絨衣時最怕無法描繪出身體線條，但
							ONLY 巧妙應用異材質、拼接、色塊等技巧減輕羽絨衣的厚重感呈現活潑性質，滑面的藍色調布料搭配米色抓絨毛製造材質差異性而<span
								style="font-style: normal; font-weight: 400;">產生層次感，</span>鮮紅與螢光橘的點綴，讓整身能抓住眼球亮點卻也不會譁眾取寵，最後於腰間繫上皮革腰包凸顯腰際線，打造高挑的曲線。
						</p>
						<p>&nbsp;</p>
						<p>
							<img
								src="https://images.dappei.com/uploads/article_image/image/79488/large_e1b21bde873906cd.jpg">
						</p>
						<p>
							<img
								src="https://images.dappei.com/uploads/article_image/image/79423/large_6f064391f27a8a1e.jpg">
						</p>
						<p>
							Outer：撞色拼接羽絨外套 / Top：<span
								style="font-style: normal; font-weight: 400;">織帶拉鍊設計條紋連帽襯衫
								/ Bottom：收腰九分丹寧寬褲</span>
						</p>
						<p>&nbsp;</p>
						<p>日常生活裡，同事們為相處時間最常的夥伴，甚至高於家人、朋友與情人，在不同的環境中每個人皆會演繹出不一樣的性格，但在時間的推移中，卻能彼此磨合成為一個擁有最舒適關係的工作團隊，你覺得有默默想起哪幾位以上
							4 種類型的同事了嗎？</p>



					</div>
				</div>
			</div>
		</div>
	</div>
<!-- ---------------------------------------------------------------------------------------------------------------------------------------------- -->
	
	<br>

	<jsp:include page="/WEB-INF/views/footer.jsp" />
</body>



</html>