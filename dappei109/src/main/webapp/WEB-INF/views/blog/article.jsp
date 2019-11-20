<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<html>
<head>
<meta charset="UTF-8">


<title>分類查詢</title>
</head>

<body>
	<jsp:include page="/WEB-INF/views/header.jsp" />
	<section>
		<div>
			<div class="container" style="text-align: center">
				<h1>發文分類</h1>
			</div>
		</div>
	</section>

	<!-- 	<section class="container"> -->
	<!-- 		<div class="row"> -->
	<%-- 			<c:forEach var='product' items='${category}'> --%>
	<!-- 				<div class="col-sm-6 col-md-3" style="width: 360px; height: 360px"> -->
	<!-- 					<div class="thumbnail"> -->
	<!-- 						<div class="caption"> -->
	<!-- 							<img alt="img" height="150" -->
	<%-- 								src="<c:url value='/getPicture/${product.articleid }'/>"> --%>
	<!-- 							<p> -->
	<%-- 								<b style='font-size: 16px;'>${product.title}</b> --%>
	<!-- 							</p> -->
	<%-- 							<p>${product.author}</p> --%>
	<%-- 							<p>${product.articlecontent}</p> --%>
	<!-- 						</div> -->
	<!-- 					</div> -->
	<!-- 				</div> -->
	<%-- 			</c:forEach> --%>
	<!-- 		</div> -->
	<!-- 	</section> -->

	<div class="row">
		<div class="col-md-9">
			<div class="album py-5 bg-light">
				<div class="container">
					<div class="row">
						<c:forEach var='product' items='${category}'>
							<div class="col-md-4">
								<div class="card mb-4 shadow-sm">
									<img alt="img"
										src="<c:url value='/getPicture/${product.articleid}'/>"
										height=300>

									<div class="aa-blog-info">

										<a
											href="<c:url value='/getSingleBlog?articleId=${product.articleid}'/>">${product.title}</a>
										<p>發布者 :${product.author}</p>

										<p>${product.articleShortContent}</p>

										<a href="#"></a>
										<div></div>
									</div>
								</div>
							</div>
						</c:forEach>

					</div>
				</div>
			</div>
		</div>
	</div>
	
	
	<jsp:include page="/WEB-INF/views/footer.jsp" />
</body>
</html>
