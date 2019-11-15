<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet"
	href="//netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.min.css">
<title>單筆詳細資料</title>
<link rel='stylesheet' href='${pageContext.request.contextPath}/css/styles.css'  type="text/css" />

<style >
@import "https://use.fontawesome.com/releases/v5.5.0/css/all.css";
html,body{
background-image: url('http://getwallpapers.com/wallpaper/full/2/1/4/1519214-orange-geometric-wallpaper-2560x1600-for-mobile.jpg');
background-size: cover;
background-repeat: no-repeat;
height: 100%;
font-family: 'Numans', sans-serif;
}
</style>

</head>
<body>


    <jsp:include page="/WEB-INF/views/header.jsp" />


<br><br><br><br><br>
	<section>
		<div>
			<div class="container" style="text-align: center">
				<h2>公告資料</h2>
			</div>
		</div>
	</section>
	<section class="container">
	
		<div class="row">
			<img width='100' height='150'
			    src="getPicture/<c:out value='${ant.antid}' />" />
			<div class="col-md-5">
				<h3>${ant.anttitle}</h3>
				<p>時間: ${ant.anttime}</p>
				<p>內容: ${ant.antcontent}</p>
			<!--  	<c:choose>
					<c:when test='${product.discount != 1.0 }'>
						<p>
							折扣: ${product.discountStr} &nbsp;&nbsp; 
							實售: <font color='red'>${product.price*product.discount}元</font>
						</p>
					</c:when>
					<c:otherwise>
						<p>&nbsp;</p>
					</c:otherwise>
				</c:choose>
				<p>書商: ${product.companyBean.name}</p>
				<p>書籍分類: ${product.category}</p>
				<p>
					<strong>商品編號: </strong> <span class='label label-warning'>
						${product.bookId} </span>
				</p>   -->
				<p>
					<a href="<spring:url value='antfont' />" class="btn btn-default">
						<span class="glyphicon-hand-left glyphicon"></span>返回
					</a> 
				<!--  	<a href='#' class='btn btn-warning btn-large'> 
					    <span class='glyphicon-shopping-cart glyphicon'></span>加入購物車
					</a> -->
				</p>
			</div>
		</div>
	</section>
	
	
		<jsp:include page="/WEB-INF/views/footer.jsp" />
	
	
</body>
</html>
