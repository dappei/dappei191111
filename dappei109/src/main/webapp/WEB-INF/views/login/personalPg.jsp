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
</style>

</head>
<body>
	<jsp:include page="/WEB-INF/views/header2.jsp" />
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
						onclick="javascript:location.href='dappeipage1'" value="我的穿搭"></td>
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
	<div class="container" style="margin-left: 35%">
		<div class="row">
			<table class="table table-hover table-responsive">
				<tbody>
					<tr>
						<td style="width: 200px">暱稱</td>
						<td style="width: 500px">${currentUser.username}</td>
					</tr>
					<tr>
						<td>帳號</td>
						<td>${currentUser.email}</td>
					</tr>
					<tr>
						<td>生日</td>
						<td>${fn:substring(currentUser.birthday,0,10)}</td>
					</tr>
					<tr>
						<td>電話</td>
						<td>${currentUser.phone}</td>
					</tr>
					<tr>
						<td>地址</td>
						<td>${currentUser.location}</td>
					</tr>
					<tr>
						<td></td>
						<td><input type="button" class="btn btn-success slideright"
							onclick="javascript:location.href='updMember/${currentUser.memberId}'"
							value="修改資料"></td>
					</tr>
				</tbody>
			</table>
		</div>
	</div>


	<jsp:include page="/WEB-INF/views/footer.jsp" />
</body>
</html>