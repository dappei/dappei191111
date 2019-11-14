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
	margin: -150px 10px 0px 50px;
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
</style>

</head>
<body>
	<jsp:include page="/WEB-INF/views/header.jsp" />
	<br>
	<br>
	<div class="container">
		<div class="fb-profile">
			<img align="left" class="fb-image-lg"
				src="http://lorempixel.com/850/280/nightlife/5/"
				alt="Profile image example" /> <img align="left"
				class="fb-image-profile thumbnail"
				src="http://lorempixel.com/180/180/people/9/"
				alt="Profile image example" />
			<div class="fb-profile-text">
				<h1>Eli Macy</h1>
				<nav class="nav d-flex justify-content-between">
					<a class="p-2 text-muted" href="#"> </a> <a class="p-2 text-muted"
						href="#">個人文章</a> <a class="p-2 text-muted" href="#">個人活動</a> <a
						class="p-2 text-muted" href="#">個人商城</a> <a class="p-2 text-muted"
						href="#">個人照片</a>

				</nav>
			</div>
		</div>
	</div>
	<br>
	<div></div>
	<!-- /container -->



</body>
</html>