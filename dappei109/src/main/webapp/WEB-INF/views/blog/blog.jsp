<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix='form' uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author"
	content="Mark Otto, Jacob Thornton, and Bootstrap contributors">
<meta name="generator" content="Jekyll v3.8.5">
<!-- Bootstrap core CSS -->
<link
	href="https://bootstrap.hexschool.com/docs/4.2/dist/css/bootstrap.css"
	rel="stylesheet">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>

<title>部落格</title>

<style>
.bd-placeholder-img {
	font-size: 1.125rem;
	text-anchor: middle;
}

@media ( min-width : 768px) {
	.bd-placeholder-img-lg {
		font-size: 3.5rem;
	}
	.fakeimg {
		height: 200px;
		background: #aaa;
	}

.divcss5 img{width:700px; height:280px} 
}
</style>
<!-- Custom styles for this template -->
<link href="album.css" rel="stylesheet">
</head>


<jsp:include page="/WEB-INF/views/header.jsp" />
<body>


	<div class="demo">
		<div class="container mt-5">



			<div id="show" class="carousel slide row" data-ride="carousel">
				<div class="carousel-inner col">
					<ol class="carousel-indicators">
						<li data-target="#show" data-slide-to="1" class="active"></li>
						<li data-target="#show" data-slide-to="2"></li>
						<li data-target="#show" data-slide-to="3"></li>
						<li data-target="#show" data-slide-to="4"></li>
						<li data-target="#show" data-slide-to="5"></li>
					</ol>
					<div class="carousel-inner">
						<div class="carousel-item active">
							<img src="indeximage/01.jpg" class="d-block w-100" alt="img">
						</div>
						<div class="carousel-item">
							<img src="indeximage/02.jpg" class="d-block w-100" alt="img">
						</div>
						<div class="carousel-item">
							<img src="indeximage/03.jpg" class="d-block w-100" alt="img">
						</div>
						<div class="carousel-item">
							<img src="indeximage/04.jpg" class="d-block w-100" alt="img">
						</div>
						<div class="carousel-item">
							<img src="indeximage/05.jpg" class="d-block w-100" alt="img">
						</div>
					</div>
					<a class="carousel-control-prev" href="#show" role="button"
						data-slide="prev"> <span class="carousel-control-prev-icon"
						aria-hidden="true"></span> <span class="sr-only">Previous</span>
					</a> <a class="carousel-control-next" href="#show" role="button"
						data-slide="next"> <span class="carousel-control-next-icon"
						aria-hidden="true"></span> <span class="sr-only">Next</span>
					</a>
				</div>
			</div>
		</div>
	</div>


	<ul class="aa-catg-nav">
		<c:if test="${isLogin}">
			<li><a href="blog/add">新增文章</a></li>
		</c:if>
	</ul>
	<!-- 	<div class="row"> -->
	<!-- 	<div class="col-md-10"> -->
<!-- 	<div class="album py-5 bg-light"> -->
<!-- 		<div class="container"> -->
<!-- 			<div class="row"> -->
<%-- 				<c:forEach var='product' items='${products}'> --%>
<!-- 					<div class="col-md-4"> -->
<!-- 						<div class="card mb-4 shadow-sm"> -->
<!-- 							<img alt="img" -->
<%-- 								src="<c:url value='/getPicture/${product.articleid}'/>" --%>
<!-- 								height=300> -->

<!-- 							<div class="aa-blog-info"> -->

<!-- 								<a -->
<%-- 									href="<c:url value='/getSingleBlog?articleId=${product.articleid}'/>">${product.title}</a> --%>
<%-- 								<p>${product.articleShortContent}</p> --%>
<!-- 								<a href="#"></a> -->
<!-- 								<div></div> -->

<!-- 							</div> -->
<!-- 						</div> -->
<!-- 					</div> -->
<%-- 				</c:forEach> --%>

<!-- 			</div> -->
<!-- 		</div> -->
<!-- 	</div> -->
	<!-- </div> -->
	<!-- <div class="col-md-2"> -->
	<!-- <div> -->
	<!-- 		<h4>Category</h4> -->
	<%-- 		<c:forEach items="${categoryList}" var="category"> --%>
	<%-- 			<a href='products/${category.categoryId}'>${category.categoryName}</a> --%>
	<!-- 			<br> -->
	<%-- 		</c:forEach> --%>

	<!-- 	</div> -->
	<!-- 	</div> -->
	<!-- </div> -->




	<div class="container" style="margin-top: 30px">
		<div class="row">
			<div class="col-sm-4">



				<ul class="nav nav-pills flex-column">
					<li class="nav-item">
						<h3>更多文章</h3> <a class="nav-link active" href="#">其他分類</a>
					</li>
					<br>
					<c:forEach items="${categoryList}" var="category">
						<a  href='products/${category.categoryId}'>${category.categoryName}</a>
						<br>
					</c:forEach>
				</ul>
				<hr class="d-sm-none">
			</div>

			<div class = "divcss5">
				<c:forEach var='product' items='${products}'>
						<h3><a
						href="<c:url value='/getSingleBlog?articleId=${product.articleid}'/>">${product.title}</a></h3>
					<h5>Title description, Dec 7, 2017</h5>
					<img alt="img"
						src="<c:url value='/getPicture/${product.articleid}'/>" height=300>
					<p>Some text..</p>
					<p>${product.articleShortContent}</p>
					<br>
				</c:forEach>
			</div>

		</div>
	</div>










	<jsp:include page="/WEB-INF/views/footer.jsp" />
</body>
</html>

