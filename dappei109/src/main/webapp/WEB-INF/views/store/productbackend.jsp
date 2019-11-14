<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet"
    href="//netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.min.css">
<title>index</title>
</head>
<body>
<h1>首頁</h1>
<a href='products'>查詢所有產品</a> <a href='products/add'>新增產品資料</a> <a href='products/update'>修改產品</a>
<br><br>
	<div>
		<a href="<spring:url value='/products' />" class="btn btn-default">
			<span class="glyphicon-hand-left glyphicon"></span>返回
		</a> 
	</div>
</body>
</html>
    