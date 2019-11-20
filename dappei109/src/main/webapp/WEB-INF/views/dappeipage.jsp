<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<!-- dappeipage.jsp -->
<html>
<head>
<meta charset="UTF-8">
<head>
<meta charset="UTF-8">
<title>個人頁面</title>

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

<style>
#container {
	margin: 0 auto;
	padding: 70px 25px 40px;
	width: 960px;
	min-height: 100%;
	background: #fff;
	cursor: auto;
}

html, body, div, span, applet, object, iframe, h1, h2, h3, h4, h5, h6, p,
	blockquote, pre, a, abbr, acronym, address, big, cite, code, del, dfn,
	em, img, ins, kbd, q, s, samp, small, strike, strong, sub, sup, tt, var,
	b, u, i, center, dl, dt, dd, ol, ul, li, fieldset, form, label, legend,
	table, caption, tbody, tfoot, thead, tr, th, td, article, aside, canvas,
	details, embed, figure, figcaption, footer, header, hgroup, menu, nav,
	output, ruby, section, summary, time, mark, audio, video {
	margin: 0;
	padding: 0;
	border: 0;
	font: inherit;
	font-size: 100%;
	vertical-align: baseline;
}

body {
	position: relative;
	width: 100%;
	height: 100%;
	background-color: #fff;
	font-family: Ubuntu, Noto, sans-serif;
	font-size: 14px;
	-webkit-font-smoothing: antialiased;
	-moz-osx-font-smoothing: grayscale;
	font-smooth: always;
}

html {
	line-height: 1;
}

user agent stylesheet
html {
	color: -internal-root-color;
}

#display-photo:after {
	content: "";
	display: table;
	clear: both;
}

html, body, div, span, applet, object, iframe, h1, h2, h3, h4, h5, h6, p,
	blockquote, pre, a, abbr, acronym, address, big, cite, code, del, dfn,
	em, img, ins, kbd, q, s, samp, small, strike, strong, sub, sup, tt, var,
	b, u, i, center, dl, dt, dd, ol, ul, li, fieldset, form, label, legend,
	table, caption, tbody, tfoot, thead, tr, th, td, article, aside, canvas,
	details, embed, figure, figcaption, footer, header, hgroup, menu, nav,
	output, ruby, section, summary, time, mark, audio, video {
	margin: 0;
	padding: 0;
	border: 0;
	font: inherit;
	font-size: 100%;
	vertical-align: baseline;
}

user agent stylesheet
div {
	display: block;
}

#container {
	margin: 0 auto;
	padding: 70px 25px 40px;
	width: 960px;
	min-height: 100%;
	background: #fff;
	cursor: auto;
}

body {
	position: relative;
	width: 100%;
	height: 100%;
	background-color: #fff;
	font-family: Ubuntu, Noto, sans-serif;
	font-size: 14px;
	-webkit-font-smoothing: antialiased;
	-moz-osx-font-smoothing: grayscale;
	font-smooth: always;
}

html {
	line-height: 1;
}

user agent stylesheet
html {
	color: -internal-root-color;
}

#display-photo #main .block.photo-collections:after {
	content: "";
	display: table;
	clear: both;
}

#display-photo #main .block:after {
	content: "";
	display: table;
	clear: both;
}

#display-photo #main .block.photo-collections .title {
	padding-bottom: 20px;
	*zoom: 1;
}

#display-photo #main .block .title {
	padding: 20px 0;
	border-top: 1px solid #d9d9d9;
	*zoom: 1;
}

html, body, div, span, applet, object, iframe, h1, h2, h3, h4, h5, h6, p,
	blockquote, pre, a, abbr, acronym, address, big, cite, code, del, dfn,
	em, img, ins, kbd, q, s, samp, small, strike, strong, sub, sup, tt, var,
	b, u, i, center, dl, dt, dd, ol, ul, li, fieldset, form, label, legend,
	table, caption, tbody, tfoot, thead, tr, th, td, article, aside, canvas,
	details, embed, figure, figcaption, footer, header, hgroup, menu, nav,
	output, ruby, section, summary, time, mark, audio, video {
	margin: 0;
	padding: 0;
	border: 0;
	font: inherit;
	font-size: 100%;
	vertical-align: baseline;
}

#display-photo #main .block.photo-collections:after {
	content: "";
	display: table;
	clear: both;
}

#display-photo #main .block:after {
	content: "";
	display: table;
	clear: both;
}

#display-photo #main .block.photo-collections {
	margin-bottom: 25px;
	*zoom: 1;
}

#display-photo #main .block {
	margin-bottom: 20px;
	*zoom: 1;
}

#display-photo #main .block .title:after {
	content: "";
	display: table;
	clear: both;
}

#display-photo #main .block .title h2 {
	float: left;
	font-size: 20px;
	color: #4a4a4a;
	font-weight: 700;
}

h1, h2, h3, h4, h5, h6 {
	font-weight: 700;
}

html, body, div, span, applet, object, iframe, h1, h2, h3, h4, h5, h6, p,
	blockquote, pre, a, abbr, acronym, address, big, cite, code, del, dfn,
	em, img, ins, kbd, q, s, samp, small, strike, strong, sub, sup, tt, var,
	b, u, i, center, dl, dt, dd, ol, ul, li, fieldset, form, label, legend,
	table, caption, tbody, tfoot, thead, tr, th, td, article, aside, canvas,
	details, embed, figure, figcaption, footer, header, hgroup, menu, nav,
	output, ruby, section, summary, time, mark, audio, video {
	margin: 0;
	padding: 0;
	border: 0;
	font: inherit;
	font-size: 100%;
	vertical-align: baseline;
}

user agent stylesheet
h2 {
	display: block;
	font-size: 1.5em;
	margin-block-start: 0.83em;
	margin-block-end: 0.83em;
	margin-inline-start: 0px;
	margin-inline-end: 0px;
	font-weight: bold;
}

#display-photo #main .photo-container {
	position: relative;
	margin-bottom: 20px;
	width: 600px;
	height: 640px;
	*zoom: 1;
}

#display-photo #main .block.comments #comment-form:after {
	content: "";
	display: table;
	clear: both;
}

#display-photo #main .block.comments #comment-form .form {
	width: 600px;
}

#display-photo #main .block.comments #comment-form .form textarea {
	resize: none;
	margin: 0;
	padding: 10px;
	width: 578px;
	height: 100px;
	font-size: 14px;
	border: 1px solid #d9d9d9;
}

textarea {
	resize: none;
}

user agent stylesheet
textarea {
	-webkit-writing-mode: horizontal-tb !important;
	text-rendering: auto;
	color: initial;
	letter-spacing: normal;
	word-spacing: normal;
	text-transform: none;
	text-indent: 0px;
	text-shadow: none;
	display: inline-block;
	text-align: start;
	-webkit-appearance: textarea;
	background-color: white;
	-webkit-rtl-ordering: logical;
	flex-direction: column;
	resize: auto;
	cursor: text;
	white-space: pre-wrap;
	overflow-wrap: break-word;
	margin: 0em;
	font: 400 13.3333px Arial;
	border-width: 1px;
	border-style: solid;
	border-color: rgb(169, 169, 169);
	border-image: initial;
	padding: 2px;
}

#display-photo #main .block.comments #comment-form .form .actions {
	margin-top: 10px;
	*zoom: 1;
	margin-bottom: 0;
}

#display-photo #main .actions {
	float: left;
	margin-right: 10px;
	width: 80px;
	height: 640px;
	*zoom: 1;
}

#display-photo #main .block.comments #comment-form .form .actions a {
	display: block;
	width: 558px;
	color: #4d4d4d;
	background: #f5f5f5;
	border: 1px solid #dbdbdb;
}

.button.black {
	background: #000;
}

.button {
	float: left;
	display: block;
	-moz-border-radius: 2px;
	-webkit-border-radius: 2px;
	border-radius: 2px;
	padding: 7px 20px;
	color: #fff;
	font-size: 14px;
	line-height: 20px;
	text-align: center;
}

a {
	color: #333;
	text-decoration: none;
}

#display-photo #main .block.comments #comment-form .form .actions:after
	{
	content: "";
	display: table;
	clear: both;
}

#display-photo #main .actions:after {
	content: "";
	display: table;
	clear: both;
}

#display-photo #main .block.comments #comment-form .form .actions {
	margin-top: 10px;
	*zoom: 1;
	margin-bottom: 0;
}

#display-photo #main .actions {
	float: left;
	margin-right: 10px;
	width: 80px;
	height: 640px;
	*zoom: 1;
}

#display-photo #main .block.comments #comment-form .form {
	width: 600px;
}

html, body, div, span, applet, object, iframe, h1, h2, h3, h4, h5, h6, p,
	blockquote, pre, a, abbr, acronym, address, big, cite, code, del, dfn,
	em, img, ins, kbd, q, s, samp, small, strike, strong, sub, sup, tt, var,
	b, u, i, center, dl, dt, dd, ol, ul, li, fieldset, form, label, legend,
	table, caption, tbody, tfoot, thead, tr, th, td, article, aside, canvas,
	details, embed, figure, figcaption, footer, header, hgroup, menu, nav,
	output, ruby, section, summary, time, mark, audio, video {
	margin: 0;
	padding: 0;
	border: 0;
	font: inherit;
	font-size: 100%;
	vertical-align: baseline;
}

#display-photo #main .block {
	margin-bottom: 20px;
	*zoom: 1;
}

#display-photo #sidebar {
	float: left;
	width: 335px;
}

#display-photo #sidebar #user-profile {
	*zoom: 1;
	margin-bottom: 10px;
	height: 640px;
}

#display-photo #sidebar #recommend-photos {
	margin-bottom: 20px;
	*zoom: 1;
}

#display-photo #sidebar #recommend-photos .title {
	height: 50px;
}

#display-photo #sidebar #recommend-photos .title h3 {
	float: left;
	padding: 15px 0;
	font-size: 20px;
	color: #4a4a4a;
	font-weight: 700;
}

h1, h2, h3, h4, h5, h6 {
	font-weight: 700;
}

#display-photo #sidebar #recommend-photos .title {
	height: 50px;
}

#display-photo #sidebar #recommend-photos .photo-list {
	padding-top: 7px;
	*zoom: 1;
}

#display-photo #sidebar #recommend-photos .photo-list a {
	position: relative;
	float: left;
	display: block;
	margin-right: 4px;
	margin-bottom: 4px;
}

a {
	color: #333;
	text-decoration: none;
}

#display-photo #sidebar #recommend-photos .photo-list a img {
	display: block;
	width: 109px;
	height: 174px;
}

a img {
	border: none;
}

#display-photo #sidebar #recommend-photos .photo-list a span {
	position: absolute;
	padding: 3px;
	right: 0;
	bottom: 0;
	z-index: 5;
	color: #fff;
	font-size: 16px;
	background: #000;
}

#display-photo #sidebar #recommend-photos .photo-list a {
	position: relative;
	float: left;
	display: block;
	margin-right: 4px;
	margin-bottom: 4px;
}

a {
	color: #333;
	text-decoration: none;
}

#display-photo #sidebar #recommend-photos .photo-list a img {
	display: block;
	width: 109px;
	height: 174px;
}

#display-photo #sidebar #recommend-photos .photo-list a span {
	position: absolute;
	padding: 3px;
	right: 0;
	bottom: 0;
	z-index: 5;
	color: #fff;
	font-size: 16px;
	background: #000;
}

#display-photo #sidebar #recommend-photos .photo-list a {
	position: relative;
	float: left;
	display: block;
	margin-right: 4px;
	margin-bottom: 4px;
}

#display-photo #sidebar #recommend-photos .photo-list a:nth-of-type(3n)
	{
	margin-right: 0;
}

#display-photo #sidebar #recommend-photos .photo-list a img {
	display: block;
	width: 109px;
	height: 174px;
}

#display-photo #sidebar #recommend-photos .photo-list a span {
	position: absolute;
	padding: 3px;
	right: 0;
	bottom: 0;
	z-index: 5;
	color: #fff;
	font-size: 16px;
	background: #000;
}

#display-photo #sidebar #recommend-photos .photo-list a {
	position: relative;
	float: left;
	display: block;
	margin-right: 4px;
	margin-bottom: 4px;
}

#display-photo #sidebar #recommend-photos .photo-list:after {
	content: "";
	display: table;
	clear: both;
}

#display-photo #sidebar #recommend-photos .photo-list {
	padding-top: 7px;
	*zoom: 1;
}

#display-photo #sidebar #recommend-photos:after {
	content: "";
	display: table;
	clear: both;
}

#display-photo #sidebar #recommend-photos {
	margin-bottom: 20px;
	*zoom: 1;
}

#display-photo #sidebar #recommend-users {
	margin-bottom: 20px;
	*zoom: 1;
}

#display-photo #sidebar #lastest-comments {
	margin-bottom: 20px;
}

#display-photo #sidebar #lastest-comments .title {
	height: 50px;
}

#display-photo #sidebar #lastest-comments .title h3 {
	float: left;
	padding: 15px 0;
	font-size: 20px;
	color: #4a4a4a;
	font-weight: 700;
}

h1, h2, h3, h4, h5, h6 {
	font-weight: 700;
}

#display-photo #sidebar #lastest-comments .title a {
	float: right;
	line-height: 50px;
	color: #9b9b9b;
	text-decoration: none;
	font-size: 14px;
}

#display-photo #sidebar #lastest-comments .title {
	height: 50px;
}

#display-photo #sidebar #lastest-comments ul {
	margin-top: 10px;
	width: 100%;
	max-height: 350px;
	overflow: hidden;
}

#display-photo #sidebar #lastest-comments ul li {
	position: relative;
	margin-bottom: 20px;
	margin-left: 10px;
}

#display-photo #sidebar #lastest-comments ul li:before {
	content: '';
	width: 46px;
	height: 46px;
	-moz-border-radius: 50%;
	-webkit-border-radius: 50%;
	border-radius: 50%;
	background-color: #fff;
	border: 2px solid #e4e4e4;
	position: absolute;
	top: 0;
	left: 0;
	z-index: 2;
}

#display-photo #sidebar #lastest-comments ul li:before {
	content: '';
	width: 46px;
	height: 46px;
	-moz-border-radius: 50%;
	-webkit-border-radius: 50%;
	border-radius: 50%;
	background-color: #fff;
	border: 2px solid #e4e4e4;
	position: absolute;
	top: 0;
	left: 0;
	z-index: 2;
}

#display-photo #sidebar #lastest-comments ul a {
	display: table;
	color: #9b9b9b;
	text-decoration: none;
	font-size: 14px;
}

#display-photo #sidebar #lastest-comments ul img {
	position: absolute;
	width: 40px;
	height: 40px;
	margin-right: 15px;
	margin-top: 5px;
	margin-left: 5px;
	z-index: 3;
	-moz-border-radius: 50%;
	-webkit-border-radius: 50%;
	border-radius: 50%;
}

#display-photo #sidebar #lastest-comments ul span {
	padding: 0 20px 0 60px;
	line-height: 18px;
	height: 50px;
	display: table-cell;
	vertical-align: middle;
}

#display-photo #sidebar #lastest-comments ul a {
	display: table;
	color: #9b9b9b;
	text-decoration: none;
	font-size: 14px;
}

#display-photo #sidebar #lastest-comments ul img {
	position: absolute;
	width: 40px;
	height: 40px;
	margin-right: 15px;
	margin-top: 5px;
	margin-left: 5px;
	z-index: 3;
	-moz-border-radius: 50%;
	-webkit-border-radius: 50%;
	border-radius: 50%;
}

#display-photo #sidebar #lastest-comments ul span {
	padding: 0 20px 0 60px;
	line-height: 18px;
	height: 50px;
	display: table-cell;
	vertical-align: middle;
}

#display-photo #sidebar #lastest-comments ul a {
	display: table;
	color: #9b9b9b;
	text-decoration: none;
	font-size: 14px;
}

#display-photo #sidebar #lastest-comments ul li:after {
	content: '';
	height: 100%;
	width: 2px;
	background-color: #f2f2f2;
	position: absolute;
	top: 20px;
	left: 23px;
	z-index: 1;
}

#display-photo #sidebar #lastest-comments ul span {
	padding: 0 20px 0 60px;
	line-height: 18px;
	height: 50px;
	display: table-cell;
	vertical-align: middle;
}

#display-photo #sidebar #lastest-comments ul {
	margin-top: 10px;
	width: 100%;
	max-height: 350px;
	overflow: hidden;
}

ol, ul {
	list-style: none;
}

#display-photo #sidebar #lastest-comments {
	margin-bottom: 20px;
}

#display-photo #sidebar {
	float: left;
	width: 335px;
}

#display-photo:after {
	content: "";
	display: table;
	clear: both;
}

#display-photo {
	*zoom: 1;
}

#container {
	margin: 0 auto;
	padding: 70px 25px 40px;
	width: 960px;
	min-height: 100%;
	background: #fff;
	cursor: auto;
}

#display-photo #sidebar #user-profile .profile .face img {
	width: 90px;
	height: 90px;
	-moz-border-radius: 50%;
	-webkit-border-radius: 50%;
	border-radius: 50%;
}

a img {
	border: none;
}

display-photo #main .actions {
	float: left;
	margin-right: 10px;
	width: 80px;
	height: 640px;
	*zoom: 1;
}

#display-photo #main {
	float: left;
	margin-right: 25px;
	width: 602px;
}

#display-photo #main .photo-container {
	position: relative;
	margin-bottom: 20px;
	width: 600px;
	height: 640px;
	*zoom: 1;
}

#display-photo #main .actions {
	float: left;
	margin-right: 10px;
	width: 80px;
	height: 640px;
	*zoom: 1;
}

#display-photo #main .photo-container .photo {
	float: left;
	position: relative;
	width: 400px;
	height: 640px;
}

#display-photo #main .photo-container .tags {
	float: left;
	color: #333;
	width: 110px;
	height: 640px;
	padding: 11px 0;
	background: #f5f5f5;
	-moz-box-sizing: border-box;
	-webkit-box-sizing: border-box;
	box-sizing: border-box;
}

#display-photo #main .photo-container {
	position: relative;
	margin-bottom: 20px;
	width: 600px;
	height: 640px;
	*zoom: 1;
}

#display-photo #main .block.photo-collections {
	margin-bottom: 25px;
	*zoom: 1;
}

#display-photo #main .block {
	margin-bottom: 20px;
	*zoom: 1;
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
	word-spacing: normal;
}

html, body, div, span, applet, object, iframe, h1, h2, h3, h4, h5, h6, p,
	blockquote, pre, a, abbr, acronym, address, big, cite, code, del, dfn,
	em, img, ins, kbd, q, s, samp, small, strike, strong, sub, sup, tt, var,
	b, u, i, center, dl, dt, dd, ol, ul, li, fieldset, form, label, legend,
	table, caption, tbody, tfoot, thead, tr, th, td, article, aside, canvas,
	details, embed, figure, figcaption, footer, header, hgroup, menu, nav,
	output, ruby, section, summary, time, mark, audio, video {
	margin: 0;
	padding: 0;
	border: 0;
	font: inherit;
	font-size: 100%;
	vertical-align: baseline;
}

body {
	position: relative;
	width: 100%;
	height: 100%;
	background-color: #fff;
	font-family: Ubuntu, Noto, sans-serif;
	font-size: 14px;
	-webkit-font-smoothing: antialiased;
	-moz-osx-font-smoothing: grayscale;
	font-smooth: always;
}

#display-photo #main {
	float: left;
	margin-right: 25px;
	width: 602px;
}

#display-photo #sidebar {
	float: left;
	width: 335px;
}

article, aside, details, figcaption, figure, footer, header, hgroup,
	main, menu, nav, section, summary {
	display: block;
}

#display-photo:after {
	content: "";
	display: table;
	clear: both;
}

#display-photo #main .block.photo-collections {
	margin-bottom: 25px;
	*zoom: 1;
}

#block1 {
	float: center;
}


</style>

</head>
<body>

	<jsp:include page="/WEB-INF/views/header.jsp" />
	<br>
	<br>
	<br>
	<br>

	<div class="container">
		<div class="row">


			<div class="col-md-7">
				<div data-id="94059" id="container">
					<div data-id="76832" id="display-photo" itemscope=""
						itemtype="http://schema.org/Article">
						<article id="main">
							<div class="photo-container col-mr-2">
								<div class="actions">
									<a class="like-photo dark " data-id="76832"
										href="javascript:void(0);"> <i class="fa fa-heart"></i><span
										data-counter="34"></span>

									</a><a class="collect-photo dark " data-id="76832"
										href="javascript:void(0);"><i class="fa fa-star"></i><span
										data-counter="1"></span></a><a class="tag dark "
										href="#tags-preview"><i class="fa fa-tag"></i></a><a
										class="comment  " href="#comments"></a>
								</div>
								<div class="photo">
									<img alt="適合工裝、燈心絨外套、褲子、多口袋工作褲、刺青、NET、陽台工作室、電氣虎鉗的穿搭"
										itemprop="image"
										src="https://images.dappei.com/uploads/photo/image/76832/large_b4a06d7d70a8e909.jpg"><span
										class="point point-98875" data-selector="#tag-98875"
										style="position: absolute; top: 166px; left: 264px; opacity: 0; width: 0px; height: 0px; margin: 0px;">tag</span><span
										class="point point-98876" data-selector="#tag-98876"
										style="position: absolute; top: 193px; left: 323px; opacity: 0; width: 0px; height: 0px; margin: 0px;">tag</span><span
										class="point point-98878" data-selector="#tag-98878"
										style="position: absolute; top: 278px; left: 329px; opacity: 0; width: 0px; height: 0px; margin: 0px;">tag</span><span
										class="point point-98877" data-selector="#tag-98877"
										style="position: absolute; top: 395px; left: 246px; opacity: 0; width: 0px; height: 0px; margin: 0px;">tag</span>
								</div>
								<div class="tags">
									<div class="tag" data-id="98875" data-x="264" data-y="166"
										id="tag-98875">
										<img alt="" class="tag-image" data-photo-id="76832"
											data-tag-id="98875"
											src="https://images.dappei.com/uploads/tag/image/98875/small_dc851010fb4c7d73.jpg">
									</div>
									<div class="tag" data-id="98876" data-x="323" data-y="193"
										id="tag-98876">
										<img alt="" class="tag-image" data-photo-id="76832"
											data-tag-id="98876"
											src="https://images.dappei.com/uploads/tag/image/98876/small_cf06360675ee2008.jpg">
									</div>
									<div class="tag" data-id="98878" data-x="329" data-y="278"
										id="tag-98878">
										<img alt="" class="tag-image" data-photo-id="76832"
											data-tag-id="98878"
											src="https://images.dappei.com/uploads/tag/image/98878/small_b46f56571728ba1d.jpg">
									</div>
									<div class="tag" data-id="98877" data-x="246" data-y="395"
										id="tag-98877">
										<img alt="" class="tag-image" data-photo-id="76832"
											data-tag-id="98877"
											src="https://images.dappei.com/uploads/tag/image/98877/small_3b05417ec2bfdfbf.jpg">
									</div>
								</div>
							</div>
							<div class="photo-information">
								<div class="title">
									<h1 itemprop="name">穿搭主題：20181102</h1>
								</div>
								<div class="description" itemprop="articleBody">
									<p>
										此次穿搭與台灣服飾品牌合作* <br>- <br>近幾年工裝風格崛起，每年秋冬都可以看到燈芯絨的單品，無論保暖或質感都是被認同的🉑️，這件NET的夾克外套，不管要單穿內搭或多層次穿搭，都很好發揮的款式，天氣逐漸變涼，是該入手外套了🧥。
										<br>- <br>燈芯絨夾克: NET <br>後背包: MCM <br>領巾:
										Beauty&amp;youth <br>內搭: GU Taiwan <br>褲子: Life by
										陽台工作室 <br>鞋子: Vatic Official Pages <br>襪子: Uniqlo
										Taiwan <br>-------------------------- <br>蝦皮 <a
											rel="nofollow" target="_blank" href="https://goo.gl/c7W8fQ">https://goo.gl/c7W8fQ</a>
										<br>陽台工作室INSTAGRAM <a rel="nofollow" target="_blank"
											href="https://goo.gl/DGtfSN">https://goo.gl/DGtfSN</a> <br>INSTAGRAM
										<a rel="nofollow" target="_blank" href="https://goo.gl/muWtCM">https://goo.gl/muWtCM</a>
										<br>FANSPAGE <a rel="nofollow" target="_blank"
											href="https://goo.gl/T4Rd3L">https://goo.gl/T4Rd3L</a> <br>BLOG
										<a rel="nofollow" target="_blank" href="https://goo.gl/skm1Ud">https://goo.gl/skm1Ud</a>
									</p>
									<div class="tags-preview" id="tags-preview">
										<h2>單品預覽</h2>
										<div class="tag-preview">
											<div class="tag-preview-image" data-photo-id="76832"
												data-tag-id="98875">
												<div class="tag-preview-image-container">
													<img
														src="https://images.dappei.com/uploads/tag/image/98875/medium_dc851010fb4c7d73.jpg"
														alt="Medium dc851010fb4c7d73">
												</div>
												<div class="info" style="display: none;">
													<div class="info-container">
														<p>NET 的 燈心絨外套</p>
													</div>
												</div>
											</div>
										</div>
										<div class="tag-preview">
											<div class="tag-preview-image" data-photo-id="76832"
												data-tag-id="98876">
												<div class="tag-preview-image-container">
													<img
														src="https://images.dappei.com/uploads/tag/image/98876/medium_cf06360675ee2008.jpg"
														alt="Medium cf06360675ee2008">
												</div>
												<div class="info" style="display: none;">
													<div class="info-container">
														<p>陽台工作室 的 褲子</p>
													</div>
												</div>
											</div>
										</div>
										<div class="tag-preview">
											<div class="tag-preview-image" data-photo-id="76832"
												data-tag-id="98878">
												<div class="tag-preview-image-container">
													<img
														src="https://images.dappei.com/uploads/tag/image/98878/medium_b46f56571728ba1d.jpg"
														alt="Medium b46f56571728ba1d">
												</div>
												<div class="info" style="display: none;">
													<div class="info-container">
														<p>電氣虎鉗 的 刺青</p>
													</div>
												</div>
											</div>
										</div>
										<div class="tag-preview">
											<div class="tag-preview-image" data-photo-id="76832"
												data-tag-id="98877">
												<div class="tag-preview-image-container">
													<img
														src="https://images.dappei.com/uploads/tag/image/98877/medium_3b05417ec2bfdfbf.jpg"
														alt="Medium 3b05417ec2bfdfbf">
												</div>
												<div class="info" style="display: none;">
													<div class="info-container">
														<p>陽台工作室 的 多口袋工作褲</p>
													</div>
												</div>
											</div>
										</div>
									</div>
								</div>

								<div class="block comments" data-id="76832" id="comments">
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
												<a class="button black" id="send-comment" data-id="76832"
													data-type="Photo" href="#">送出</a>
											</div>
										</div>
									</div>
								</div>
						</article>





					</div>
				</div>
			</div>


			<!-- ------------------------------------------------------------------------------------------------------------------------------------------------- -->
			<div class="col-md-5">
				<aside id="sidebar" style="padding-top: 70px;">
					<div id="user-profile">
						<div class="profile">
							<div class="face">
								<a href="/user/zhan1209"><img alt="陳捲毛的穿搭"
									src="https://images.dappei.com/uploads/user/face/1945/large_8d0ea0fd8ee8f31f.jpg?timestamp=1569858014"></a>
							</div>
						</div>
					</div>


					<div class="information">
						<div class="name">
							<a href="/user/zhan1209"><span itemprop="author" itemscope=""
								itemtype="http://schema.org/Person"><span itemprop="name">陳捲毛</span></span></a>
						</div>
						<div class="meta">
							<i class="fa fa-user"></i><span>196</span><i class="fa fa-users"></i><span>3762</span><i
								class="fa fa-camera"></i><span>170</span><i class="fa fa-star"></i><span>0</span>
						</div>
						<div class="actions">
							<a target="_blank" class="button black homepage float-left"
								href="https://www.facebook.com/zhan1209">個人網站</a> <br>
						</div>

					</div>
				</aside>



			</div>
		</div>
	</div>

<!-- ---------------------------------------------------------------------------------------------------------- -->
<jsp:include page="/WEB-INF/views/footer.jsp" />


</body>
</html>