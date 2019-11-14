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


<style>
.bd-placeholder-img {
	font-size: 1.125rem;
	text-anchor: middle;
}

@media ( min-width : 768px) {
	.bd-placeholder-img-lg {
		font-size: 3.5rem;
	}
}
</style>
<!-- Custom styles for this template -->
<link href="album.css" rel="stylesheet">
</head>
<body>
	<ul class="aa-catg-nav">
		<li><a href="blog/add">新增文章</a></li>
		<li><a href="category">查詢(暫存跳轉)</a></li>
	</ul>
	<div class="album py-5 bg-light">
		<div class="container">
			<div class="row">
				<c:forEach var='product' items='${products}'>
					<div class="col-md-4">
						<div class="card mb-4 shadow-sm">
							<img alt="img"
								src="<c:url value='/getPicture/${product.articleid}'/>"
								height=200>

							<div class="aa-blog-info">

								<a
									href="<c:url value='/getSingleBlog?articleId=${product.articleid}'/>">${product.title}</a>
								<p>${product.articleShortContent}</p>
								<a href="#"></a>
								<div>
									<a href="#">刪除文章 </a> <a
										href="${pageContext.request.contextPath}/Article/update?articleid=${product.articleid}">修改文章</a>
								</div>

							</div>
						</div>
					</div>
				</c:forEach>

			</div>
		</div>
	</div>


</body>
</html>

