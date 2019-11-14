<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

</head>
<body>

	<!-- header區塊 -->
<%-- 	<jsp:include page="header.jsp" /> --%>

	<!-- content 區塊 -->
	<section id="aa-blog-archive">
		<div class="container">
			<div class="row">
				<div class="col-md-12">
					<div class="aa-blog-archive-area aa-blog-archive-2">
						<div class="row">
							<div class="col-md-9">
								<div class="aa-blog-content">
									<div class="row">
										<%--                     <c:forEach var='product' items='${products}'> --%>
										<div style="width: 800px; height: 900px">
											<article class="aa-latest-blog-single">

												<img alt="img" height="400"
													src="<c:url value='/getPicture/${product.articleid }'/>">


												<div class="aa-blog-info">
													<h1 class="aa-blog-title">${product.title}</h1>
													<p>${product.articlecontent}</p>
													<a class="aa-read-mor-btn" href="#"><span
														class="fa fa-long-arrow-right"></span></a>
												</div>
											</article>
										</div>
										<%--                     </c:forEach> --%>
									</div>
								</div>
								<!-- Blog Pagination -->

								<form:form class="replyMsgText" method = "post" style="display: inlne" action="">
								
								
								
								
								</form:form>

							</div>
							<div class="col-md-3">
								<aside class="aa-blog-sidebar">
									<div class="aa-sidebar-widget">
										<h3>Category</h3>
										<ul class="aa-catg-nav">
											<li><a href="products/add">新增文章</a></li>
                      						<li><a href="category">查詢(暫存跳轉)</a></li>
										</ul>
									</div>
								
								
								</aside>
							</div>
						</div>

					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- footer 區塊 -->


</body>
</html>