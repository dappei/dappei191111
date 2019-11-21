<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix='form' uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>個人文章</title>
<style>
</style>
</head>
<body>

	<!-- header區塊 -->
	<jsp:include page="/WEB-INF/views/header.jsp" />

	<!-- content 區塊 -->

	<div class="container" style="display: block;">
		<br>
		<div style="margin-right: 132px; margin-left: 132px">
			<div class="jumbotron" style="background-color: #FFFFFF;">
				<section id="aa-blog-archive">

					<!-- 中央文字 -->
					<div style="text-align: left;">
						<article class="aa-latest-blog-single">

							<img alt="img" style="width: 800px; height: 500px"
								src="<c:url value='/getPicture/${product.articleid }'/>">

							<div>
								<br>
								<div class="aa-blog-info">
									<h3 class="aa-blog-title">${product.title}</h3>
									<br>
									<p>發布者 :${product.author}</p>
									<hr
										style="height: 2px; border: none; background-color: #FF8888">
									<p>${product.articlecontent}</p>
									<a class="aa-read-mor-btn" href="#"><span
										class="fa fa-long-arrow-right"></span></a>
								</div>
							</div>

						</article>
					</div>
					<!-- 				中央文字 -->
					<div>
						<table>
							<c:forEach items="${comment }" var="cmt">
								<tr>
									<td>${cmt.commentName }
									<td>${cmt.comment}
							</c:forEach>
						</table>
					</div>

					<div>
						<form:form class="replyMsgText" method="post"
							style="display: inlne" action="./blog/addComment"
							modelAttribute="commentBean">
							<form:input type="hidden" path="artId"
								value="${product.articleid}" />
							<form:input type="text" path="commentName" />
							<br>
							<br>
							<form:textarea rows="2em" cols="100em" name="replyText"
								placeholder="leave ur message to this post" path="comment" />
							<br>
							<input type="submit" value="留言" class="" />
							<input type="button" value="返回" name="" id="" class="" />
						</form:form>
					</div>

				</section>


				<!-- Blog Pagination -->

				<div class="col-md-3">
					<aside class="aa-blog-sidebar">
						<div class="aa-sidebar-widget">

							<ul class="aa-catg-nav">

								<c:if test="${isLogin}">
									<a
										href="${pageContext.request.contextPath}/Article/update?articleid=${product.articleid}">修改文章</a>
								</c:if>
							</ul>

						</div>
					</aside>

				</div>
			</div>
		</div>
	</div>


	<jsp:include page="/WEB-INF/views/footer.jsp" />
</body>

</html>