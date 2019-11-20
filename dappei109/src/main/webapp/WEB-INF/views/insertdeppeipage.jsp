<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<html lang="zh-TW">
<head>
<meta charset="utf-8">
<script type="text/javascript"
	src="https://bam.nr-data.net/1/1c0496e1d4?a=135496896&amp;v=1130.54e767a&amp;to=c1leEkcJDg1TRk5GWl9CXxUaCAcW&amp;rst=297&amp;ref=https://dappei.com/photos/new&amp;ap=70&amp;be=167&amp;fe=278&amp;dc=258&amp;perf=%7B%22timing%22:%7B%22of%22:1574161097783,%22n%22:0,%22u%22:96,%22ue%22:96,%22f%22:2,%22dn%22:2,%22dne%22:2,%22c%22:2,%22ce%22:2,%22rq%22:3,%22rp%22:92,%22rpe%22:96,%22dl%22:100,%22di%22:136,%22ds%22:140,%22de%22:140,%22dc%22:166,%22l%22:166,%22le%22:168%7D,%22navigation%22:%7B%7D%7D&amp;fp=217&amp;fcp=217&amp;jsonp=NREUM.setToken"></script>
<script
	src="https://connect.facebook.net/signals/config/289590961505168?v=2.9.13&amp;r=stable"
	async=""></script>
<script
	src="https://connect.facebook.net/zh_TW/sdk.js?hash=8892087a5c42707cf8e2580e089ad2be&amp;ua=modern_es6"
	async="" crossorigin="anonymous"></script>
<script src="https://js-agent.newrelic.com/nr-1130.min.js"></script>
<script async="" src="https://connect.facebook.net/en_US/fbevents.js"></script>
<script type="text/javascript" async=""
	src="https://d31qbv1cthcecs.cloudfront.net/atrk.js"></script>
<script id="facebook-jssdk"
	src="//connect.facebook.net/zh_TW/sdk.js#xfbml=1&amp;version=v2.3&amp;appId=197245307016690"></script>
<script async="" src="https://www.google-analytics.com/analytics.js"></script>
<script type="text/javascript">window.NREUM||(NREUM={});NREUM.info={"beacon":"bam.nr-data.net","errorBeacon":"bam.nr-data.net","licenseKey":"1c0496e1d4","applicationID":"135496896","transactionName":"c1leEkcJDg1TRk5GWl9CXxUaCAcW","queueTime":0,"applicationTime":70,"agent":""}</script>
<script type="text/javascript">(window.NREUM||(NREUM={})).loader_config={licenseKey:"1c0496e1d4",applicationID:"135496896"};window.NREUM||(NREUM={}),__nr_require=function(e,n,t){function r(t){if(!n[t]){var o=n[t]={exports:{}};e[t][0].call(o.exports,function(n){var o=e[t][1][n];return r(o||n)},o,o.exports)}return n[t].exports}if("function"==typeof __nr_require)return __nr_require;for(var o=0;o<t.length;o++)r(t[o]);return r}({1:[function(e,n,t){function r(){}function o(e,n,t){return function(){return i(e,[c.now()].concat(u(arguments)),n?null:this,t),n?void 0:this}}var i=e("handle"),a=e(3),u=e(4),f=e("ee").get("tracer"),c=e("loader"),s=NREUM;"undefined"==typeof window.newrelic&&(newrelic=s);var p=["setPageViewName","setCustomAttribute","setErrorHandler","finished","addToTrace","inlineHit","addRelease"],d="api-",l=d+"ixn-";a(p,function(e,n){s[n]=o(d+n,!0,"api")}),s.addPageAction=o(d+"addPageAction",!0),s.setCurrentRouteName=o(d+"routeName",!0),n.exports=newrelic,s.interaction=function(){return(new r).get()};var m=r.prototype={createTracer:function(e,n){var t={},r=this,o="function"==typeof n;return i(l+"tracer",[c.now(),e,t],r),function(){if(f.emit((o?"":"no-")+"fn-start",[c.now(),r,o],t),o)try{return n.apply(this,arguments)}catch(e){throw f.emit("fn-err",[arguments,this,e],t),e}finally{f.emit("fn-end",[c.now()],t)}}}};a("actionText,setName,setAttribute,save,ignore,onEnd,getContext,end,get".split(","),function(e,n){m[n]=o(l+n)}),newrelic.noticeError=function(e,n){"string"==typeof e&&(e=new Error(e)),i("err",[e,c.now(),!1,n])}},{}],2:[function(e,n,t){function r(e,n){if(!o)return!1;if(e!==o)return!1;if(!n)return!0;if(!i)return!1;for(var t=i.split("."),r=n.split("."),a=0;a<r.length;a++)if(r[a]!==t[a])return!1;return!0}var o=null,i=null,a=/Version\/(\S+)\s+Safari/;if(navigator.userAgent){var u=navigator.userAgent,f=u.match(a);f&&u.indexOf("Chrome")===-1&&u.indexOf("Chromium")===-1&&(o="Safari",i=f[1])}n.exports={agent:o,version:i,match:r}},{}],3:[function(e,n,t){function r(e,n){var t=[],r="",i=0;for(r in e)o.call(e,r)&&(t[i]=n(r,e[r]),i+=1);return t}var o=Object.prototype.hasOwnProperty;n.exports=r},{}],4:[function(e,n,t){function r(e,n,t){n||(n=0),"undefined"==typeof t&&(t=e?e.length:0);for(var r=-1,o=t-n||0,i=Array(o<0?0:o);++r<o;)i[r]=e[n+r];return i}n.exports=r},{}],5:[function(e,n,t){n.exports={exists:"undefined"!=typeof window.performance&&window.performance.timing&&"undefined"!=typeof window.performance.timing.navigationStart}},{}],ee:[function(e,n,t){function r(){}function o(e){function n(e){return e&&e instanceof r?e:e?f(e,u,i):i()}function t(t,r,o,i){if(!d.aborted||i){e&&e(t,r,o);for(var a=n(o),u=v(t),f=u.length,c=0;c<f;c++)u[c].apply(a,r);var p=s[y[t]];return p&&p.push([b,t,r,a]),a}}function l(e,n){h[e]=v(e).concat(n)}function m(e,n){var t=h[e];if(t)for(var r=0;r<t.length;r++)t[r]===n&&t.splice(r,1)}function v(e){return h[e]||[]}function g(e){return p[e]=p[e]||o(t)}function w(e,n){c(e,function(e,t){n=n||"feature",y[t]=n,n in s||(s[n]=[])})}var h={},y={},b={on:l,addEventListener:l,removeEventListener:m,emit:t,get:g,listeners:v,context:n,buffer:w,abort:a,aborted:!1};return b}function i(){return new r}function a(){(s.api||s.feature)&&(d.aborted=!0,s=d.backlog={})}var u="nr@context",f=e("gos"),c=e(3),s={},p={},d=n.exports=o();d.backlog=s},{}],gos:[function(e,n,t){function r(e,n,t){if(o.call(e,n))return e[n];var r=t();if(Object.defineProperty&&Object.keys)try{return Object.defineProperty(e,n,{value:r,writable:!0,enumerable:!1}),r}catch(i){}return e[n]=r,r}var o=Object.prototype.hasOwnProperty;n.exports=r},{}],handle:[function(e,n,t){function r(e,n,t,r){o.buffer([e],r),o.emit(e,n,t)}var o=e("ee").get("handle");n.exports=r,r.ee=o},{}],id:[function(e,n,t){function r(e){var n=typeof e;return!e||"object"!==n&&"function"!==n?-1:e===window?0:a(e,i,function(){return o++})}var o=1,i="nr@id",a=e("gos");n.exports=r},{}],loader:[function(e,n,t){function r(){if(!E++){var e=x.info=NREUM.info,n=l.getElementsByTagName("script")[0];if(setTimeout(s.abort,3e4),!(e&&e.licenseKey&&e.applicationID&&n))return s.abort();c(y,function(n,t){e[n]||(e[n]=t)}),f("mark",["onload",a()+x.offset],null,"api");var t=l.createElement("script");t.src="https://"+e.agent,n.parentNode.insertBefore(t,n)}}function o(){"complete"===l.readyState&&i()}function i(){f("mark",["domContent",a()+x.offset],null,"api")}function a(){return O.exists&&performance.now?Math.round(performance.now()):(u=Math.max((new Date).getTime(),u))-x.offset}var u=(new Date).getTime(),f=e("handle"),c=e(3),s=e("ee"),p=e(2),d=window,l=d.document,m="addEventListener",v="attachEvent",g=d.XMLHttpRequest,w=g&&g.prototype;NREUM.o={ST:setTimeout,SI:d.setImmediate,CT:clearTimeout,XHR:g,REQ:d.Request,EV:d.Event,PR:d.Promise,MO:d.MutationObserver};var h=""+location,y={beacon:"bam.nr-data.net",errorBeacon:"bam.nr-data.net",agent:"js-agent.newrelic.com/nr-1130.min.js"},b=g&&w&&w[m]&&!/CriOS/.test(navigator.userAgent),x=n.exports={offset:u,now:a,origin:h,features:{},xhrWrappable:b,userAgent:p};e(1),l[m]?(l[m]("DOMContentLoaded",i,!1),d[m]("load",r,!1)):(l[v]("onreadystatechange",o),d[v]("onload",r)),f("mark",["firstbyte",u],null,"api");var E=0,O=e(5)},{}]},{},["loader"]);</script>
<meta content-language="zh-TW">
<title>建立新的搭配 | Dappei</title>
<link href="https://dappei.com/photos/new" rel="canonical">
<meta content="FF09B0A90610BC1D256F5A92C739B885" name="msvalidate.01">
<meta content="Dappei 搭配 - 高質感服飾穿搭社群" property="og:site_name">
<meta content="建立新的搭配 | Dappei" property="og:title">
<meta content="https://dappei.com/og.jpg" property="og:image">
<meta content="簡單的4個步驟：「上傳搭配照」、「剪裁圖片」、「標簽單品」、「填寫資料」就可以輕鬆的建立新的搭配。"
	property="og:description">
<meta content="https://dappei.com/photos/new" property="og:url">
<meta content="197245307016690" property="fb:app_id">
<meta content="181811028693919" property="fb:pages">
<meta content="556335474461387" property="fb:pages">
<meta content="220137288053782" property="fb:pages">
<meta content="簡單的4個步驟：「上傳搭配照」、「剪裁圖片」、「標簽單品」、「填寫資料」就可以輕鬆的建立新的搭配。"
	name="description">
<meta
	content="建立,穿搭,時尚,搭配,穿搭,時尚,搭配,穿搭,時尚,搭配,穿搭,時尚,搭配,穿搭,時尚,搭配,穿搭,時尚,搭配,穿搭,時尚,搭配,穿搭,時尚,搭配,穿搭,時尚,搭配,穿搭,時尚,搭配,穿搭,時尚,搭配,穿搭,時尚,搭配,穿搭,時尚,搭配,穿搭,時尚,搭配,穿搭,時尚,搭配,穿搭,時尚,搭配,穿搭,時尚,搭配,穿搭,時尚,搭配,穿搭,時尚,搭配,穿搭,時尚,搭配,穿搭,時尚,搭配,穿搭,時尚,搭配,穿搭,時尚,搭配,穿搭,時尚,搭配,穿搭,時尚,搭配,穿搭,時尚,搭配,穿搭,時尚,搭配,穿搭,時尚,搭配,穿搭,時尚,搭配,穿搭,時尚,搭配,穿搭,時尚,搭配,穿搭,時尚,搭配,穿搭,時尚,搭配,穿搭,時尚,搭配,穿搭,時尚,搭配,穿搭,時尚,搭配,穿搭,時尚,搭配,穿搭,時尚,搭配,穿搭,時尚,搭配,穿搭,時尚,搭配,穿搭,時尚,搭配,穿搭,時尚,搭配,穿搭,時尚,搭配,穿搭,時尚,搭配,穿搭,時尚,搭配,穿搭,時尚,搭配,穿搭,時尚,搭配,穿搭,時尚,搭配,穿搭,時尚,搭配,穿搭,時尚,搭配"
	name="keywords">
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
	content="xqiJV73FvVHnpvznc/BRsd2oc0GhPdqghgJY5XLX0b8ADJvJvECFzvJnYwFw1Biud3Hdb7eRBg8M8pB7iUz4GQ==">
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
	<header id="header" style="opacity: 1;">
		<div id="header-container">
			<a id="logo" href="/">Dappei 搭配 - 高質感服飾穿搭社群</a>
			<nav id="main-nav">
				<ul class="main-nav">
					<li class="dropdown"><a href="/users">用戶</a>
						<div class="dropdown-menu users">
							<div class="block followers">
								<h5>本週最多訂閱(女)</h5>
								<div class="block-nav">
									<a href="/user/eyes198877han"><img alt="77涵"
										src="https://images.dappei.com/uploads/user/face/19/medium_1784e91db6528e64.jpg"><span>+
											11</span></a><a href="/user/zhi319"><img alt="Zoe Lee"
										src="https://images.dappei.com/uploads/user/face/20941/medium_54f0fe0b118e870e.jpg"><span>+
											11</span></a><a href="/user/mibao"><img alt="Miriam Mibao"
										src="https://images.dappei.com/uploads/user/face/16835/medium_e6e7980d9eb611fb.jpg"><span>+
											11</span></a><a href="/user/errorless"><img alt="JESSIE CHEN"
										src="https://images.dappei.com/uploads/user/face/17969/medium_0e28c69c394849b6.jpg"><span>+
											10</span></a><a href="/user/cecily0225"><img alt="CECILY"
										src="https://images.dappei.com/uploads/user/face/20389/medium_a3032f306be1c045.jpg"><span>+
											10</span></a><a href="/user/w890045"><img alt="W."
										src="https://images.dappei.com/uploads/user/face/26137/medium_809c97675a96d7e3.jpg"><span>+
											9</span></a><a href="/user/Amberyang"><img alt="楊 雅 媜 "
										src="https://images.dappei.com/uploads/user/face/47414/medium_66395c0f626850b3.jpg"><span>+
											9</span></a><a href="/user/s26855"><img alt="Sera"
										src="https://images.dappei.com/uploads/user/face/34081/medium_db1a31efd9474dfa.jpg"><span>+
											9</span></a><a href="/user/huangbb421"><img alt="黃懸 / BB"
										src="https://images.dappei.com/uploads/user/face/22981/medium_95a47d4cd5b0994c.jpg"><span>+
											9</span></a>
								</div>
							</div>
							<div class="block followers">
								<h5>本週最多訂閱(男)</h5>
								<div class="block-nav">
									<a href="/user/johnkuo16"><img alt="John  Bigots"
										src="https://images.dappei.com/uploads/user/face/3442/medium_85216428ab0d82d6.jpg"><span>+
											7</span></a><a href="/user/familybros"><img alt="唯家"
										src="https://images.dappei.com/uploads/user/face/41/medium_dac8d6cb404b4984.jpg"><span>+
											6</span></a><a href="/user/chehaoyang7"><img alt="綿羊奶瓶"
										src="https://images.dappei.com/uploads/user/face/27301/medium_ffbc8efd2ad3214c.jpg"><span>+
											5</span></a><a href="/user/plainakko"><img alt="Akko Liu"
										src="https://images.dappei.com/uploads/user/face/14/medium_ac315d53d6cf3920.jpg"><span>+
											5</span></a><a href="/user/joey7821785"><img alt="Benny bee"
										src="https://images.dappei.com/uploads/user/face/561/medium_306f30aac3951362.jpg"><span>+
											5</span></a><a href="/user/jackchiu"><img alt="Jack Chiu"
										src="https://images.dappei.com/uploads/user/face/1445/medium_419391b920c59274.jpg"><span>+
											4</span></a><a href="/user/Chainloop"><img alt="圈入準"
										src="https://images.dappei.com/uploads/user/face/1374/medium_e88ff92196283ddd.jpg"><span>+
											4</span></a><a href="/user/RikoChang"><img alt="Rïko Chang"
										src="https://images.dappei.com/uploads/user/face/2618/medium_915e4848ff1176d5.jpg"><span>+
											3</span></a><a href="/user/familybrosWT"><img alt="Familybros 唯庭"
										src="https://images.dappei.com/uploads/user/face/15803/medium_804fbb01abdf5f7c.jpg"><span>+
											3</span></a>
								</div>
							</div>
							<div class="block likes">
								<h5>本週最多喜歡</h5>
								<div class="block-nav">
									<a href="/user/plainakko"><img alt="Akko Liu"
										src="https://images.dappei.com/uploads/user/face/14/medium_ac315d53d6cf3920.jpg"><span>+46</span></a><a
										href="/user/emma5200"><img alt="emma5200"
										src="https://images.dappei.com/uploads/user/face/94063/medium_8497a99cca472058.jpg"><span>+35</span></a><a
										href="/user/Chainloop"><img alt="圈入準"
										src="https://images.dappei.com/uploads/user/face/1374/medium_e88ff92196283ddd.jpg"><span>+28</span></a><a
										href="/user/uniannie"><img alt="安妮"
										src="https://images.dappei.com/uploads/user/face/78650/medium_2df44c26e1b205a6.jpg"><span>+23</span></a><a
										href="/user/eyes198877han"><img alt="77涵"
										src="https://images.dappei.com/uploads/user/face/19/medium_1784e91db6528e64.jpg"><span>+16</span></a><a
										href="/user/familybros"><img alt="唯家"
										src="https://images.dappei.com/uploads/user/face/41/medium_dac8d6cb404b4984.jpg"><span>+15</span></a><a
										href="/user/h22250121"><img alt="馬可-有禮貌穿搭"
										src="https://images.dappei.com/uploads/user/face/92174/medium_0a9dd062ee408dec.jpg"><span>+13</span></a><a
										href="/user/wind7220"><img alt="轟炸機"
										src="https://images.dappei.com/uploads/user/face/571/medium_f0970f9a69f9410d.jpg"><span>+12</span></a><a
										href="/user/sanford521"><img alt="Wei Chia"
										src="https://images.dappei.com/uploads/user/face/83959/medium_d906761120887743.jpg"><span>+12</span></a>
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
									<a class="option" href="/styles/461">正裝混搭</a><a class="option"
										href="/styles/751">英倫混搭</a><a class="option" href="/styles/31">條紋</a><a
										class="option" href="/styles/13557">格紋西裝</a><a class="option"
										href="/styles/2959">NORMCORE</a><a class="option"
										href="/styles/68">學院風</a>
								</div>
							</div>
							<div class="block daily-hot">
								<h5>本日人氣</h5>
								<div class="block-nav">
									<a href="/photos/80651"><img
										src="https://images.dappei.com/uploads/photo/image/80651/thumb_24bf917e2d82374a.jpg"
										alt="Thumb 24bf917e2d82374a"><span>+ 6</span></a><a
										href="/photos/80653"><img
										src="https://images.dappei.com/uploads/photo/image/80653/thumb_a0a0e8564e06b33b.jpg"
										alt="Thumb a0a0e8564e06b33b"><span>+ 1</span></a>
								</div>
							</div>
							<div class="block weekly-hot">
								<h5>本周人氣</h5>
								<div class="block-nav">
									<a href="/photos/80601"><img
										src="https://images.dappei.com/uploads/photo/image/80601/thumb_2821df726c4f6e93.jpg"
										alt="Thumb 2821df726c4f6e93"><span>+ 7</span></a><a
										href="/photos/80592"><img
										src="https://images.dappei.com/uploads/photo/image/80592/thumb_a0e2b2a7ba34c7fa.jpg"
										alt="Thumb a0e2b2a7ba34c7fa"><span>+ 8</span></a>
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
									<a class="option" href="/articles/7980">人生就夠苦了，咖啡就別喝苦的了！手搖品牌「不要對我尖叫」推出冬季限定熱飲溫暖你的心！</a><a
										class="option" href="/articles/7933">帶「它」上路最吸睛！盤點 8
										位潮人的選車考量， 跟著全新世代 BMW 1 系列成為眾人焦點！</a><a class="option"
										href="/articles/7944">戒不掉手滑失心瘋？跟著「極簡
										Youtuber」這樣做，面對網拍你也可以不為所動！</a><a class="option"
										href="/articles/7948">台北旅遊住宿推薦！盤點 3 間文青風「青年旅館」讓你住的平價又超值！</a><a
										class="option" href="/articles/7954">用「水兵帽」穿出性冷淡風時尚！瑞士穿搭達人
										Chris 利用簡單的單品搭出高級感，極簡又俐落！</a><a class="option"
										href="/articles/7960">屁股大顯矮又顯胖，教你 4 招穿搭小技巧，讓你輕鬆化身完美型男！</a>
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
										alt="Thumb 9912e9d5babec619"></a><a href="/brands/311"><img
										src="https://images.dappei.com/uploads/brand/image/311/thumb_001d7ec0e1c646a0.jpg"
										alt="Thumb 001d7ec0e1c646a0"></a>
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
										style="position: absolute; top: 0px; left: 0px; border-color: transparent; box-shadow: none; opacity: 1; background: none 0% 0%/auto repeat scroll padding-box border-box rgb(255, 255, 255);"><input
										autocomplete="off" id="search-input" name="q"
										placeholder="現在大家都在搜尋「正式」" type="text" class="tt-input"
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
						<ul class="dropdown-menu">
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
		<div id="create-photo">
			<h1>上傳搭配照</h1>
			<div class="step" id="step1">
				<div class="disable-layer">
					<h3>步驟1 - 選擇搭配</h3>
				</div>
				<div id="upload-photo">
					<div id="upload-photo-container"></div>
					<div id="upload-information">
						<div class="upload-information-container">
							<h2>步驟1 - 選擇搭配</h2>
							<div class="info">
								<p>
									<i class="fa fa-info-circle"></i>上傳搭配前，請詳細閱讀以下規則：
								</p>
								<p>1. 上傳搭配後，請在步驟二將人物調整至左圖大小。</p>
								<p>2. 照片檔案大小請小於20MB。</p>
								<p>3. 請勿使用手機自拍，如違反規定將會被系統下架。</p>
								<p>4. 請使用平視角度拍攝，如拍攝角度太高(低)將會被系統下架。</p>
								<p>5. 請勿過度後製(壓LOGO、去背、貼圖、切割畫面、色差過大...)。</p>
								<p>6. 搭配照請全身入鏡，如違反規定將會被系統下架。</p>
								<p>7. 搭配照尺寸建議800x1280，請勿自行後製底色或框線補足。</p>
								<p>8. 請上傳本人搭配，勿以品牌帳號經營，違反者將停權。</p>
								<p>9. 請確保上傳搭配畫質清晰，如照片太模糊將會被系統下架。</p>
							</div>
							<form class="upload-form">
								<div class="file-upload-container upload-photo">
									<i class="fa fa-upload"></i>選擇搭配照<input
										accept="image/gif, image/jpg, image/jpeg, image/png"
										class="file-upload-input" id="upload-photo-button" type="file">
								</div>
							</form>
						</div>
					</div>
				</div>
			</div>
			<div class="step" id="step2">
				<div class="disable-layer">
					<h3>步驟2 - 剪裁圖片</h3>
				</div>
				<div id="crop-photo">
					<div id="crop-photo-container">
						<div class="body"></div>
						<div class="photo"></div>
					</div>
					<div id="crop-information">
						<div class="crop-information-container">
							<h2>步驟2 - 剪裁圖片</h2>
							<div class="info">
								<p>
									<i class="fa fa-info-circle"></i>請使用下列功能鍵，盡可能將人物調整至左圖人形大小，並關閉人像檢視人物是否置中，如果無法移動，請先放大圖片。
								</p>
							</div>
							<div id="crop-tools">
								<div class="tool">
									<a class="resize-button" data-action="moveUp"
										href="javascript:void(0);"><i class="fa fa-arrow-up"></i>上移</a>
								</div>
								<div class="tool">
									<a class="resize-button" data-action="moveLeft"
										href="javascript:void(0);"><i class="fa fa-arrow-left"></i>左移</a><a
										class="resize-button" data-action="moveRight"
										href="javascript:void(0);"><i class="fa fa-arrow-right"></i>右移</a>
								</div>
								<div class="tool">
									<a class="resize-button" data-action="moveDown"
										href="javascript:void(0);"><i class="fa fa-arrow-down"></i>下移</a>
								</div>
								<div class="tool">
									<a class="resize-button" data-action="zoomIn"
										href="javascript:void(0);"><i class="fa fa-search-plus"></i>放大</a><a
										class="resize-button" data-action="zoomOut"
										href="javascript:void(0);"><i class="fa fa-search-minus"></i>縮小</a>
								</div>
								<div class="tool">
									<a class="resize-button" data-action="body"
										href="javascript:void(0);"><i class="fa fa-search"></i><span>關閉人像</span></a>
								</div>
								<div class="tool">
									<a class="resize-button" data-action="Reset"
										href="javascript:void(0);"><i class="fa fa-repeat"></i>重置</a>
								</div>
								<input id="crop-x" name="crop_x" type="hidden" value="0"><input
									id="crop-y" name="crop_y" type="hidden" value="0"><input
									id="crop-ratio" name="crop_ratio" type="hidden" value="1"><a
									class="next-step" href="javascript:void(0);">下一步</a>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="step" id="step3">
				<div class="disable-layer">
					<h3>步驟3 - 填寫資料</h3>
				</div>
				<div id="edit-information">
					<div class="information-form">
						<h2>步驟3 - 填寫資料</h2>
						<div class="label">
							<label>主題</label><span>本次搭配的主題？</span>
						</div>
						<div class="input">
							<input class="title" name="title" placeholder="簡單敘述穿搭主題"
								type="text">
						</div>
						<div class="label">
							<label>風格</label><span>本次的搭配屬於什麼風格？</span>
						</div>
						<div class="input">
							<div
								class="select2-container select2-container-multi token style"
								id="s2id_autogen1" style="width: 900px;">
								<ul class="select2-choices">
									<li class="select2-search-field"><input type="text"
										autocomplete="off" autocorrect="off" autocapitilize="off"
										spellcheck="false" class="select2-input select2-default"
										id="s2id_autogen2" maxlength="20" style="width: 882px;">
									</li>
								</ul>
								<div
									class="select2-drop select2-drop-multi select2-display-none">
									<ul class="select2-results">
									</ul>
								</div>
							</div>
							<input class="token style select2-offscreen"
								data-no-result="請輸入風格名稱" data-placeholder="ex: 甜美、搖滾......"
								data-type="style" name="style_name_collection" type="text"
								tabindex="-1">
						</div>
						<div class="label">
							<label>說明</label><span>為這次搭配做點說明</span>
						</div>
						<div class="input">
							<textarea class="description" name="description"
								placeholder="輸入說明可增加被搜尋到的機率，也可以讓你的搭配更容易被各大媒體編輯寫文取材！"></textarea>
						</div>
						<a class="next-step" href="javascript:void(0);">上傳搭配</a>
					</div>
				</div>
			</div>
			<div class="step" id="step4">
				<div class="disable-layer">
					<h3>步驟4 - 標籤單品</h3>
				</div>
				<div id="tagger">
					<div class="photo-container">
						<div class="photo">
							<div class="image-container"></div>
						</div>
						<div class="tags"></div>
					</div>
					<div class="tag-description">
						<div class="tag-description-container">
							<h2>步驟4 - 標籤單品</h2>
							<div class="info">
								<p>
									<i class="fa fa-info-circle"></i>請點擊左方照片新增單品照，讓您的搭配更豐富！
								</p>
								<p>(建議照片尺寸：960x640)</p>
							</div>
							<a class="next-step" href="javascript:void(0);">完成</a>
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
							name="f121348bcee0528" width="320px" height="70px"
							title="fb:page Facebook Social Plugin" frameborder="0"
							allowtransparency="true" allowfullscreen="true" scrolling="no"
							allow="encrypted-media"
							src="https://www.facebook.com/v2.3/plugins/page.php?adapt_container_width=true&amp;app_id=197245307016690&amp;channel=https%3A%2F%2Fstaticxx.facebook.com%2Fconnect%2Fxd_arbiter.php%3Fversion%3D44%23cb%3Df12de0902013b74%26domain%3Ddappei.com%26origin%3Dhttps%253A%252F%252Fdappei.com%252Ff36ff53d7ec9348%26relation%3Dparent.parent&amp;container_width=320&amp;height=70&amp;hide_cover=false&amp;href=https%3A%2F%2Fwww.facebook.com%2FDappei&amp;locale=zh_TW&amp;sdk=joey&amp;show_facepile=false&amp;show_posts=false&amp;small_header=true&amp;width=320"
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
							name="f391981805b2af4" width="320px" height="70px"
							title="fb:page Facebook Social Plugin" frameborder="0"
							allowtransparency="true" allowfullscreen="true" scrolling="no"
							allow="encrypted-media"
							src="https://www.facebook.com/v2.3/plugins/page.php?adapt_container_width=true&amp;app_id=197245307016690&amp;channel=https%3A%2F%2Fstaticxx.facebook.com%2Fconnect%2Fxd_arbiter.php%3Fversion%3D44%23cb%3Df2b2740d7d40214%26domain%3Ddappei.com%26origin%3Dhttps%253A%252F%252Fdappei.com%252Ff36ff53d7ec9348%26relation%3Dparent.parent&amp;container_width=320&amp;height=70&amp;hide_cover=false&amp;href=https%3A%2F%2Fwww.facebook.com%2Fdappeiformale&amp;locale=zh_TW&amp;sdk=joey&amp;show_facepile=false&amp;show_posts=false&amp;small_header=true&amp;width=320"
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
							name="f2107d6390069ac" width="320px" height="70px"
							title="fb:page Facebook Social Plugin" frameborder="0"
							allowtransparency="true" allowfullscreen="true" scrolling="no"
							allow="encrypted-media"
							src="https://www.facebook.com/v2.3/plugins/page.php?adapt_container_width=true&amp;app_id=197245307016690&amp;channel=https%3A%2F%2Fstaticxx.facebook.com%2Fconnect%2Fxd_arbiter.php%3Fversion%3D44%23cb%3Df49e7dad416bd4%26domain%3Ddappei.com%26origin%3Dhttps%253A%252F%252Fdappei.com%252Ff36ff53d7ec9348%26relation%3Dparent.parent&amp;container_width=320&amp;height=70&amp;hide_cover=false&amp;href=https%3A%2F%2Fwww.facebook.com%2Fdappeiforfemale&amp;locale=zh_TW&amp;sdk=joey&amp;show_facepile=false&amp;show_posts=false&amp;small_header=true&amp;width=320"
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
					src="https://staticxx.facebook.com/connect/xd_arbiter.php?version=44#channel=f36ff53d7ec9348&amp;origin=https%3A%2F%2Fdappei.com"
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
<head>
<meta charset="utf-8">
<script type="text/javascript"
	src="https://bam.nr-data.net/1/1c0496e1d4?a=135496896&amp;v=1130.54e767a&amp;to=c1leEkcJDg1TRk5GWl9CXxUaCAcW&amp;rst=297&amp;ref=https://dappei.com/photos/new&amp;ap=70&amp;be=167&amp;fe=278&amp;dc=258&amp;perf=%7B%22timing%22:%7B%22of%22:1574161097783,%22n%22:0,%22u%22:96,%22ue%22:96,%22f%22:2,%22dn%22:2,%22dne%22:2,%22c%22:2,%22ce%22:2,%22rq%22:3,%22rp%22:92,%22rpe%22:96,%22dl%22:100,%22di%22:136,%22ds%22:140,%22de%22:140,%22dc%22:166,%22l%22:166,%22le%22:168%7D,%22navigation%22:%7B%7D%7D&amp;fp=217&amp;fcp=217&amp;jsonp=NREUM.setToken"></script>
<script
	src="https://connect.facebook.net/signals/config/289590961505168?v=2.9.13&amp;r=stable"
	async=""></script>
<script
	src="https://connect.facebook.net/zh_TW/sdk.js?hash=8892087a5c42707cf8e2580e089ad2be&amp;ua=modern_es6"
	async="" crossorigin="anonymous"></script>
<script src="https://js-agent.newrelic.com/nr-1130.min.js"></script>
<script async="" src="https://connect.facebook.net/en_US/fbevents.js"></script>
<script type="text/javascript" async=""
	src="https://d31qbv1cthcecs.cloudfront.net/atrk.js"></script>
<script id="facebook-jssdk"
	src="//connect.facebook.net/zh_TW/sdk.js#xfbml=1&amp;version=v2.3&amp;appId=197245307016690"></script>
<script async="" src="https://www.google-analytics.com/analytics.js"></script>
<script type="text/javascript">window.NREUM||(NREUM={});NREUM.info={"beacon":"bam.nr-data.net","errorBeacon":"bam.nr-data.net","licenseKey":"1c0496e1d4","applicationID":"135496896","transactionName":"c1leEkcJDg1TRk5GWl9CXxUaCAcW","queueTime":0,"applicationTime":70,"agent":""}</script>
<script type="text/javascript">(window.NREUM||(NREUM={})).loader_config={licenseKey:"1c0496e1d4",applicationID:"135496896"};window.NREUM||(NREUM={}),__nr_require=function(e,n,t){function r(t){if(!n[t]){var o=n[t]={exports:{}};e[t][0].call(o.exports,function(n){var o=e[t][1][n];return r(o||n)},o,o.exports)}return n[t].exports}if("function"==typeof __nr_require)return __nr_require;for(var o=0;o<t.length;o++)r(t[o]);return r}({1:[function(e,n,t){function r(){}function o(e,n,t){return function(){return i(e,[c.now()].concat(u(arguments)),n?null:this,t),n?void 0:this}}var i=e("handle"),a=e(3),u=e(4),f=e("ee").get("tracer"),c=e("loader"),s=NREUM;"undefined"==typeof window.newrelic&&(newrelic=s);var p=["setPageViewName","setCustomAttribute","setErrorHandler","finished","addToTrace","inlineHit","addRelease"],d="api-",l=d+"ixn-";a(p,function(e,n){s[n]=o(d+n,!0,"api")}),s.addPageAction=o(d+"addPageAction",!0),s.setCurrentRouteName=o(d+"routeName",!0),n.exports=newrelic,s.interaction=function(){return(new r).get()};var m=r.prototype={createTracer:function(e,n){var t={},r=this,o="function"==typeof n;return i(l+"tracer",[c.now(),e,t],r),function(){if(f.emit((o?"":"no-")+"fn-start",[c.now(),r,o],t),o)try{return n.apply(this,arguments)}catch(e){throw f.emit("fn-err",[arguments,this,e],t),e}finally{f.emit("fn-end",[c.now()],t)}}}};a("actionText,setName,setAttribute,save,ignore,onEnd,getContext,end,get".split(","),function(e,n){m[n]=o(l+n)}),newrelic.noticeError=function(e,n){"string"==typeof e&&(e=new Error(e)),i("err",[e,c.now(),!1,n])}},{}],2:[function(e,n,t){function r(e,n){if(!o)return!1;if(e!==o)return!1;if(!n)return!0;if(!i)return!1;for(var t=i.split("."),r=n.split("."),a=0;a<r.length;a++)if(r[a]!==t[a])return!1;return!0}var o=null,i=null,a=/Version\/(\S+)\s+Safari/;if(navigator.userAgent){var u=navigator.userAgent,f=u.match(a);f&&u.indexOf("Chrome")===-1&&u.indexOf("Chromium")===-1&&(o="Safari",i=f[1])}n.exports={agent:o,version:i,match:r}},{}],3:[function(e,n,t){function r(e,n){var t=[],r="",i=0;for(r in e)o.call(e,r)&&(t[i]=n(r,e[r]),i+=1);return t}var o=Object.prototype.hasOwnProperty;n.exports=r},{}],4:[function(e,n,t){function r(e,n,t){n||(n=0),"undefined"==typeof t&&(t=e?e.length:0);for(var r=-1,o=t-n||0,i=Array(o<0?0:o);++r<o;)i[r]=e[n+r];return i}n.exports=r},{}],5:[function(e,n,t){n.exports={exists:"undefined"!=typeof window.performance&&window.performance.timing&&"undefined"!=typeof window.performance.timing.navigationStart}},{}],ee:[function(e,n,t){function r(){}function o(e){function n(e){return e&&e instanceof r?e:e?f(e,u,i):i()}function t(t,r,o,i){if(!d.aborted||i){e&&e(t,r,o);for(var a=n(o),u=v(t),f=u.length,c=0;c<f;c++)u[c].apply(a,r);var p=s[y[t]];return p&&p.push([b,t,r,a]),a}}function l(e,n){h[e]=v(e).concat(n)}function m(e,n){var t=h[e];if(t)for(var r=0;r<t.length;r++)t[r]===n&&t.splice(r,1)}function v(e){return h[e]||[]}function g(e){return p[e]=p[e]||o(t)}function w(e,n){c(e,function(e,t){n=n||"feature",y[t]=n,n in s||(s[n]=[])})}var h={},y={},b={on:l,addEventListener:l,removeEventListener:m,emit:t,get:g,listeners:v,context:n,buffer:w,abort:a,aborted:!1};return b}function i(){return new r}function a(){(s.api||s.feature)&&(d.aborted=!0,s=d.backlog={})}var u="nr@context",f=e("gos"),c=e(3),s={},p={},d=n.exports=o();d.backlog=s},{}],gos:[function(e,n,t){function r(e,n,t){if(o.call(e,n))return e[n];var r=t();if(Object.defineProperty&&Object.keys)try{return Object.defineProperty(e,n,{value:r,writable:!0,enumerable:!1}),r}catch(i){}return e[n]=r,r}var o=Object.prototype.hasOwnProperty;n.exports=r},{}],handle:[function(e,n,t){function r(e,n,t,r){o.buffer([e],r),o.emit(e,n,t)}var o=e("ee").get("handle");n.exports=r,r.ee=o},{}],id:[function(e,n,t){function r(e){var n=typeof e;return!e||"object"!==n&&"function"!==n?-1:e===window?0:a(e,i,function(){return o++})}var o=1,i="nr@id",a=e("gos");n.exports=r},{}],loader:[function(e,n,t){function r(){if(!E++){var e=x.info=NREUM.info,n=l.getElementsByTagName("script")[0];if(setTimeout(s.abort,3e4),!(e&&e.licenseKey&&e.applicationID&&n))return s.abort();c(y,function(n,t){e[n]||(e[n]=t)}),f("mark",["onload",a()+x.offset],null,"api");var t=l.createElement("script");t.src="https://"+e.agent,n.parentNode.insertBefore(t,n)}}function o(){"complete"===l.readyState&&i()}function i(){f("mark",["domContent",a()+x.offset],null,"api")}function a(){return O.exists&&performance.now?Math.round(performance.now()):(u=Math.max((new Date).getTime(),u))-x.offset}var u=(new Date).getTime(),f=e("handle"),c=e(3),s=e("ee"),p=e(2),d=window,l=d.document,m="addEventListener",v="attachEvent",g=d.XMLHttpRequest,w=g&&g.prototype;NREUM.o={ST:setTimeout,SI:d.setImmediate,CT:clearTimeout,XHR:g,REQ:d.Request,EV:d.Event,PR:d.Promise,MO:d.MutationObserver};var h=""+location,y={beacon:"bam.nr-data.net",errorBeacon:"bam.nr-data.net",agent:"js-agent.newrelic.com/nr-1130.min.js"},b=g&&w&&w[m]&&!/CriOS/.test(navigator.userAgent),x=n.exports={offset:u,now:a,origin:h,features:{},xhrWrappable:b,userAgent:p};e(1),l[m]?(l[m]("DOMContentLoaded",i,!1),d[m]("load",r,!1)):(l[v]("onreadystatechange",o),d[v]("onload",r)),f("mark",["firstbyte",u],null,"api");var E=0,O=e(5)},{}]},{},["loader"]);</script>
<meta content-language="zh-TW">
<title>建立新的搭配 | Dappei</title>
<link href="https://dappei.com/photos/new" rel="canonical">
<meta content="FF09B0A90610BC1D256F5A92C739B885" name="msvalidate.01">
<meta content="Dappei 搭配 - 高質感服飾穿搭社群" property="og:site_name">
<meta content="建立新的搭配 | Dappei" property="og:title">
<meta content="https://dappei.com/og.jpg" property="og:image">
<meta content="簡單的4個步驟：「上傳搭配照」、「剪裁圖片」、「標簽單品」、「填寫資料」就可以輕鬆的建立新的搭配。"
	property="og:description">
<meta content="https://dappei.com/photos/new" property="og:url">
<meta content="197245307016690" property="fb:app_id">
<meta content="181811028693919" property="fb:pages">
<meta content="556335474461387" property="fb:pages">
<meta content="220137288053782" property="fb:pages">
<meta content="簡單的4個步驟：「上傳搭配照」、「剪裁圖片」、「標簽單品」、「填寫資料」就可以輕鬆的建立新的搭配。"
	name="description">
<meta
	content="建立,穿搭,時尚,搭配,穿搭,時尚,搭配,穿搭,時尚,搭配,穿搭,時尚,搭配,穿搭,時尚,搭配,穿搭,時尚,搭配,穿搭,時尚,搭配,穿搭,時尚,搭配,穿搭,時尚,搭配,穿搭,時尚,搭配,穿搭,時尚,搭配,穿搭,時尚,搭配,穿搭,時尚,搭配,穿搭,時尚,搭配,穿搭,時尚,搭配,穿搭,時尚,搭配,穿搭,時尚,搭配,穿搭,時尚,搭配,穿搭,時尚,搭配,穿搭,時尚,搭配,穿搭,時尚,搭配,穿搭,時尚,搭配,穿搭,時尚,搭配,穿搭,時尚,搭配,穿搭,時尚,搭配,穿搭,時尚,搭配,穿搭,時尚,搭配,穿搭,時尚,搭配,穿搭,時尚,搭配,穿搭,時尚,搭配,穿搭,時尚,搭配,穿搭,時尚,搭配,穿搭,時尚,搭配,穿搭,時尚,搭配,穿搭,時尚,搭配,穿搭,時尚,搭配,穿搭,時尚,搭配,穿搭,時尚,搭配,穿搭,時尚,搭配,穿搭,時尚,搭配,穿搭,時尚,搭配,穿搭,時尚,搭配,穿搭,時尚,搭配,穿搭,時尚,搭配,穿搭,時尚,搭配,穿搭,時尚,搭配,穿搭,時尚,搭配,穿搭,時尚,搭配,穿搭,時尚,搭配,穿搭,時尚,搭配"
	name="keywords">
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
	content="xqiJV73FvVHnpvznc/BRsd2oc0GhPdqghgJY5XLX0b8ADJvJvECFzvJnYwFw1Biud3Hdb7eRBg8M8pB7iUz4GQ==">
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
	<header id="header" style="opacity: 1;">
		<div id="header-container">
			<a id="logo" href="/">Dappei 搭配 - 高質感服飾穿搭社群</a>
			<nav id="main-nav">
				<ul class="main-nav">
					<li class="dropdown"><a href="/users">用戶</a>
					<div class="dropdown-menu users">
							<div class="block followers">
								<h5>本週最多訂閱(女)</h5>
								<div class="block-nav">
									<a href="/user/eyes198877han"><img alt="77涵"
										src="https://images.dappei.com/uploads/user/face/19/medium_1784e91db6528e64.jpg"><span>+
											11</span></a><a href="/user/zhi319"><img alt="Zoe Lee"
										src="https://images.dappei.com/uploads/user/face/20941/medium_54f0fe0b118e870e.jpg"><span>+
											11</span></a><a href="/user/mibao"><img alt="Miriam Mibao"
										src="https://images.dappei.com/uploads/user/face/16835/medium_e6e7980d9eb611fb.jpg"><span>+
											11</span></a><a href="/user/errorless"><img alt="JESSIE CHEN"
										src="https://images.dappei.com/uploads/user/face/17969/medium_0e28c69c394849b6.jpg"><span>+
											10</span></a><a href="/user/cecily0225"><img alt="CECILY"
										src="https://images.dappei.com/uploads/user/face/20389/medium_a3032f306be1c045.jpg"><span>+
											10</span></a><a href="/user/w890045"><img alt="W."
										src="https://images.dappei.com/uploads/user/face/26137/medium_809c97675a96d7e3.jpg"><span>+
											9</span></a><a href="/user/Amberyang"><img alt="楊 雅 媜 "
										src="https://images.dappei.com/uploads/user/face/47414/medium_66395c0f626850b3.jpg"><span>+
											9</span></a><a href="/user/s26855"><img alt="Sera"
										src="https://images.dappei.com/uploads/user/face/34081/medium_db1a31efd9474dfa.jpg"><span>+
											9</span></a><a href="/user/huangbb421"><img alt="黃懸 / BB"
										src="https://images.dappei.com/uploads/user/face/22981/medium_95a47d4cd5b0994c.jpg"><span>+
											9</span></a>
								</div>
							</div>
							<div class="block followers">
								<h5>本週最多訂閱(男)</h5>
								<div class="block-nav">
									<a href="/user/johnkuo16"><img alt="John  Bigots"
										src="https://images.dappei.com/uploads/user/face/3442/medium_85216428ab0d82d6.jpg"><span>+
											7</span></a><a href="/user/familybros"><img alt="唯家"
										src="https://images.dappei.com/uploads/user/face/41/medium_dac8d6cb404b4984.jpg"><span>+
											6</span></a><a href="/user/chehaoyang7"><img alt="綿羊奶瓶"
										src="https://images.dappei.com/uploads/user/face/27301/medium_ffbc8efd2ad3214c.jpg"><span>+
											5</span></a><a href="/user/plainakko"><img alt="Akko Liu"
										src="https://images.dappei.com/uploads/user/face/14/medium_ac315d53d6cf3920.jpg"><span>+
											5</span></a><a href="/user/joey7821785"><img alt="Benny bee"
										src="https://images.dappei.com/uploads/user/face/561/medium_306f30aac3951362.jpg"><span>+
											5</span></a><a href="/user/jackchiu"><img alt="Jack Chiu"
										src="https://images.dappei.com/uploads/user/face/1445/medium_419391b920c59274.jpg"><span>+
											4</span></a><a href="/user/Chainloop"><img alt="圈入準"
										src="https://images.dappei.com/uploads/user/face/1374/medium_e88ff92196283ddd.jpg"><span>+
											4</span></a><a href="/user/RikoChang"><img alt="Rïko Chang"
										src="https://images.dappei.com/uploads/user/face/2618/medium_915e4848ff1176d5.jpg"><span>+
											3</span></a><a href="/user/familybrosWT"><img alt="Familybros 唯庭"
										src="https://images.dappei.com/uploads/user/face/15803/medium_804fbb01abdf5f7c.jpg"><span>+
											3</span></a>
								</div>
							</div>
							<div class="block likes">
								<h5>本週最多喜歡</h5>
								<div class="block-nav">
									<a href="/user/plainakko"><img alt="Akko Liu"
										src="https://images.dappei.com/uploads/user/face/14/medium_ac315d53d6cf3920.jpg"><span>+46</span></a><a
										href="/user/emma5200"><img alt="emma5200"
										src="https://images.dappei.com/uploads/user/face/94063/medium_8497a99cca472058.jpg"><span>+35</span></a><a
										href="/user/Chainloop"><img alt="圈入準"
										src="https://images.dappei.com/uploads/user/face/1374/medium_e88ff92196283ddd.jpg"><span>+28</span></a><a
										href="/user/uniannie"><img alt="安妮"
										src="https://images.dappei.com/uploads/user/face/78650/medium_2df44c26e1b205a6.jpg"><span>+23</span></a><a
										href="/user/eyes198877han"><img alt="77涵"
										src="https://images.dappei.com/uploads/user/face/19/medium_1784e91db6528e64.jpg"><span>+16</span></a><a
										href="/user/familybros"><img alt="唯家"
										src="https://images.dappei.com/uploads/user/face/41/medium_dac8d6cb404b4984.jpg"><span>+15</span></a><a
										href="/user/h22250121"><img alt="馬可-有禮貌穿搭"
										src="https://images.dappei.com/uploads/user/face/92174/medium_0a9dd062ee408dec.jpg"><span>+13</span></a><a
										href="/user/wind7220"><img alt="轟炸機"
										src="https://images.dappei.com/uploads/user/face/571/medium_f0970f9a69f9410d.jpg"><span>+12</span></a><a
										href="/user/sanford521"><img alt="Wei Chia"
										src="https://images.dappei.com/uploads/user/face/83959/medium_d906761120887743.jpg"><span>+12</span></a>
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
									<a class="option" href="/styles/461">正裝混搭</a><a class="option"
										href="/styles/751">英倫混搭</a><a class="option" href="/styles/31">條紋</a><a
										class="option" href="/styles/13557">格紋西裝</a><a class="option"
										href="/styles/2959">NORMCORE</a><a class="option"
										href="/styles/68">學院風</a>
								</div>
							</div>
							<div class="block daily-hot">
								<h5>本日人氣</h5>
								<div class="block-nav">
									<a href="/photos/80651"><img
										src="https://images.dappei.com/uploads/photo/image/80651/thumb_24bf917e2d82374a.jpg"
										alt="Thumb 24bf917e2d82374a"><span>+ 6</span></a><a
										href="/photos/80653"><img
										src="https://images.dappei.com/uploads/photo/image/80653/thumb_a0a0e8564e06b33b.jpg"
										alt="Thumb a0a0e8564e06b33b"><span>+ 1</span></a>
								</div>
							</div>
							<div class="block weekly-hot">
								<h5>本周人氣</h5>
								<div class="block-nav">
									<a href="/photos/80601"><img
										src="https://images.dappei.com/uploads/photo/image/80601/thumb_2821df726c4f6e93.jpg"
										alt="Thumb 2821df726c4f6e93"><span>+ 7</span></a><a
										href="/photos/80592"><img
										src="https://images.dappei.com/uploads/photo/image/80592/thumb_a0e2b2a7ba34c7fa.jpg"
										alt="Thumb a0e2b2a7ba34c7fa"><span>+ 8</span></a>
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
									<a class="option" href="/articles/7980">人生就夠苦了，咖啡就別喝苦的了！手搖品牌「不要對我尖叫」推出冬季限定熱飲溫暖你的心！</a><a
										class="option" href="/articles/7933">帶「它」上路最吸睛！盤點 8
										位潮人的選車考量， 跟著全新世代 BMW 1 系列成為眾人焦點！</a><a class="option"
										href="/articles/7944">戒不掉手滑失心瘋？跟著「極簡
										Youtuber」這樣做，面對網拍你也可以不為所動！</a><a class="option"
										href="/articles/7948">台北旅遊住宿推薦！盤點 3 間文青風「青年旅館」讓你住的平價又超值！</a><a
										class="option" href="/articles/7954">用「水兵帽」穿出性冷淡風時尚！瑞士穿搭達人
										Chris 利用簡單的單品搭出高級感，極簡又俐落！</a><a class="option"
										href="/articles/7960">屁股大顯矮又顯胖，教你 4 招穿搭小技巧，讓你輕鬆化身完美型男！</a>
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
										alt="Thumb 9912e9d5babec619"></a><a href="/brands/311"><img
										src="https://images.dappei.com/uploads/brand/image/311/thumb_001d7ec0e1c646a0.jpg"
										alt="Thumb 001d7ec0e1c646a0"></a>
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
										style="position: absolute; top: 0px; left: 0px; border-color: transparent; box-shadow: none; opacity: 1; background: none 0% 0%/auto repeat scroll padding-box border-box rgb(255, 255, 255);"><input
										autocomplete="off" id="search-input" name="q"
										placeholder="現在大家都在搜尋「正式」" type="text" class="tt-input"
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
					<ul class="dropdown-menu">
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
		<div id="create-photo">
			<h1>上傳搭配照</h1>
			<div class="step" id="step1">
				<div class="disable-layer">
					<h3>步驟1 - 選擇搭配</h3>
				</div>
				<div id="upload-photo">
					<div id="upload-photo-container"></div>
					<div id="upload-information">
						<div class="upload-information-container">
							<h2>步驟1 - 選擇搭配</h2>
							<div class="info">
								<p>
									<i class="fa fa-info-circle"></i>上傳搭配前，請詳細閱讀以下規則：
								</p>
								<p>1. 上傳搭配後，請在步驟二將人物調整至左圖大小。</p>
								<p>2. 照片檔案大小請小於20MB。</p>
								<p>3. 請勿使用手機自拍，如違反規定將會被系統下架。</p>
								<p>4. 請使用平視角度拍攝，如拍攝角度太高(低)將會被系統下架。</p>
								<p>5. 請勿過度後製(壓LOGO、去背、貼圖、切割畫面、色差過大...)。</p>
								<p>6. 搭配照請全身入鏡，如違反規定將會被系統下架。</p>
								<p>7. 搭配照尺寸建議800x1280，請勿自行後製底色或框線補足。</p>
								<p>8. 請上傳本人搭配，勿以品牌帳號經營，違反者將停權。</p>
								<p>9. 請確保上傳搭配畫質清晰，如照片太模糊將會被系統下架。</p>
							</div>
							<form class="upload-form">
								<div class="file-upload-container upload-photo">
									<i class="fa fa-upload"></i>選擇搭配照<input
										accept="image/gif, image/jpg, image/jpeg, image/png"
										class="file-upload-input" id="upload-photo-button" type="file">
								</div>
							</form>
						</div>
					</div>
				</div>
			</div>
			<div class="step" id="step2">
				<div class="disable-layer">
					<h3>步驟2 - 剪裁圖片</h3>
				</div>
				<div id="crop-photo">
					<div id="crop-photo-container">
						<div class="body"></div>
						<div class="photo"></div>
					</div>
					<div id="crop-information">
						<div class="crop-information-container">
							<h2>步驟2 - 剪裁圖片</h2>
							<div class="info">
								<p>
									<i class="fa fa-info-circle"></i>請使用下列功能鍵，盡可能將人物調整至左圖人形大小，並關閉人像檢視人物是否置中，如果無法移動，請先放大圖片。
								</p>
							</div>
							<div id="crop-tools">
								<div class="tool">
									<a class="resize-button" data-action="moveUp"
										href="javascript:void(0);"><i class="fa fa-arrow-up"></i>上移</a>
								</div>
								<div class="tool">
									<a class="resize-button" data-action="moveLeft"
										href="javascript:void(0);"><i class="fa fa-arrow-left"></i>左移</a><a
										class="resize-button" data-action="moveRight"
										href="javascript:void(0);"><i class="fa fa-arrow-right"></i>右移</a>
								</div>
								<div class="tool">
									<a class="resize-button" data-action="moveDown"
										href="javascript:void(0);"><i class="fa fa-arrow-down"></i>下移</a>
								</div>
								<div class="tool">
									<a class="resize-button" data-action="zoomIn"
										href="javascript:void(0);"><i class="fa fa-search-plus"></i>放大</a><a
										class="resize-button" data-action="zoomOut"
										href="javascript:void(0);"><i class="fa fa-search-minus"></i>縮小</a>
								</div>
								<div class="tool">
									<a class="resize-button" data-action="body"
										href="javascript:void(0);"><i class="fa fa-search"></i><span>關閉人像</span></a>
								</div>
								<div class="tool">
									<a class="resize-button" data-action="Reset"
										href="javascript:void(0);"><i class="fa fa-repeat"></i>重置</a>
								</div>
								<input id="crop-x" name="crop_x" type="hidden" value="0"><input
									id="crop-y" name="crop_y" type="hidden" value="0"><input
									id="crop-ratio" name="crop_ratio" type="hidden" value="1"><a
									class="next-step" href="javascript:void(0);">下一步</a>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="step" id="step3">
				<div class="disable-layer">
					<h3>步驟3 - 填寫資料</h3>
				</div>
				<div id="edit-information">
					<div class="information-form">
						<h2>步驟3 - 填寫資料</h2>
						<div class="label">
							<label>主題</label><span>本次搭配的主題？</span>
						</div>
						<div class="input">
							<input class="title" name="title" placeholder="簡單敘述穿搭主題"
								type="text">
						</div>
						<div class="label">
							<label>風格</label><span>本次的搭配屬於什麼風格？</span>
						</div>
						<div class="input">
							<div
								class="select2-container select2-container-multi token style"
								id="s2id_autogen1" style="width: 900px;">
								<ul class="select2-choices">
									<li class="select2-search-field"><input type="text"
										autocomplete="off" autocorrect="off" autocapitilize="off"
										spellcheck="false" class="select2-input select2-default"
										id="s2id_autogen2" maxlength="20" style="width: 882px;">
									</li>
								</ul>
								<div
									class="select2-drop select2-drop-multi select2-display-none">
									<ul class="select2-results">
									</ul>
								</div>
							</div>
							<input class="token style select2-offscreen"
								data-no-result="請輸入風格名稱" data-placeholder="ex: 甜美、搖滾......"
								data-type="style" name="style_name_collection" type="text"
								tabindex="-1">
						</div>
						<div class="label">
							<label>說明</label><span>為這次搭配做點說明</span>
						</div>
						<div class="input">
							<textarea class="description" name="description"
								placeholder="輸入說明可增加被搜尋到的機率，也可以讓你的搭配更容易被各大媒體編輯寫文取材！"></textarea>
						</div>
						<a class="next-step" href="javascript:void(0);">上傳搭配</a>
					</div>
				</div>
			</div>
			<div class="step" id="step4">
				<div class="disable-layer">
					<h3>步驟4 - 標籤單品</h3>
				</div>
				<div id="tagger">
					<div class="photo-container">
						<div class="photo">
							<div class="image-container"></div>
						</div>
						<div class="tags"></div>
					</div>
					<div class="tag-description">
						<div class="tag-description-container">
							<h2>步驟4 - 標籤單品</h2>
							<div class="info">
								<p>
									<i class="fa fa-info-circle"></i>請點擊左方照片新增單品照，讓您的搭配更豐富！
								</p>
								<p>(建議照片尺寸：960x640)</p>
							</div>
							<a class="next-step" href="javascript:void(0);">完成</a>
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
							name="f121348bcee0528" width="320px" height="70px"
							title="fb:page Facebook Social Plugin" frameborder="0"
							allowtransparency="true" allowfullscreen="true" scrolling="no"
							allow="encrypted-media"
							src="https://www.facebook.com/v2.3/plugins/page.php?adapt_container_width=true&amp;app_id=197245307016690&amp;channel=https%3A%2F%2Fstaticxx.facebook.com%2Fconnect%2Fxd_arbiter.php%3Fversion%3D44%23cb%3Df12de0902013b74%26domain%3Ddappei.com%26origin%3Dhttps%253A%252F%252Fdappei.com%252Ff36ff53d7ec9348%26relation%3Dparent.parent&amp;container_width=320&amp;height=70&amp;hide_cover=false&amp;href=https%3A%2F%2Fwww.facebook.com%2FDappei&amp;locale=zh_TW&amp;sdk=joey&amp;show_facepile=false&amp;show_posts=false&amp;small_header=true&amp;width=320"
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
							name="f391981805b2af4" width="320px" height="70px"
							title="fb:page Facebook Social Plugin" frameborder="0"
							allowtransparency="true" allowfullscreen="true" scrolling="no"
							allow="encrypted-media"
							src="https://www.facebook.com/v2.3/plugins/page.php?adapt_container_width=true&amp;app_id=197245307016690&amp;channel=https%3A%2F%2Fstaticxx.facebook.com%2Fconnect%2Fxd_arbiter.php%3Fversion%3D44%23cb%3Df2b2740d7d40214%26domain%3Ddappei.com%26origin%3Dhttps%253A%252F%252Fdappei.com%252Ff36ff53d7ec9348%26relation%3Dparent.parent&amp;container_width=320&amp;height=70&amp;hide_cover=false&amp;href=https%3A%2F%2Fwww.facebook.com%2Fdappeiformale&amp;locale=zh_TW&amp;sdk=joey&amp;show_facepile=false&amp;show_posts=false&amp;small_header=true&amp;width=320"
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
							name="f2107d6390069ac" width="320px" height="70px"
							title="fb:page Facebook Social Plugin" frameborder="0"
							allowtransparency="true" allowfullscreen="true" scrolling="no"
							allow="encrypted-media"
							src="https://www.facebook.com/v2.3/plugins/page.php?adapt_container_width=true&amp;app_id=197245307016690&amp;channel=https%3A%2F%2Fstaticxx.facebook.com%2Fconnect%2Fxd_arbiter.php%3Fversion%3D44%23cb%3Df49e7dad416bd4%26domain%3Ddappei.com%26origin%3Dhttps%253A%252F%252Fdappei.com%252Ff36ff53d7ec9348%26relation%3Dparent.parent&amp;container_width=320&amp;height=70&amp;hide_cover=false&amp;href=https%3A%2F%2Fwww.facebook.com%2Fdappeiforfemale&amp;locale=zh_TW&amp;sdk=joey&amp;show_facepile=false&amp;show_posts=false&amp;small_header=true&amp;width=320"
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
					src="https://staticxx.facebook.com/connect/xd_arbiter.php?version=44#channel=f36ff53d7ec9348&amp;origin=https%3A%2F%2Fdappei.com"
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

	<div data-id="94059" id="container">
		<div id="create-photo">
			<h1>上傳搭配照</h1>
			<div class="step" id="step1">
				<div class="disable-layer">
					<h3>步驟1 - 選擇搭配</h3>
				</div>
				<div id="upload-photo">
					<div id="upload-photo-container"></div>
					<div id="upload-information">
						<div class="upload-information-container">
							<h2>步驟1 - 選擇搭配</h2>
							<div class="info">
								<p>
									<i class="fa fa-info-circle"></i>上傳搭配前，請詳細閱讀以下規則：
								</p>
								<p>1. 上傳搭配後，請在步驟二將人物調整至左圖大小。</p>
								<p>2. 照片檔案大小請小於20MB。</p>
								<p>3. 請勿使用手機自拍，如違反規定將會被系統下架。</p>
								<p>4. 請使用平視角度拍攝，如拍攝角度太高(低)將會被系統下架。</p>
								<p>5. 請勿過度後製(壓LOGO、去背、貼圖、切割畫面、色差過大...)。</p>
								<p>6. 搭配照請全身入鏡，如違反規定將會被系統下架。</p>
								<p>7. 搭配照尺寸建議800x1280，請勿自行後製底色或框線補足。</p>
								<p>8. 請上傳本人搭配，勿以品牌帳號經營，違反者將停權。</p>
								<p>9. 請確保上傳搭配畫質清晰，如照片太模糊將會被系統下架。</p>
							</div>
							<form class="upload-form">
								<div class="file-upload-container upload-photo">
									<i class="fa fa-upload"></i>選擇搭配照<input
										accept="image/gif, image/jpg, image/jpeg, image/png"
										class="file-upload-input" id="upload-photo-button" type="file">
								</div>
							</form>
						</div>
					</div>
				</div>
			</div>
			<div class="step" id="step2">
				<div class="disable-layer">
					<h3>步驟2 - 剪裁圖片</h3>
				</div>
				<div id="crop-photo">
					<div id="crop-photo-container">
						<div class="body"></div>
						<div class="photo"></div>
					</div>
					<div id="crop-information">
						<div class="crop-information-container">
							<h2>步驟2 - 剪裁圖片</h2>
							<div class="info">
								<p>
									<i class="fa fa-info-circle"></i>請使用下列功能鍵，盡可能將人物調整至左圖人形大小，並關閉人像檢視人物是否置中，如果無法移動，請先放大圖片。
								</p>
							</div>
							<div id="crop-tools">
								<div class="tool">
									<a class="resize-button" data-action="moveUp"
										href="javascript:void(0);"><i class="fa fa-arrow-up"></i>上移</a>
								</div>
								<div class="tool">
									<a class="resize-button" data-action="moveLeft"
										href="javascript:void(0);"><i class="fa fa-arrow-left"></i>左移</a><a
										class="resize-button" data-action="moveRight"
										href="javascript:void(0);"><i class="fa fa-arrow-right"></i>右移</a>
								</div>
								<div class="tool">
									<a class="resize-button" data-action="moveDown"
										href="javascript:void(0);"><i class="fa fa-arrow-down"></i>下移</a>
								</div>
								<div class="tool">
									<a class="resize-button" data-action="zoomIn"
										href="javascript:void(0);"><i class="fa fa-search-plus"></i>放大</a><a
										class="resize-button" data-action="zoomOut"
										href="javascript:void(0);"><i class="fa fa-search-minus"></i>縮小</a>
								</div>
								<div class="tool">
									<a class="resize-button" data-action="body"
										href="javascript:void(0);"><i class="fa fa-search"></i><span>關閉人像</span></a>
								</div>
								<div class="tool">
									<a class="resize-button" data-action="Reset"
										href="javascript:void(0);"><i class="fa fa-repeat"></i>重置</a>
								</div>
								<input id="crop-x" name="crop_x" type="hidden" value="0"><input
									id="crop-y" name="crop_y" type="hidden" value="0"><input
									id="crop-ratio" name="crop_ratio" type="hidden" value="1"><a
									class="next-step" href="javascript:void(0);">下一步</a>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="step" id="step3">
				<div class="disable-layer">
					<h3>步驟3 - 填寫資料</h3>
				</div>
				<div id="edit-information">
					<div class="information-form">
						<h2>步驟3 - 填寫資料</h2>
						<div class="label">
							<label>主題</label><span>本次搭配的主題？</span>
						</div>
						<div class="input">
							<input class="title" name="title" placeholder="簡單敘述穿搭主題"
								type="text">
						</div>
						<div class="label">
							<label>風格</label><span>本次的搭配屬於什麼風格？</span>
						</div>
						<div class="input">
							<div
								class="select2-container select2-container-multi token style"
								id="s2id_autogen1" style="width: 900px;">
								<ul class="select2-choices">
									<li class="select2-search-field"><input type="text"
										autocomplete="off" autocorrect="off" autocapitilize="off"
										spellcheck="false" class="select2-input select2-default"
										id="s2id_autogen2" maxlength="20" style="width: 882px;">
									</li>
								</ul>
								<div
									class="select2-drop select2-drop-multi select2-display-none">
									<ul class="select2-results">
									</ul>
								</div>
							</div>
							<input class="token style select2-offscreen"
								data-no-result="請輸入風格名稱" data-placeholder="ex: 甜美、搖滾......"
								data-type="style" name="style_name_collection" type="text"
								tabindex="-1">
						</div>
						<div class="label">
							<label>說明</label><span>為這次搭配做點說明</span>
						</div>
						<div class="input">
							<textarea class="description" name="description"
								placeholder="輸入說明可增加被搜尋到的機率，也可以讓你的搭配更容易被各大媒體編輯寫文取材！"></textarea>
						</div>
						<a class="next-step" href="javascript:void(0);">上傳搭配</a>
					</div>
				</div>
			</div>
			<div class="step" id="step4">
				<div class="disable-layer">
					<h3>步驟4 - 標籤單品</h3>
				</div>
				<div id="tagger">
					<div class="photo-container">
						<div class="photo">
							<div class="image-container"></div>
						</div>
						<div class="tags"></div>
					</div>
					<div class="tag-description">
						<div class="tag-description-container">
							<h2>步驟4 - 標籤單品</h2>
							<div class="info">
								<p>
									<i class="fa fa-info-circle"></i>請點擊左方照片新增單品照，讓您的搭配更豐富！
								</p>
								<p>(建議照片尺寸：960x640)</p>
							</div>
							<a class="next-step" href="javascript:void(0);">完成</a>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>


</body>
</body>

</html>




</body>
</html>