<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html>
<html lang="TW">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href='http://fonts.googleapis.com/css?family=Open+Sans'
	rel='stylesheet' type='text/css'>
<title>${currentUser.username}</title>
<style>
body {
	font-family: 'Open Sans', sans-serif;
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
</style>

</head>
<body>
	<jsp:include page="/WEB-INF/views/header.jsp" />
	<br>
	<br>
	<div class="container">
		<div class="fb-profile">
			<img width='850' height='350' align="left" class="fb-image-lg"
				src="https://im.marieclaire.com.tw/s1920c1080h100b0/assets/mc/201908/5D47C4A74E57F1564984487.jpeg"
				alt="Profile image example" /> <img width='100' height='220'
				align="left" class="fb-image-profile thumbnail"
				src="<c:url value='memberPhoto/${currentUser.memberId}'/>"
				alt="Profile image example" />
			<div class="fb-profile-text">
				<tr>
					<td>${currentUser.username}</td>
					<td><a href="personalPg">個人資料</a></td>
					<td><a href="myblog">我的穿搭</a></td>
					<td><a href="eventOderedRec">我的活動</a></td>
					<td><a href="">我的訂單</a></td>
					<td><a href="">問題回報</a></td>
				</tr>
			</div>
		</div>
	</div>
	<br>
	<br>
	<br>
	<br>
	<div class="container" style="padding-left: 250px">
		<form class="form-horizontal">
			<fieldset>
				<div class="form-group">
					<label class="col-md-4 control-label" for="username">暱稱</label>
					<div class="col-md-6">
						<input id="username" name="username" type="text"
							path="username" value="${member.username}"
							class="form-control input-md" />
					</div>
				</div>
				<div class="form-group">
					<label class="col-md-4 control-label" for="email">Email</label>
					<div class="col-md-6">
						<input id="email" name="email" type="text" path="email"
							value="${member.email}" class="form-control input-md" />
					</div>
				</div>
				<div class="form-group">
					<label class="col-md-4 control-label" for="phone">電話</label>
					<div class="col-md-6">
						<input id="phone" name="phone" type="text" path="phone"
							value="${member.phone}" class="form-control input-md" />
					</div>
				</div>
				<div class="form-group">
					<label class="col-md-4 control-label" for="location">地址</label>
					<div class="col-md-6">
						<input id="location" name="location" type="text"
							path="location" value="${member.location}"
							class="form-control input-md" />
					</div>
				</div>
				<!-- Button -->

				<input type="button" class="btn btn-success slideright"
					onclick="javascript:location.href='updMember'" value="修改資料">
			</fieldset>
		</form>

	</div>

</body>
</html>