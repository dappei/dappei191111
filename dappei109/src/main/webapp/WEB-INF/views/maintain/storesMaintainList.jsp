<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>產品資料</title>
<style>
	table {
	  border-collapse: collapse;
	  width: 100%;
	}
	th, td {
	  text-align: center;
	  padding: 8px;
	  font-family: 微軟正黑體;
	}
	tr:nth-child(even) {background-color: #f2f2f2;}
	input[type=submit] {
	   background-color: #46a3ff;
	   color: white;
	   font-family: 微軟正黑體;
	   font-size: 14px;
	   padding: 8px 15px;
	   border: none;
	   border-radius: 4px;
	   cursor: pointer;
	}
	input[type=submit]:hover {
	   background-color: #84c1ff;
	}
	input[type=button] {
	   background-color: #46a3ff;
	   color: white;
	   font-family: 微軟正黑體;
	   font-size: 20px;
	   width:100%;
	   margin:10px 0px;
	   padding: 12px 20px;
	   border: none;
	   border-radius: 4px;
	   cursor: pointer;
	}
</style>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
</head>
<body>
	<jsp:include page="/WEB-INF/views/header.jsp" />
	<br><br><br>
	<div class="container" align="center">
		<h2>產品資料</h2><br>
		<div class="form-inline my-2 my-lg-0 "><a class="btn btn-secondary my-2 my-sm-0" href="pastproducts">已下架產品</a></div><br>
		<table border="1" >
		<tr><th>產品圖片<th>產品編號<th>產品簡編號<th>產品名稱<th>顏色<th>尺寸<th>類型<th>價格<th>折扣<th>庫存數量<th>狀態<th>修改<th>下架
		<c:forEach items="${stores}" var="product"  >
			<tr><td><img src="<c:url value='/getProductPicture/${product.productId}'/>" width="150" height="100"/>
			<td>${product.productId}
			<td>${product.productNo}
			<td>${product.productname}
			<td>${product.color}
			<td>${product.size}
			<td>${product.companyBean.categoryname}
			<td>${product.price}
			<td>${product.discount}
			<td>${product.stock}
			<td>${product.shelf}
			<td><a class="btn btn-secondary my-2 my-sm-0" href="update/${product.productId}">修改</a>
			<td><a class="btn btn-secondary my-2 my-sm-0" href="close/${product.productId}">結束</a>
		</c:forEach>
		</table>		
	</div><br>
	<br><br>
	<jsp:include page="/WEB-INF/views/footer.jsp" />
</body>
</html>