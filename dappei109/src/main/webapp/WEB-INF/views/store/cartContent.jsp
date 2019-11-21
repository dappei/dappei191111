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
<title>購物清單</title>
    <!-- Bootstrap CSS CDN -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.0/css/bootstrap.min.css" >
    <!-- Our Custom CSS -->
    <link rel="stylesheet" href="https://bootstrapious.com/tutorial/sidebar/style.css">
    <!-- Font Awesome JS -->
    <script defer src="https://use.fontawesome.com/releases/v5.0.13/js/solid.js" ></script>
    <script defer src="https://use.fontawesome.com/releases/v5.0.13/js/fontawesome.js" ></script>
<link href="//netdna.bootstrapcdn.com/bootstrap/3.0.3/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//netdna.bootstrapcdn.com/bootstrap/3.0.3/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
<style>
body {
	margin-top: 20px;
}
</style>

</head>
<body>	
<!------ Include the above in your HEAD tag ---------->
<br><br><br><br><br><br>
<div class="container">
	<div class="row">
		<div class="col-xs-8">
			<div class="panel panel-info">
				<div class="panel-heading">
					<div class="panel-title">
						<div class="row">
							<div class="col-xs-6">
								<h5><span class="glyphicon glyphicon-shopping-cart"></span> Shopping Cart</h5>
							</div>
							<div class="col-xs-6">
								<a href="products"><button type="button" class="btn btn-primary btn-sm btn-block">
									<span class="glyphicon glyphicon-share-alt"></span> 繼續購物
								</button></a>
							</div>
						</div>
					</div>
				</div>
				<div class="panel-body">
					<div class="row">
					<c:forEach var="anEntry" items='${ShoppingCart.content}' >
						<div class="col-xs-2"><img src="http://placehold.it/100x70" class="img-responsive" alt="未找到圖片" />
						</div>
						<div class="col-xs-4">
							<h4 class="product-name"><strong>${anEntry.value.productname}</strong></h4><h4><small>顏色:${anEntry.value.color}&nbsp;&nbsp;尺寸:${anEntry.value.size}&nbsp;&nbsp;折扣:${anEntry.value.discount}</small></h4>
						</div>
						<div class="col-xs-6">
							<div class="col-xs-6 text-right">
								<h6><strong>單價: ${anEntry.value.price}<span class="text-muted">x</span>&nbsp;數量:${anEntry.value.qty}</strong></h6>
							</div>
							<div class="col-xs-4">
							小計:<fmt:formatNumber  value="${anEntry.value.price * anEntry.value.qty}" pattern="#,###" />
							</div>
							<div class="col-xs-2">
								<button type="button" class="btn btn-link btn-xs">
									<a href="condirmDelete${anEntry.value.productID}"><span class="glyphicon glyphicon-trash"></span></a>
								</button>
							</div>
						</div>
						</c:forEach>
					</div>
					<hr>
					<div class="row">
						<div class="text-center">
							<div class="col-xs-9">
								<a class="btn btn-secondary my-2 my-sm-0" href="storeEmpty">清空購物車</a>
							</div>
						</div>
					</div>				
				</div>
				<div class="panel-footer">
					<div class="row text-center">
						<div class="col-xs-9">
							<h4 class="text-right">Total $<strong><fmt:formatNumber value="${ShoppingCart.subtotal}" pattern="#,###,###" />元</strong></h4>
						</div>
						<div class="col-xs-3">
							<a href="storeCheck"><button type="button" class="btn btn-success btn-block">
								結帳
							</button></a>
						</div>
						<div style='text-align:center;'>
							<c:if test='${not empty OrderErrorMessage}'>
								<font color='red'>${OrderErrorMessage}</font>
								<c:remove var="OrderErrorMessage"/>	
							</c:if>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>

	<br><br>
	<!-- jQuery CDN - Slim version (=without AJAX) -->
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" ></script>
    <!-- Popper.JS -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.0/umd/popper.min.js" ></script>
    <!-- Bootstrap JS -->
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.0/js/bootstrap.min.js" ></script>

    <script type="text/javascript">
        $(document).ready(function () {
            $('#sidebarCollapse').on('click', function () {
                $('#sidebar').toggleClass('active');
            });
        });
    </script>
</body>
</html>