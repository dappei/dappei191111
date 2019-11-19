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
<style>
*{font-family: 微軟正黑體}
</style>
</head>
<body>
	
	<jsp:include page="/WEB-INF/views/header.jsp" />	
	<br><br><br>
<<<<<<< HEAD
<div class="form-inline my-2 my-lg-0 "><a class="btn btn-secondary my-2 my-sm-0" href="storesMaintain">前往後台</a>&nbsp;&nbsp;
	<a class="btn btn-secondary my-2 my-sm-0" href="storesAdd">新增產品</a></div><br>
=======
	<div class="form-inline my-2 my-lg-0 ">
	<a class="btn btn-secondary my-2 my-sm-0" href="maintain">前往後台</a>&nbsp;&nbsp;
	<a class="btn btn-secondary my-2 my-sm-0" href="add">新增產品</a>&nbsp;&nbsp;
	<a class="btn btn-secondary my-2 my-sm-0" href="cartlist">購物清單</a>
	</div><br>

>>>>>>> branch '191115' of https://github.com/dappei/dappei191111.git
	<div class="container">
	  <div class="row">
		<c:forEach var='product' items='${products}'>
		 <div class="col-md-4">
	      <div class="card mb-4 shadow-sm">
	       <img class="bd-placeholder-img card-img-top" width='100%' height='225' 
	         src="<c:url value='/getProductPicture/${product.productId}'/>"/>	           
	            <div class="card-body">
	              <p><b style='font-size: 16px;'>${product.productname}</b></p>
	                  <a href="<spring:url value='/product?id=${product.productId}'/>" class="btn btn-primary float-right">詳細資料</a>	              
	          	</div>
	      </div>
	     </div>
	    </c:forEach>
	  </div><!-- 產品結束 -->

       	
   </div>
   
   <jsp:include page="/WEB-INF/views/footer.jsp" />
</body>
</html>
