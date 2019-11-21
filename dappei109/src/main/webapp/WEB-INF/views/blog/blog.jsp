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
	.divcss5 img {
		width: 700px;
		height: 400px
	}
}
</style>
<!-- Custom styles for this template -->
<link href="album.css" rel="stylesheet">
</head>



<body>
	<jsp:include page="/WEB-INF/views/header.jsp" />

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
	<!-- 輪播圖 -->

	<div class="row">
		<div style="margin-right: 175px; margin-left: 175px">
			<div class="jumbotron" style="background-color: #FFFFFF;">
		
				<div class="container" align="right">
					<button type="button" class="btn btn-danger dropdown-toggle"
						data-toggle="dropdown">Category&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</button>
					<div class="dropdown-menu">
						<c:forEach items="${categoryList}" var="category">
							<a href='products/${category.categoryId}'>${category.categoryName}</a>
							<br>
						</c:forEach>
					</div>
					
				</div>

				<div class="col-md-3"></div>
				<div class="container">
					<hr style="height: 2px; border: none; background-color: #FF8888">
					<div class="row">
						<c:forEach var='product' items='${products}'>
							<div class="col-md-4">
								<div class="card mb-4 shadow-sm">
									<img alt="img"
										src="<c:url value='/getPicture/${product.articleid}'/>"
										height=300>
									<div class="aa-blog-info">
										<h5><a
											href="<c:url value='/getSingleBlog?articleId=${product.articleid}'/>">${product.title}</a>
											</h5>
										<h6>發布者 :${product.author}</h6>
										<p>${product.articleShortContent}</p>
										<a href="#"></a>
									</div>
								</div>
							</div>
						</c:forEach>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- 				文章分類區塊 -->


	<!-- 		文章分類區塊 -->

	<!-- 			<div class = "divcss5"> -->
	<%-- 				<c:forEach var='product' items='${products}'> --%>
	<!-- 						<h3><a -->
	<%-- 						href="<c:url value='/getSingleBlog?articleId=${product.articleid}'/>">${product.title}</a></h3> --%>
	<!-- 					<h5></h5> -->
	<!-- 					<img alt="img" -->
	<%-- 						src="<c:url value='/getPicture/${product.articleid}'/>" height=300> --%>
	<%-- 					<p>${product.articleShortContent} . . .</p> --%>
	<!-- 					<br> -->
	<%-- 				</c:forEach> --%>
	<!-- 			</div> -->

	<!-- 		</div> -->
	<!-- 	</div> -->

	<jsp:include page="/WEB-INF/views/footer.jsp" />
</body>
</html>

