<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet"
	href="//netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.min.css">
<title>Product</title>
</head>
<body> 
	<section>
		<div>
			<div class="container" style="text-align: center">
				<h2>產品資料</h2>
			</div>
		</div>
	</section>
	<section class="container">
		<div class="row">
		<img width='200' height='250' alt="未找到圖片" src="<c:url value='/getProductPicture/${product.productId}' /> "/>
			<div class="col-md-5">
				<h3>${product.productname}</h3>
				<p>顏色: ${product.color}</p>
				<p>尺寸: ${product.size}</p>
				<p>單價: ${product.price}</p>
				<c:choose>
					<c:when test='${product.discount != 1.0 }'>
						<p>
							折扣: ${product.discount} &nbsp;&nbsp; 
							實售: <font color='red'>${product.price*product.discount}元</font>
						</p>
					</c:when>
					<c:otherwise>
						<p>&nbsp;</p>
					</c:otherwise>
				</c:choose>
				<p>類型: ${product.companyBean.categoryname}</p>
				<p>
					<strong>商品編號: </strong> <span class='label label-warning'>
						${product.productId} </span>
				</p>
				<p>
					<a href="<spring:url value='stores/products' />" class="btn btn-default">
						<span class="glyphicon-hand-left glyphicon"></span>返回
					</a>
<%-- 					<form:form method='POST' modelAttribute="OrderItem">  --%>
<%-- 					<form:input class="form-control" path="productID" value="${product.productId}"/> --%>
<%-- 					<form:input class="form-control" path="productname" value="${product.productname}"/> --%>
<%-- 					<form:input class="form-control" path="color" value="${product.color}"/> --%>
<%-- 					<form:input class="form-control" path="size" value="${product.size}"/> --%>
<%--  沒有Company		<form:input class="form-control" path="companyName" value="${product.productname}"/> --%> 
<%-- 					<form:input class="form-control" path="qty" value="1"/> --%>
<%-- 					<form:input class="form-control" path="price" value="${product.price}"/> --%>
<%-- 					<form:input class="form-control" path="discount" value="${product.discount}"/> --%>
					
					<a href='put/${product.productId}' type='submit' class='btn btn-warning btn-large'> 
					    <span class='glyphicon-shopping-cart glyphicon'></span>加入購物車
					</a>
<%-- 					</form:form> --%>
				</p>
			</div>
		</div>
	</section>
</body>
</html>
