<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<html>
<head>
<meta charset="UTF-8">


<title>分類查詢</title>
<style>
.content {
	
}
</style>
</head>

<body>
	<jsp:include page="/WEB-INF/views/header2.jsp" />
	<section>
		<br>
		<div>
			<div class="container" style="text-align: center; color: #FF8888;">
				<h1>部落格文章分類</h1>
			</div>
		</div>
			<br>
				<br>
	</section>
	<div class="row">
		<div style="margin-right: 150px; margin-left: 200px">
			
	
					<div class="container" style="background-color: #FFFFFF;">
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
											<p>暱稱 :${product.author}</p>
											<p style="font-size: 13px;">會員ID :${product.memberId}</p>
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


	<jsp:include page="/WEB-INF/views/footer.jsp" />
</body>
</html>
