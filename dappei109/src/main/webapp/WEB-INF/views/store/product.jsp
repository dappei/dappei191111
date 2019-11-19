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
				<p>類型: ${product.category.categoryname}</p>
				<p>
					<strong>商品編號: </strong> 
					<span class='label label-warning'>${product.productId} </span>
				</p>
				<p>
					<a href="<spring:url value='products' />" class="btn btn-default">
						<span class="glyphicon-hand-left glyphicon"></span>返回
					</a>
					<a href='put/${product.productId}' type='submit' class='btn btn-warning btn-large'> 
					    <span class='glyphicon-shopping-cart glyphicon'></span>加入購物車
					</a>
				</p>
			</div>
		</div>
	</section>
</body>
</html>
