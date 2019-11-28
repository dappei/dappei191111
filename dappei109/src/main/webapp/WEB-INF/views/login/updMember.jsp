<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
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

table#acrylic {
	border-collapse: separate;
	background: #fff;
	-moz-border-radius: 5px;
	-webkit-border-radius: 5px;
	border-radius: 5px;
	margin: 50px auto;
	-moz-box-shadow: 0px 0px 5px rgba(0, 0, 0, 0.3);
	-webkit-box-shadow: 0px 0px 5px rgba(0, 0, 0, 0.3);
	box-shadow: 0px 0px 5px rgba(0, 0, 0, 0.3);
	cursor: pointer;
}

#acrylic thead {
	-moz-border-radius: 5px;
	-webkit-border-radius: 5px;
	border-radius: 5px;
}

#acrylic thead th {
	font-family: 'Roboto';
	font-size: 16px;
	font-weight: 400;
	color: #fff;
	text-shadow: 1px 1px 0px rgba(0, 0, 0, 0.5);
	text-align: left;
	padding: 20px;
	background-size: 100%;
	background-image: -webkit-gradient(linear, 50% 0%, 50% 100%, color-stop(0%, #646f7f),
		color-stop(100%, #4a5564));
	background-image: -moz-linear-gradient(#646f7f, #4a5564);
	background-image: -webkit-linear-gradient(#646f7f, #4a5564);
	background-image: linear-gradient(#646f7f, #4a5564);
	border-top: 1px solid #858d99;
}

#acrylic thead th:first-child {
	-moz-border-top-right-radius: 5px;
	-webkit-border-top-left-radius: 5px;
	border-top-left-radius: 5px;
}

#acrylic thead th:last-child {
	-moz-border-top-right-radius: 5px;
	-webkit-border-top-right-radius: 5px;
	border-top-right-radius: 5px;
}

#acrylic tbody tr td {
	font-family: 'Open Sans', sans-serif;
	font-weight: 400;
	color: #5f6062;
	font-size: 13px;
	padding: 20px 20px 20px 20px;
	border-bottom: 1px solid #e0e0e0;
}

#acrylic tbody tr:nth-child(2n) {
	background: #f0f3f5;
}

#acrylic tbody tr:last-child td {
	border-bottom: none;
}

#acrylic tbody tr:last-child td:first-child {
	-moz-border-bottom-right-radius: 5px;
	-webkit-border-bottom-left-radius: 5px;
	border-bottom-left-radius: 5px;
}

#acrylic tbody tr:last-child td:last-child {
	-moz-border-bottom-right-radius: 5px;
	-webkit-border-bottom-right-radius: 5px;
	border-bottom-right-radius: 5px;
}

#acrylic tbody:hover>tr td {
	filter: progid: DXImageTransform.Microsoft.Alpha(Opacity=50);
	opacity: 0.5;
}

#acrylic tbody:hover>tr:hover td {
	text-shadow: none;
	color: #2d2d2d;
	filter: progid: DXImageTransform.Microsoft.Alpha(enabled=false);
	opacity: 1;
	transition: 0.2s all;
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

</style>

</head>
<body>
	<jsp:include page="/WEB-INF/views/header2.jsp" />

	<div class="container">
		<div class="fb-profile">
			<img width='850' height='350' align="left" class="fb-image-lg"
				src="https://scontent.ftpe7-4.fna.fbcdn.net/v/l/t1.0-9/43639661_1966501910083969_6875886613876965376_n.jpg?_nc_cat=105&_nc_oc=AQlh8C5JMiksu96_A8D9oezlxOc4H1D9Xn1a2X3lj86588f3qflBcHSo35CtL7blxU4&_nc_ht=scontent.ftpe7-4.fna&oh=77c5c28eca7fb8a53904f873a1a75a20&oe=5E80A3F3"
				alt="Profile image example" /> <img width='100' height='220'
				align="left" class="fb-image-profile thumbnail"
				src="${pageContext.request.contextPath}/memberPhoto/${currentUser.memberId}"
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
	<div class="wrapper">
		<form:form modelAttribute="updMember" method="post">
			<table id="acrylic">
				<tbody>
					<tr>
						<td>暱稱</td>
						<td><form:input path="username" value="${updMember.username}" /></td>
					</tr>

					<tr>
						<td>生日</td>
						<td><form:input path="birthday"
								value="${fn:substring(updMember.birthday,0,10)}" /></td>
					</tr>
					<tr>
						<td>電話</td>
						<td><form:input path="phone" value="${updMember.phone}" /></td>
					</tr>
					<tr>
						<td>地址</td>
						<td><form:input path="location" value="${updMember.location}" /></td>
					</tr>
					<tr>
						<td></td>
						<td><a href="${pageContext.request.contextPath}/personalPg"><input
								type="submit" class="btn btn-success slideright" value="確認"></a></td>
					</tr>
				</tbody>
			</table>
		</form:form>
	</div>


	<jsp:include page="/WEB-INF/views/footer.jsp" />
</body>
</html>