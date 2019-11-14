<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet"
    href="//netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.min.css">
<title>Products</title>
</head>
<body>
    <section>
        <div>
            <div class="container" style="text-align: center" >
                <h1>產品清單</h1> <a href='productbackend'>產品管理</a>
            </div>
        </div>
    </section>
    <hr style="height:1px;border:none;color:#333;background-color:#333;">
    <section class="container">
        <div class="row">
        <c:forEach var='product' items='${products}'>
            <div class="col-sm-6 col-md-3" style="width: 360px; height: 360px">
                <div class="thumbnail" style="width: 320px; height: 340px">
                	<img width='100' height='200' alt="未找到圖片" src="<c:url value='/getProductPicture/${product.productId}' /> "/>
                    <div class="caption">
                        <p>
                            <b style='font-size: 16px;'>${product.productname}</b>
                        </p>
                        <p>${product.color}</p>
                        <p>${product.size}</p>
                        <p>${product.companyBean.categoryname}</p>
                        <p>目前在庫數量: ${product.stock}件</p>
                        <a href="<spring:url value='product?id=${product.productId}' />"
                        	class="btn btn-primary">
                        	<span class="glyphicon-info-sigh glyphicon"></span>詳細資料
                        </a>
                        <a href="<spring:url value='updateProduct?id=${product.productId}' />"
                        	class="btn btn-primary">
                        	<span class="glyphicon-info-sigh glyphicon"></span>修改資料
                        </a>
                        <p></p>
                    </div>
                </div>
            </div>
            </c:forEach>
        </div>
    </section>
    <a href="<spring:url value='/' />" class="btn btn-default">
		<span class="glyphicon-hand-left glyphicon"></span>返回首頁
	</a> 
</body>
</html>
    