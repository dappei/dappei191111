<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html>
<html lang="TW">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>${currentUser.username}</title>
<style>
.main-banner {
	margin-bottom: 20px;
	align:center;
}

</style>

</head>
<body>
	<jsp:include page="/WEB-INF/views/header.jsp" />
	<br>
	<br>
	<div class="main-banner">
		<div class="container">
			<img src="../../resources/images/personphoto.jpg" class="img-responsive"/>
			<img width='50' height='50'
				src="<c:url value='getPicture/${currentUser.memberId}'/>" />
		</div>
	</div>



	<jsp:include page="/WEB-INF/views/footer.jsp" />
</body>
</html>