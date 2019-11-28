<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix='form' uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
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
	<jsp:include page="/WEB-INF/views/header2.jsp" />

	<br>
	
	<div class="container">
		<div id="demo" class="carousel slide" data-ride="carousel">
			<!-- Indicators -->
			<ul class="carousel-indicators">
				<li data-target="#demo" data-slide-to="0" class="active"></li>
				<li data-target="#demo" data-slide-to="1"></li>
				<li data-target="#demo" data-slide-to="2"></li>
			</ul>
			<!-- The slideshow -->
			<div class="carousel-inner">
				<div class="carousel-item active">
					<a href="<spring:url value='getSingleBlog?articleId=57'/>"><img src="indeximage/blog01.jpg"  width="1100" height="500"></a>
					
				</div>
				<div class="carousel-item">
					<a href="<spring:url value='getSingleBlog?articleId=58'/>"><img src="indeximage/blog02.jpg"  width="1100" height="500"></a>
				</div>
				<div class="carousel-item">
					<a href="<spring:url value='getSingleBlog?articleId=59'/>"><img src="indeximage/blog03.jpg"  width="1100" height="500"></a>
				</div>
			</div>
			<!-- Left and right controls -->
			<a class="carousel-control-prev" href="#demo" data-slide="prev"> <span
				class="carousel-control-prev-icon"></span>
			</a> <a class="carousel-control-next" href="#demo" data-slide="next">
				<span class="carousel-control-next-icon"></span>
			</a>
		</div>
	</div><!-- 輪播圖結束 -->
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
										<h6>暱稱 :${product.author}</h6> <p style="font-size:13px;">會員ID :${product.memberId }</p>
										
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

	  <div class="container">
            <ul class="pagination list-inline mx-auto justify-content-center">
                <li class="page-item"><a class="page-link" href="<spring:url value='/blog?pageNo=1'/>">首頁</a></li>
                <li class="page-item"><c:if test="${pageNo > 1}"><a class="page-link" href="<spring:url value='/blog?pageNo=${pageNo-1}'/>">&laquo;</a></c:if></li>
						
                <c:forEach begin="1" end="${totalPages}" varStatus="loop">
                    <c:set var="active" value="${loop.index==pageNo?'active':''}"/>
                    <li class="page-item ${active}">
                    	<a class="page-link" href="<spring:url value="/blog?pageNo=${loop.index}"/>">${loop.index}</a>
                    </li>
                </c:forEach>
                <li class="page-item">
                    <c:if test="${pageNo<totalPages}"><a class="page-link" href="<spring:url value="/blog?pageNo=${pageNo+1}"/>">&raquo;</a></c:if>
                </li>
                <li class="page-item"><a class="page-link" href="<spring:url value="/blog?pageNo=${totalPages}"/>">末頁</a></li>
            </ul>
     	</div>

	<jsp:include page="/WEB-INF/views/footer.jsp" />
</body>
</html>

