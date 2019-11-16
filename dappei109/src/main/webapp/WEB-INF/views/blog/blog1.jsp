<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix='form' uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>個人文章</title>

</head>
<body>

	<!-- header區塊 -->
<jsp:include page="/WEB-INF/views/header.jsp" />	

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
									</div>
								</div>
								<!-- Blog Pagination -->
<table>
<c:forEach items="${comment }" var="cmt">
<tr>
	<td>${cmt.commentName }
	<td>${cmt.comment}
	
	</c:forEach>




</table>


								<form:form class="replyMsgText" method = "post" style="display: inlne" action="./blog/addComment" modelAttribute="commentBean">       
									<form:input type="hidden" path="artId" value="${product.articleid}" />
									<form:input type="text" path="commentName"/>
									<form:textarea rows="2em" cols="100em" name="replyText" placeholder="leave ur message to this post" path="comment"/>
									<br>
									<input type="submit" value="留言" class=""/>
									<input type="button" value="返回" name="" id="" class=""/>
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