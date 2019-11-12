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


</head>
<body>
	<jsp:include page="/WEB-INF/views/header.jsp" />


	<div style="text-align: center">
		<img class="cover-image"
			src="https://images.dappei.com/default/user_profile_cover/large/cover.jpg?timestamp=1572413671"
			alt="Cover">
	</div>
	<ul class="nav nav-tabs aa-products-tab">
		<li class="active"><a href="#men" data-toggle="tab">個人資料</a></li>
		<li><a href="" data-toggle="tab">我的穿搭</a></li>
		<li><a href="" data-toggle="tab">我的活動</a></li>
		<li><a href="" data-toggle="tab">訂單查詢</a></li>
		<li><a href="" data-toggle="tab">問題回報</a></li>
	</ul>
	<jsp:include page="/WEB-INF/views/footer.jsp" />
</body>
</html>
