<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<jsp:useBean id="today" class="java.util.Date" scope="session" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>訂購確認頁面</title>
</head>
<body>
	確認以下資料
	<form:form method='POST' modelAttribute="orderEventBean">
	<p>訂單日期:<fmt:formatDate value="${today}" pattern="yyyy-MM-dd" />
	<p>客戶姓名:
	<form:input path="name" type='text' value="${currentUser.username }" />
	<p>
	</form:form>

</body>
</html>