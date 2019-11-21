<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<script type="text/javascript"
	src="https://bam.nr-data.net/1/1c0496e1d4?a=135496896&amp;v=1153.61ee9ba&amp;to=c1leEkcJDg1TRk5XQERfUwpQFU0SXlsW&amp;rst=987&amp;ref=https://dappei.com/articles/7969&amp;ap=253&amp;be=714&amp;fe=945&amp;dc=928&amp;perf=%7B%22timing%22:%7B%22of%22:1574345743245,%22n%22:0,%22f%22:4,%22dn%22:4,%22dne%22:4,%22c%22:4,%22ce%22:4,%22rq%22:13,%22rp%22:295,%22rpe%22:299,%22dl%22:300,%22di%22:366,%22ds%22:474,%22de%22:474,%22dc%22:713,%22l%22:713,%22le%22:716%7D,%22navigation%22:%7B%7D%7D&amp;jsonp=NREUM.setToken"></script>
<script
	src="https://connect.facebook.net/zh_TW/sdk.js?hash=5b4e58b1b04d6750a6eea77553c8c888&amp;ua=modern_es6"
	async="" crossorigin="anonymous"></script>
<script src="https://js-agent.newrelic.com/nr-1153.min.js"></script>
<script
	src="https://connect.facebook.net/signals/config/289590961505168?v=2.9.13&amp;r=stable"
	async=""></script>
<script async="" src="https://connect.facebook.net/en_US/fbevents.js"></script>
<script type="text/javascript" async=""
	src="https://d31qbv1cthcecs.cloudfront.net/atrk.js"></script>
<script id="facebook-jssdk"
	src="//connect.facebook.net/zh_TW/sdk.js#xfbml=1&amp;version=v2.3&amp;appId=197245307016690"></script>
<script async="" src="https://www.google-analytics.com/analytics.js"></script>
<script type="text/javascript">window.NREUM||(NREUM={});NREUM.info={"beacon":"bam.nr-data.net","errorBeacon":"bam.nr-data.net","licenseKey":"1c0496e1d4","applicationID":"135496896","transactionName":"c1leEkcJDg1TRk5XQERfUwpQFU0SXlsW","queueTime":0,"applicationTime":253,"agent":""}</script>
<script type="text/javascript">(window.NREUM||(NREUM={})).loader_config={licenseKey:"1c0496e1d4",applicationID:"135496896"};window.NREUM||(NREUM={}),__nr_require=function(n,e,t){function r(t){if(!e[t]){var i=e[t]={exports:{}};n[t][0].call(i.exports,function(e){var i=n[t][1][e];return r(i||e)},i,i.exports)}return e[t].exports}if("function"==typeof __nr_require)return __nr_require;for(var i=0;i<t.length;i++)r(t[i]);return r}({1:[function(n,e,t){function r(){}function i(n,e,t){return function(){return o(n,[u.now()].concat(f(arguments)),e?null:this,t),e?void 0:this}}var o=n("handle"),a=n(4),f=n(5),c=n("ee").get("tracer"),u=n("loader"),s=NREUM;"undefined"==typeof window.newrelic&&(newrelic=s);var p=["setPageViewName","setCustomAttribute","setErrorHandler","finished","addToTrace","inlineHit","addRelease"],d="api-",l=d+"ixn-";a(p,function(n,e){s[e]=i(d+e,!0,"api")}),s.addPageAction=i(d+"addPageAction",!0),s.setCurrentRouteName=i(d+"routeName",!0),e.exports=newrelic,s.interaction=function(){return(new r).get()};var m=r.prototype={createTracer:function(n,e){var t={},r=this,i="function"==typeof e;return o(l+"tracer",[u.now(),n,t],r),function(){if(c.emit((i?"":"no-")+"fn-start",[u.now(),r,i],t),i)try{return e.apply(this,arguments)}catch(n){throw c.emit("fn-err",[arguments,this,n],t),n}finally{c.emit("fn-end",[u.now()],t)}}}};a("actionText,setName,setAttribute,save,ignore,onEnd,getContext,end,get".split(","),function(n,e){m[e]=i(l+e)}),newrelic.noticeError=function(n,e){"string"==typeof n&&(n=new Error(n)),o("err",[n,u.now(),!1,e])}},{}],2:[function(n,e,t){function r(n,e){var t=n.getEntries();t.forEach(function(n){"first-paint"===n.name?a("timing",["fp",Math.floor(n.startTime)]):"first-contentful-paint"===n.name&&a("timing",["fcp",Math.floor(n.startTime)])})}function i(n){if(n instanceof c&&!s){var e,t=Math.round(n.timeStamp);e=t>1e12?Date.now()-t:f.now()-t,s=!0,a("timing",["fi",t,{type:n.type,fid:e}])}}if(!("init"in NREUM&&"page_view_timing"in NREUM.init&&"enabled"in NREUM.init.page_view_timing&&NREUM.init.page_view_timing.enabled===!1)){var o,a=n("handle"),f=n("loader"),c=NREUM.o.EV;if("PerformanceObserver"in window&&"function"==typeof window.PerformanceObserver){o=new PerformanceObserver(r);try{o.observe({entryTypes:["paint"]})}catch(u){}}if("addEventListener"in document){var s=!1,p=["click","keydown","mousedown","pointerdown","touchstart"];p.forEach(function(n){document.addEventListener(n,i,!1)})}}},{}],3:[function(n,e,t){function r(n,e){if(!i)return!1;if(n!==i)return!1;if(!e)return!0;if(!o)return!1;for(var t=o.split("."),r=e.split("."),a=0;a<r.length;a++)if(r[a]!==t[a])return!1;return!0}var i=null,o=null,a=/Version\/(\S+)\s+Safari/;if(navigator.userAgent){var f=navigator.userAgent,c=f.match(a);c&&f.indexOf("Chrome")===-1&&f.indexOf("Chromium")===-1&&(i="Safari",o=c[1])}e.exports={agent:i,version:o,match:r}},{}],4:[function(n,e,t){function r(n,e){var t=[],r="",o=0;for(r in n)i.call(n,r)&&(t[o]=e(r,n[r]),o+=1);return t}var i=Object.prototype.hasOwnProperty;e.exports=r},{}],5:[function(n,e,t){function r(n,e,t){e||(e=0),"undefined"==typeof t&&(t=n?n.length:0);for(var r=-1,i=t-e||0,o=Array(i<0?0:i);++r<i;)o[r]=n[e+r];return o}e.exports=r},{}],6:[function(n,e,t){e.exports={exists:"undefined"!=typeof window.performance&&window.performance.timing&&"undefined"!=typeof window.performance.timing.navigationStart}},{}],ee:[function(n,e,t){function r(){}function i(n){function e(n){return n&&n instanceof r?n:n?c(n,f,o):o()}function t(t,r,i,o){if(!d.aborted||o){n&&n(t,r,i);for(var a=e(i),f=v(t),c=f.length,u=0;u<c;u++)f[u].apply(a,r);var p=s[y[t]];return p&&p.push([b,t,r,a]),a}}function l(n,e){h[n]=v(n).concat(e)}function m(n,e){var t=h[n];if(t)for(var r=0;r<t.length;r++)t[r]===e&&t.splice(r,1)}function v(n){return h[n]||[]}function g(n){return p[n]=p[n]||i(t)}function w(n,e){u(n,function(n,t){e=e||"feature",y[t]=e,e in s||(s[e]=[])})}var h={},y={},b={on:l,addEventListener:l,removeEventListener:m,emit:t,get:g,listeners:v,context:e,buffer:w,abort:a,aborted:!1};return b}function o(){return new r}function a(){(s.api||s.feature)&&(d.aborted=!0,s=d.backlog={})}var f="nr@context",c=n("gos"),u=n(4),s={},p={},d=e.exports=i();d.backlog=s},{}],gos:[function(n,e,t){function r(n,e,t){if(i.call(n,e))return n[e];var r=t();if(Object.defineProperty&&Object.keys)try{return Object.defineProperty(n,e,{value:r,writable:!0,enumerable:!1}),r}catch(o){}return n[e]=r,r}var i=Object.prototype.hasOwnProperty;e.exports=r},{}],handle:[function(n,e,t){function r(n,e,t,r){i.buffer([n],r),i.emit(n,e,t)}var i=n("ee").get("handle");e.exports=r,r.ee=i},{}],id:[function(n,e,t){function r(n){var e=typeof n;return!n||"object"!==e&&"function"!==e?-1:n===window?0:a(n,o,function(){return i++})}var i=1,o="nr@id",a=n("gos");e.exports=r},{}],loader:[function(n,e,t){function r(){if(!x++){var n=E.info=NREUM.info,e=l.getElementsByTagName("script")[0];if(setTimeout(s.abort,3e4),!(n&&n.licenseKey&&n.applicationID&&e))return s.abort();u(y,function(e,t){n[e]||(n[e]=t)}),c("mark",["onload",a()+E.offset],null,"api");var t=l.createElement("script");t.src="https://"+n.agent,e.parentNode.insertBefore(t,e)}}function i(){"complete"===l.readyState&&o()}function o(){c("mark",["domContent",a()+E.offset],null,"api")}function a(){return O.exists&&performance.now?Math.round(performance.now()):(f=Math.max((new Date).getTime(),f))-E.offset}var f=(new Date).getTime(),c=n("handle"),u=n(4),s=n("ee"),p=n(3),d=window,l=d.document,m="addEventListener",v="attachEvent",g=d.XMLHttpRequest,w=g&&g.prototype;NREUM.o={ST:setTimeout,SI:d.setImmediate,CT:clearTimeout,XHR:g,REQ:d.Request,EV:d.Event,PR:d.Promise,MO:d.MutationObserver};var h=""+location,y={beacon:"bam.nr-data.net",errorBeacon:"bam.nr-data.net",agent:"js-agent.newrelic.com/nr-1153.min.js"},b=g&&w&&w[m]&&!/CriOS/.test(navigator.userAgent),E=e.exports={offset:f,now:a,origin:h,features:{},xhrWrappable:b,userAgent:p};n(1),n(2),l[m]?(l[m]("DOMContentLoaded",o,!1),d[m]("load",r,!1)):(l[v]("onreadystatechange",i),d[v]("onload",r)),c("mark",["firstbyte",f],null,"api");var x=0,O=n(6)},{}],"wrap-function":[function(n,e,t){function r(n){return!(n&&n instanceof Function&&n.apply&&!n[a])}var i=n("ee"),o=n(5),a="nr@original",f=Object.prototype.hasOwnProperty,c=!1;e.exports=function(n,e){function t(n,e,t,i){function nrWrapper(){var r,a,f,c;try{a=this,r=o(arguments),f="function"==typeof t?t(r,a):t||{}}catch(u){d([u,"",[r,a,i],f])}s(e+"start",[r,a,i],f);try{return c=n.apply(a,r)}catch(p){throw s(e+"err",[r,a,p],f),p}finally{s(e+"end",[r,a,c],f)}}return r(n)?n:(e||(e=""),nrWrapper[a]=n,p(n,nrWrapper),nrWrapper)}function u(n,e,i,o){i||(i="");var a,f,c,u="-"===i.charAt(0);for(c=0;c<e.length;c++)f=e[c],a=n[f],r(a)||(n[f]=t(a,u?f+i:i,o,f))}function s(t,r,i){if(!c||e){var o=c;c=!0;try{n.emit(t,r,i,e)}catch(a){d([a,t,r,i])}c=o}}function p(n,e){if(Object.defineProperty&&Object.keys)try{var t=Object.keys(n);return t.forEach(function(t){Object.defineProperty(e,t,{get:function(){return n[t]},set:function(e){return n[t]=e,e}})}),e}catch(r){d([r])}for(var i in n)f.call(n,i)&&(e[i]=n[i]);return e}function d(e){try{n.emit("internal-error",e)}catch(t){}}return n||(n=i),t.inPlace=u,t.flag=a,t}},{}]},{},["loader"]);</script>
<meta content-language="zh-TW">
<title>多彩、圖樣好難搭？和穿搭好手 Olivia 學習「街頭穿搭」守則，你也能在街頭帥一波！ | Dappei</title>
<link href="https://dappei.com/articles/7969" rel="canonical">
<meta content="FF09B0A90610BC1D256F5A92C739B885" name="msvalidate.01">
<meta content="Dappei 搭配 - 高質感服飾穿搭社群" property="og:site_name">
<meta content="多彩、圖樣好難搭？和穿搭好手 Olivia 學習「街頭穿搭」守則，你也能在街頭帥一波！ | Dappei"
	property="og:title">
<meta
	content="https://images.dappei.com/uploads/article/cover/7969/large_f7eadf5425268add.jpg"
	property="og:image">
<meta
	content="雖然穿搭最簡單的方式就是素面、顏色少，但偶爾還是很想依照心情穿得多彩繽紛，只是礙於擔心自己搭配功力不足，讓整體看起來眼花撩亂不夠和諧，反而適得其反，但其實只要抓到一些小訣竅，多彩穿搭其實很好駕馭，像是 Dappei 這次要介紹的一位穿搭客 Olivia 就非常擅長多彩的街頭穿搭，就跟著她一起學習吧！"
	property="og:description">
<meta content="https://dappei.com/articles/7969" property="og:url">
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
	content="雖然穿搭最簡單的方式就是素面、顏色少，但偶爾還是很想依照心情穿得多彩繽紛，只是礙於擔心自己搭配功力不足，讓整體看起來眼花撩亂不夠和諧，反而適得其反，但其實只要抓到一些小訣竅，多彩穿搭其實很好駕馭，像是 Dappei 這次要介紹的一位穿搭客 Olivia 就非常擅長多彩的街頭穿搭，就跟著她一起學習吧！"
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
ga('set', 'dimension1', '蘇靖雅');
ga('set', 'dimension2', '流行時尚');
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
	content="MmFQAFuRXxCg87HQw0xAOmRmqR6sMhGrqLrdJomALyv0xUKeWhRnj7UyLjbAaAklzr8HMLqezQQiShW4chsGjQ==">
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

	<div class="container">
		<div data-id="94059" id="container">
			<div id="display-article">
				<div id="cover">
					<img alt="多彩、圖樣好難搭？和穿搭好手 Olivia 學習「街頭穿搭」守則，你也能在街頭帥一波！"
						src="https://images.dappei.com/uploads/article/cover/7969/large_f7eadf5425268add.jpg">
					<div class="time">Nov ,20 2019</div>
					<h1>
						<a href="/articles/7969">多彩、圖樣好難搭？和穿搭好手 Olivia
							學習「街頭穿搭」守則，你也能在街頭帥一波！</a>
					</h1>
				</div>
				<div id="main">
					<div class="content">
						<p>
							雖然穿搭最簡單的方式就是素面、顏色少，但偶爾還是很想依照心情穿得多彩繽紛，只是礙於擔心自己搭配功力不足，讓整體看起來眼花撩亂不夠和諧，反而適得其反，但其實只要抓到一些小訣竅，多彩的街頭穿搭其實很好駕馭，像是
							<a href="https://dappei.com/" target="_blank">Dappei</a>
							這次要介紹的一位穿搭客 / 模特 Olivia 就非常擅長街頭穿搭風格，就跟著她一起學習吧！
						</p>
						<p>&nbsp;</p>
						<h3>▎休閒單品避免邋遢三技巧</h3>
						<p>街頭穿搭少不了的衛衣，是許多女孩擔心穿成睡衣的單品（畢竟我們真的會穿衛衣睡覺），但依照 Olivia
							以下幾個小技巧，就能一掃衛衣 = 睡衣的疑慮：</p>
						<p>&nbsp;</p>
						<p>
							<strong>✔ 技巧一：顏色及圖樣</strong>
						</p>
						<p>雖然黑白灰好搭，但灰色總是予人休閒印象，因此不妨挑選顏色飽和、明亮的衛衣，便能大大降低衛衣過於休閒的感覺，或是挑選有大圖樣的衛衣，就能讓整體有了聚焦重點，多了幾分認真打扮的感受。</p>
						<p>&nbsp;</p>
						<p>
							→&nbsp;<a href="https://dappei.com/articles/3195" target="_blank">誰說衛衣穿不出女人味？以下
								8 招學起來，讓你走在校園想低調都難</a>
						</p>
						<p>&nbsp;</p>
						<p>
							<img
								src="https://images.dappei.com/uploads/article_image/image/79774/medium_c91312956486f314.jpg"><img
								src="https://images.dappei.com/uploads/article_image/image/79775/medium_9424780b884c0d3b.jpg">
						</p>
						<p>&nbsp;</p>
						<p>
							<strong>✔ 技巧二：紮入褲中</strong>
						</p>
						<p>
							這也是一個讓衛衣避免變成睡衣的超簡單方式，只要將衛衣前擺紮入褲中，就會顯得較有精神，也能顯出腰線讓比例更臻完美，或是像&nbsp;<span
								style="font-style: normal; font-weight: 400;">Olivia
								使用皮帶，不僅讓穿搭更完整也有了更多細節。</span>
						</p>
						<p>&nbsp;</p>
						<p>
							→&nbsp;<a href="https://dappei.com/articles/7893" target="_blank">紮衣服如何甩開土味？謹守
								4 大「紮衣服法則」，修身顯瘦又時髦！</a>
						</p>
						<p>
							→<a href="https://dappei.com/articles/7565" target="_blank">「腰帶」不是隨便繫就好！這
								3 個因素絕對影響穿搭視覺效果！</a>
						</p>
						<p>&nbsp;</p>
						<p>
							<img
								src="https://images.dappei.com/uploads/article_image/image/79777/medium_78e0bfa9b0ed40bf.jpg">
						</p>
						<p>&nbsp;</p>
						<p>
							<strong>✔ 技巧三：褲款搭配</strong>
						</p>
						<p>
							如果你的衛衣都很素面，顏色也是基本的黑白灰，也可以逆向操作從褲款下手，像&nbsp;<span
								style="font-style: normal; font-weight: 400;">Olivia
								一樣搭配上有格紋、<a href="https://dappei.com/articles/7560"
								target="_blank">條紋</a>等等有紋路圖樣的褲款，就能讓穿搭視覺更加豐富，&nbsp;
							</span><span style="font-style: normal; font-weight: 400;">Olivia
								也會搭上項鍊，讓素面的上身多了細節質感。</span>
						</p>
						<p>&nbsp;</p>
						<p>
							→&nbsp;<a href="https://dappei.com/articles/5362" target="_blank">秋天就是要穿格紋！跟著日本女生這樣搭，穿出個性街頭的率性印象</a>
						</p>
						<p>&nbsp;</p>
						<p>
							<img
								src="https://images.dappei.com/uploads/article_image/image/79778/medium_1b8249e0e9b4c692.jpg">
						</p>
						<p>&nbsp;</p>
						<h3>▎多彩穿搭公式：一素一花</h3>
						<p>
							雖然&nbsp;<span style="font-style: normal; font-weight: 400;">Olivia
								的穿搭看似顏色、圖樣很多，但仔細觀察會發現都謹守一個原則：一素一花，也就是說，若是上身是多彩、圖樣單品，那麼下身就必定是素面單品，才不會讓整個人像彩虹但又毫無重點。</span>
						</p>
						<p>&nbsp;</p>
						<p>
							<img
								src="https://images.dappei.com/uploads/article_image/image/79780/medium_c1e4f5b2f9706795.jpg">
						</p>
						<p>&nbsp;</p>
						<h3>▎裙裝這樣帥起來</h3>
						<p>
							想帥氣不一定要避開裙裝，只要其他搭的單品正確組合，就能馬上帥起來，例如搭上街頭必備單品<a
								href="https://dappei.com/articles/3406" target="_blank">飛行外套</a>或休閒感的衛衣，能如中圖搭上潮流小包，從配件下手，在搭上<a
								href="https://dappei.com/articles/7438" target="_blank">球鞋</a>、<a
								href="https://dappei.com/articles/7686" target="_blank">馬汀靴</a>，都能讓裙子與街頭有了連結。
						</p>
						<p>&nbsp;</p>
						<p>
							→&nbsp;<a href="https://dappei.com/articles/7959" target="_blank">熱搜的小包是它！GU、Pull
								&amp; Bear 等平價品牌各式風格「手機袋」，輕便又百搭！</a>
						</p>
						<p>
							→&nbsp;<a href="https://dappei.com/articles/7538" target="_blank">裙裝也能穿出無敵女力！「吳姍儒
								Sandy」的洋裝穿搭術，優雅也能混搭帥氣跟甜美！</a>
						</p>
						<p>&nbsp;</p>
						<p>
							<img
								src="https://images.dappei.com/uploads/article_image/image/79781/medium_a93d2f857969c3d7.jpg">
						</p>
						<p>&nbsp;</p>
						<h3>
							<span style="font-style: normal; font-weight: 400;">▎</span>大膽配色
						</h3>
						<p>
							街頭穿搭有個很大的重點在於顏色，飽和、多彩是街頭穿搭的特色，寶藍色、橘色、紫色、紅色、螢光色等等，都是很典型的街頭色，雖然需要一些心思思考穿搭配色，但顏色絕對能夠讓穿搭展現全然不同的風格，若是還是沒勇氣突破，也能從小面積的亮色開始
							→ <a href="https://dappei.com/articles/3796" target="_blank">人生不一定只有黑白灰，女孩們可以利用「亮點配色」點亮整體穿搭！</a>
						</p>
						<p>&nbsp;</p>
						<p>
							<img
								src="https://images.dappei.com/uploads/article_image/image/79782/medium_18417941f428c06f.jpg">
						</p>
						<p>&nbsp;</p>
						<h3 style="font-style: normal; font-weight: 700;">Dappei 結語：</h3>
						<p style="font-style: normal; font-weight: 400;">看完這些小訣竅，是不是對多彩跟圖樣沒這麼懼怕了，搭編本身也很喜歡這樣的街頭風格，雖然素色是方便的懶人穿搭，但在街頭總是不夠有看頭，這個秋季就一起突破自我吧！</p>
						<p style="font-style: normal; font-weight: 400;"></p>
						<p style="font-style: normal; font-weight: 400;">
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