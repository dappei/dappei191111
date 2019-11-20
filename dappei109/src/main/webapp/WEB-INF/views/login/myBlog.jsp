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
				<tr>
					<td>${currentUser.username}</td>
					<td><a href="personalPg">個人資料</a></td>
					<td><a href="blogOderedRec">我的穿搭</a></td>
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
	<!-- 	acother Tab -->
	<div class="album py-5 bg-light">
		<div class="container">
			<div class="row">
<!-- 			var=myarticle  (自己取)  ，  取完之後 把所有想要抓得值 直接在前面加 -->
				<c:forEach var='myarticle' items='${myblog}'>
					<div class="col-md-4">
						<div class="card mb-4 shadow-sm">
							<img alt="img"
								src="<c:url value='/getPicture/${myarticle.articleid}'/>"
								height=300>
							<div class="aa-blog-info">
								<a	href="<c:url value='/getSingleBlog?articleId=${myarticle.articleid}'/>">${myarticle.title}</a>
							
								<p>${myarticle.articleShortContent}</p>
								<a href="#"></a>
									<a href="${pageContext.request.contextPath}/Article/update?articleid=${myarticle.articleid}">修改文章</a>
							</div>
						</div>
					</div>
					
				</c:forEach>
			</div>
		</div>
	</div>
	<jsp:include page="/WEB-INF/views/footer.jsp" />
</body>
</html>