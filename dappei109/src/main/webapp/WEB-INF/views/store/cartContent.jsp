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

</head>
<body>			
            <h2>購物清單</h2>
            <table border="1" >
			<tr><th>商品名稱<th>顏色<th>尺寸<th>單價<th>數量<th>小計
			<c:forEach var="anEntry" items="${ShoppingCart.content}" >
				<tr>
				<td>${anEntry.value.productname}
				<td>${anEntry.value.color}
				<td>${anEntry.value.size}
				<td>${anEntry.value.price}
				<td>${anEntry.value.qty}
				<td><fmt:formatNumber  value="${anEntry.value.price * anEntry.value.qty}" pattern="#,###" />元
				</tr>
			</c:forEach>
				<tr>
				<TD colspan='5' align='right'>合計金額：</TD>
          		<TD align='right'><fmt:formatNumber value="${ShoppingCart.subtotal}" pattern="#,###,###" />元</TD>
          		</tr>
			</table><br>
			<div class="form-inline my-2 my-lg-0 ">
				<a class="btn btn-secondary my-2 my-sm-0" href="storeEmpty">清空</a>&nbsp;&nbsp;
				<a class="btn btn-secondary my-2 my-sm-0" href="storeCheck">結帳</a>
			</div>		
		<br><!-- 活動資料結束 -->
            

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