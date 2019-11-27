<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix='form' uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>個人文章</title>
<script src="https://cdn.staticfile.org/jquery/1.10.2/jquery.min.js">
</script>
<script>$(document).ready(function(){
	  $("h3").click(function(){
		    $(this).hide();
		  });
		});</script>
<style>

input[type="text"]{padding:5px ; border:1px #FF8888 solid;
cursor:pointer;
-webkit-border-radius: 5px;
border-radius: 5px; }

#be {
	border:1px #FF8888 solid;
	padding:5px ;
	-webkit-border-radius: 5px;
	border-radius: 5px; 
} 

</style>
</head>
<body>

	<!-- header區塊 -->
	<jsp:include page="/WEB-INF/views/header2.jsp" />

	<!-- content 區塊 -->

	<div class="container" style="display: block;">

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
									<p>暱稱 :${product.author}</p>
									<hr	style="height: 2px; border: none; background-color: #FF8888">
									<p>${product.articlecontent}</p>
									<a class="aa-read-mor-btn" href="#"><span
										class="fa fa-long-arrow-right"></span></a>
								</div>
							</div>

						</article>
					</div>
			
						<hr	style="height: 2px; border: none; background-color: #FF8888">
					<div>
						<form:form class="replyMsgText" method="post"
							style="display: inlne" action="./blog/addComment"
							modelAttribute="commentBean">
							<form:input type="hidden" path="artId"
								value="${product.articleid}" />
							
							<p>暱稱:</p><form:input type="text"  style="width:200px; height:35px;" path="commentName" placeholder="暱稱" />
							<br>
							<br>
							<p>留言:</p><form:textarea rows="2em" cols="100em" name="replyText" id="be"
								placeholder="留言" path="comment" />
							<br>
							<input type="submit" value="留言"
								class='btn btn-danger dropdown-toggle' />
							<i class="glyphicon-hand-left glyphicon"></i>
							<a href="<spring:url value='/blog' />" class='btn btn-danger'>返回</a>
						</form:form>
					</div>
							<!-- 				回覆                                 -->
					
					<div>
						<table>
							<c:forEach items="${comment }" var="cmt">
								<tr>
									<td>${cmt.commentName }
									<td>${cmt.comment}
							</c:forEach>
						</table>
					</div>
					<!-- 				回覆                                 -->
					
				</section>
			</div>
		</div>
	</div>

<h3>如果你点我，我就会消失。</h3>
<h3>继续点我!</h3>
<h3>接着点我!</h3>
	<jsp:include page="/WEB-INF/views/footer.jsp" />
</body>

</html>