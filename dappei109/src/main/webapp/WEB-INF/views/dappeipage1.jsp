<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix='fmt' uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix='fn' uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html lang="TW">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href='http://fonts.googleapis.com/css?family=Open+Sans'
	rel='stylesheet' type='text/css'>
<title>${currentUser.username}</title>
<style>
* {
	font-family: 微軟正黑體
}

body {
	font-family: 'Open Sans', sans-serif;
	font-size: '50px'
}

.fb-profile img.fb-image-lg {
	z-index: 0;
	width: 100%;
	margin-bottom: 10px;
}

.fb-image-profile {
	margin: -130px 10px 0px 50px;
	z-index: 9;
	width: 20%;
}

@media ( max-width :768px) {
	.fb-profile-text>h1 {
		font-weight: 700;
		font-size: 16px;
	}
	.fb-image-profile {
		margin: -45px 10px 0px 25px;
		z-index: 9;
		width: 20%;
	}
}

.fullscreen_bg {
	position: fixed;
	top: 0;
	right: 0;
	bottom: 0;
	left: 0;
	background-size: cover;
	background-position: 50% 50%;
	background-image:
		url('http://cleancanvas.herokuapp.com/img/backgrounds/color-splash.jpg');
	background-repeat: repeat;
}

.btn {
	background: transparent;
	position: relative;
	overflow: hidden;
	transition: all .5s;
}

.btn:before, .btn:after {
	content: '';
	position: absolute;
	left: 0;
	top: 0;
	right: 0;
	bottom: 0;
	height: 100%;
	z-index: -1;
	transition: all .5s;
}

.btn:hover {
	color: white;
}

.btn:hover:after {
	transform: translate3D(0, 0, 0);
	transition: all .5s;
}

.btn-success:before {
	background: #28a745;
	z-index: -2;
}

.btn-success:after {
	background: #218838;
}

.btn-success:hover {
	background: #218838;
}

table {
	font-family: 'Calibri';
	background-color: #fff;
	color: #333;
}

.colorgraph {
	height: 5px;
	border-top: 0;
	background: #c4e17f;
	border-radius: 5px;
}

/* nav css */
.btn-change {
	height: 30px;
	width: 100px;
	background: Wheat;
	margin: 20px;
	float: left;
	box-shadow: 0 0 1px #ccc;
	-webkit-transition: all 0.5s ease-in-out;
	border: 0px;
	color: Navy;
}

.btn-change:hover {
	-webkit-transform: scale(1.1);
	background: AliceBlue;
}

th, td {
	font-size: 20px;
	font-family: 微軟正黑體;
}

#filter-options {
	float: right;
}

#filter-options .group {
	float: left;
	margin-right: 10px;
	*zoom: 1;
}

#filter-options .group li a {
	display: block;
	padding: 10px 15px;
	border: 1px solid #ddd;
	border-right: 0;
	background: #fff;
}

}
#photos-list {
	*zoom: 1;
}

#photos-list .photo {
	position: relative;
	float: left;
	margin: 0 8px 20px 0;
	width: 234px;
}

#photos-list .photo .photo-image {
	width: 234px;
	height: 375px;
	-moz-box-sizing: border-box;
	-webkit-box-sizing: border-box;
	box-sizing: border-box;
}
<!--
----------------------------------------------------------------------------------------------------
-->
</style>

</head>
<body>
	<jsp:include page="/WEB-INF/views/header.jsp" />
	<br>
	<br>
	<div class="container">
		<div class="fb-profile">
			<img width='850' height='350' align="left" class="fb-image-lg"
				src="https://scontent.ftpe7-4.fna.fbcdn.net/v/l/t1.0-9/43639661_1966501910083969_6875886613876965376_n.jpg?_nc_cat=105&_nc_oc=AQlh8C5JMiksu96_A8D9oezlxOc4H1D9Xn1a2X3lj86588f3qflBcHSo35CtL7blxU4&_nc_ht=scontent.ftpe7-4.fna&oh=77c5c28eca7fb8a53904f873a1a75a20&oe=5E80A3F3"
				alt="Profile image example" /> <img width='100' height='220'
				align="left" class="fb-image-profile thumbnail"
				src="<c:url value='memberPhoto/${currentUser.memberId}'/>"
				alt="Profile image example" />
			<div class="fb-profile-text">
				<h2>${currentUser.username}</h2>
				<tr>
					<td><input type="button" class="btn-change"
						onclick="javascript:location.href='personalPg'" value="個人資料"></td>
					<td><input type="button" class="btn-change"
						onclick="javascript:location.href='adddappeipage'" value="我的穿搭"></td>
					<td><input type="button" class="btn-change"
						onclick="javascript:location.href='eventOderedRec'" value="我的活動"></td>
					<td><input type="button" class="btn-change"
						onclick="javascript:location.href='blogOderedRec'" value="我的部落格"></td>
					<td><input type="button" class="btn-change"
						onclick="javascript:location.href='productOderedRec'" value="我的訂單"></td>

				</tr>
			</div>
		</div>
	</div>

	<br>
	<br>
	<br>
	<br>



	<div class="container">
		<div class="row">
			<div id="photo-wall">
				<div id="filter">
					<h3>
						<i class="photo"></i>陳捲毛 的搭配 
					</h3>
				</div>
				<div id="photos-list">
					<div class="photo" id="photo-76832">
						<a href="adddappeipage"><img alt="時尚穿搭：20181102"
							class="photo-image"
							src="https://images.dappei.com/uploads/photo/image/76832/medium_b4a06d7d70a8e909.jpg"></a><span
							class="hot-tag red"></span>
						<div class="face"></div>
						<div class="information">
							<a class="like-photo dark " data-id="76832"
								href="javascript:void(0);"> <i class="fa fa-heart"></i><span
								data-counter="34"></span>
							</a><a class="collect-photo dark " data-id="76832"
								href="javascript:void(0);"><i class="fa fa-star"></i><span
								data-counter="1"></span></a><a class="tag dark" href="deppeipage"><i
								class="fa fa-tag"></i></a><a class="comment "
								href="/photos/76832#comments"></a>
						</div>
					</div>
					<div class="photo" id="photo-76680">
						<a href="/photos/76680"><img alt="時尚穿搭：20181023"
							class="photo-image"
							src="https://images.dappei.com/uploads/photo/image/78466/medium_d9996436ad344497.jpg"></a><span
							class="hot-tag red"></span>
						<div class="face"></div>
						<div class="information">
							<a class="like-photo dark" data-id="76680"
								href="javascript:void(0);"> <!-- 								<div class="like-photo-container"> -->
								<i class="fa fa-heart"></i><span data-counter="48"></span> <!-- 								</div> -->
							</a><a class="collect-photo dark " data-id="76680"
								href="javascript:void(0);"><i class="fa fa-star"></i><span
								data-counter="2"></span></a><a class="tag dark"
								href="/photos/76680#tags-preview"><i class="fa fa-tag"></i></a><a
								class="comment " href="/photos/76680#comments"></a>
						</div>
					</div>
					<div class="photo" id="photo-76169">
						<a href="/photos/76169"><img alt="時尚穿搭：20180911"
							class="photo-image"
							src="https://images.dappei.com/uploads/photo/image/77393/medium_290ffe547f741f5c.jpg"></a><span
							class="hot-tag red"></span>
						<div class="face"></div>
						<div class="information">
							<a class="like-photo dark " data-id="76169"
								href="javascript:void(0);"> <i class="fa fa-heart"></i><span
								data-counter="43"></span>
							</a><a class="collect-photo  " data-id="76169"
								href="javascript:void(0);"><i class="fa fa-star"></i><span
								data-counter="0"></span></a><a class="tag dark"
								href="/photos/76169#tags-preview"><i class="fa fa-tag"></i></a><a
								class="comment dark" href="/photos/76169#comments"></a>
						</div>
					</div>
					<div class="photo last" id="photo-75518">
						<a href="/photos/75518"><img alt="時尚穿搭：＃不要穿普 —— 黑白灰穿搭（2）"
							class="photo-image"
							src="https://images.dappei.com/uploads/photo/image/75074/medium_a4050ae9db98a6b6.jpg"></a><span
							class="hot-tag red"></span>
						<div class="face"></div>
						<div class="information">
							<a class="like-photo dark " data-id="75518"
								href="javascript:void(0);"> <i class="fa fa-heart"></i><span
								data-counter="33"></span>
							</a><a class="collect-photo dark" data-id="75518"
								href="javascript:void(0);"><i class="fa fa-star"></i><span
								data-counter="1"></span></a><a class="tag dark"
								href="/photos/75518#tags-preview"><i class="fa fa-tag"></i></a><a
								class="comment " href="/photos/75518#comments"></a>
						</div>
					</div>



				</div>
			</div>
		</div>
	</div>





	<jsp:include page="/WEB-INF/views/footer.jsp" />
</body>
</html>