<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"  %>

<!doctype html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<title>Stores</title>

<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
<link href="//cdnjs.cloudflare.com/ajax/libs/semantic-ui/2.2.10/semantic.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//cdnjs.cloudflare.com/ajax/libs/semantic-ui/2.2.10/semantic.min.js"></script>
<!-- icon圖 -->
<link rel="icon" href="https://img.icons8.com/bubbles/50/000000/shopping-bag.png" type="image/ico" />
<style>
*{font-family: 微軟正黑體}

.spacer {
    height: 50px;
}

/*換頁CSS*/
.pagination>li>a { border-radius: 50% !important;margin: 0 5px;}

/*購物車*/
</style>
</head>
<body>
<jsp:include page="/WEB-INF/views/header.jsp" />

<!------ Include the above in your HEAD tag ---------->

<div class="spacer"></div>

<!-- header -->
<div class="ui container pad-top-30 pad-bottom-30">
	<div class="center aligned segment"><br>
		<div class="ui horizontal divider">My Dappei服飾購物</div>
	</div>	
</div>
	<div class="form-inline my-2 my-lg-0 ">
	<a class="btn btn-secondary my-2 my-sm-0" href="storeCartlist">購物清單</a>
	</div>

<!-- cards -->
<div class="ui container">
	<div class="ui four column grid">
		<div class="row">
		<c:forEach var='product' items='${products}'>
			<div class="column" style="padding-top: 2rem;">				
				<div class="ui card">					
					<div class="image">
						<a class="ui red right ribbon label">${product.discount} 折</a>
						<img src="<c:url value='/getProductPicture/${product.productId}'/>" />
					</div>
					<div class="content">						
						<a class="header" href="<spring:url value='/product?id=${product.productId}'/>">${product.productname}</a><br>
						<div class="extra content">
						<a class="ui teal tag label">${product.category.categoryname}</a>
						<a class="ui teal tag label">${product.color}</a>				
					</div><br>
					<p>單價: ${product.price}&nbsp;&nbsp;<font color='red'>折價後${product.price*product.discount}元</font></p>
						<hr>
						
						
						<div class="description" style="text-align: right;">
						<i class="btn-details">
                          <a href="put/${product.productId}" class="hidden-sm"><img src="https://img.icons8.com/material/24/000000/shopping-cart--v1.png"></a>
                         </i>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
							<a href="<spring:url value='/product?id=${product.productId}'/>" class="btn btn-info btn-xs" role="button">詳細資料</a>
						</div>
					</div>
				</div>
			</div>
			</c:forEach>
		</div>	
	</div>
</div><!-- 產品結束 -->

<div class="spacer"></div>

	  <div class="container">
            <ul class="pagination list-inline mx-auto justify-content-center">
                <li class="page-item"><a class="page-link" href="<spring:url value='/products?pageNo=1'/>">首頁</a></li>
                <li class="page-item"><c:if test="${pageNo > 1}"><a class="page-link" href="<spring:url value='/products?pageNo=${pageNo-1}'/>">&laquo;</a></c:if></li>
						
                <c:forEach begin="1" end="${totalPages}" varStatus="loop">
                    <c:set var="active" value="${loop.index==pageNo?'active':''}"/>
                    <li class="page-item ${active}">
                    	<a class="page-link" href="<spring:url value="/products?pageNo=${loop.index}"/>">${loop.index}</a>
                    </li>
                </c:forEach>
                <li class="page-item">
                    <c:if test="${pageNo<totalPages}"><a class="page-link" href="<spring:url value="/products?pageNo=${pageNo+1}"/>">&raquo;</a></c:if>
                </li>
                <li class="page-item"><a class="page-link" href="<spring:url value="/products?pageNo=${totalPages}"/>">末頁</a></li>
            </ul>
     	</div>
   <jsp:include page="/WEB-INF/views/footer.jsp" />
</body>
</html>
