<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<html>
<head>
<meta charset="UTF-8">


<title>Products</title>
</head>
<jsp:include page="/WEB-INF/views/header.jsp" />
	<section>
		<div>
			<div class="container" style="text-align: center">
				<h1>發文分類</h1>
			</div>
		</div>
	</section>
	<hr
		style="height: 1px; border: none; color: #333; background-color: #333;">
	<section class="container">
		<div class="row">
			<c:forEach var='product' items='${category}'>
				<div class="col-sm-6 col-md-3" style="width: 360px; height: 360px">
					<div class="thumbnail">
						<div class="caption">
							<img alt="img" height="150"
								src="<c:url value='/getPicture/${product.articleid }'/>">
							<p>
								<b style='font-size: 16px;'>${product.title}</b>
							</p>
							<p>${product.author}</p>
							<p>${product.articlecontent}</p>
						</div>
					</div>
				</div>
			</c:forEach>
		</div>
	</section>
	
	<jsp:include page="/WEB-INF/views/footer.jsp" />
</body>
</html>
