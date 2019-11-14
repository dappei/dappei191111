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

<jsp:include page="/WEB-INF/views/header.jsp" />

<br><br><br><br><br>

<div style="text-align:center" >
<h1>請依照類別來挑選產品：</h1>
<c:forEach var='category' items='${categoryList}' >
	<a href='ants/${category}'>${category}</a><br>
</c:forEach>
</div>

<jsp:include page="/WEB-INF/views/footer.jsp" />


</body>
</html>