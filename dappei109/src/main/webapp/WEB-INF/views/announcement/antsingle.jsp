<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"
	import="java.util.ArrayList, com.web.announcement.model.AntBean"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ page session="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel='stylesheet'
	href='${pageContext.request.contextPath}/css/styles.css'
	type="text/css" />

<style>
.jumbotron {
	background-image:
		url('http://getwallpapers.com/wallpaper/full/2/1/4/1519214-orange-geometric-wallpaper-2560x1600-for-mobile.jpg');
	background-size: cover;
	background-repeat: no-repeat;
	height: 100%;
	font-family: 'Numans', sans-serif;
}

.fakeimg {
	height: 200px;
	background: #aaa;
}
</style>


</head>
<body style=""background-color:#000000"; opacity: 0.2;">


	<jsp:include page="/WEB-INF/views/header.jsp" />



	<div class="container" style="margin-top: 30px"  >
		<div style="text-align: center" class="jumbotron">
			<h1>公告詳細資料</h1>

			<br> <a href="<c:url value='/antfont'/>"
				class="btn btn-outline-secondary">查看所有消息</a>

		</div>


		<div>
			<h2>${ant.anttitle}</h2>
			<h5>${ant.anttime}</h5>
			<img class="fakeimg"
				src="getAntPicture/<c:out value='${ant.antid}' />" />
			<br><br>
			<p style="width:600px">${ant.antcontent}</p>
			<br>
			<p>
				<a href="<spring:url value='antfont' />" class="btn btn-dark">
					<span class="glyphicon-hand-left glyphicon"></span>返回
				</a>
		</div>
	</div>



	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>


	<jsp:include page="/WEB-INF/views/footer.jsp" />


</body>
</html>