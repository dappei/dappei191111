<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"  %>
<!DOCTYPE html>
<html lang="TW">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>${currentUser.username}</title>
<style>
.main-banner {
	margin-bottom: 20px;
	align:center;
}

</style>

</head>
<body>
	<jsp:include page="/WEB-INF/views/header.jsp" />
	<br>
	<br>
	<div class="container">
		<div class="fb-profile">
			<img width='850' height='350' align="left" class="fb-image-lg"
				src="https://im.marieclaire.com.tw/s1920c1080h100b0/assets/mc/201908/5D47C4A74E57F1564984487.jpeg"
				alt="Profile image example" /> 
			<img width='100' height='220'
				align="left" class="fb-image-profile thumbnail"
				src="<c:url value='memberPhoto/${currentUser.memberId}'/>"
				alt="Profile image example" />
				
			<div class="fb-profile-text">
				<tr>
					<td>${currentUser.username}</td>
					<td><a href="personalPg">個人資料</a></td>
					<td><a href="blogOderedRec">我的穿搭</a></td>
					<td><a href="eventOderedRec">我的活動</a></td>
					<td><a href="productOderedRec">我的訂單</a></td>
					<td><a href="">問題回報</a></td>
				</tr>
			</div>
		</div>
	</div>	
	<br><br><br><br>
	<div>
		已訂購產品訂單
		<c:forEach var='oproduct' items='${orderProducts}'>
		  <div>
			<p>訂購時間:${fn:substring(oproduct.orderDate,0,16)}</p>
			<p>訂單編號:${oproduct.orderNo}</p>
			<p>金額:NT$ ${oproduct.totalAmount}</p>					 
		  </div><br>
		  	<table class="table table-bordered">
                    <thead>
                        <tr><th>產品</th><th>數量</th><th>金額</th></tr>
                    </thead>
                    <tbody>
                    	<c:forEach var='product' items='${oproduct.items}'>
                        <tr>
                        <td class="col-md-9">${product.description}</td>
                        <td class="col-md-2">${product.quantity}</td>
                        <td class="col-md-3"><i class="fa fa-inr"></i> ${product.unitPrice*product.discount*product.quantity}</td>
                        </tr>
                        </c:forEach>
                    </tbody>
                </table>
		</c:forEach>
	</div>
	<div>
		已取消產品訂單
		<c:forEach var='coproduct' items='${cOrderProducts}'>
		  <div>
			<p>訂購時間:${fn:substring(coproduct.orderDate,0,16)}</p>
			<p>訂單編號:${coproduct.orderNo}</p>
			<p>金額:NT$ ${coproduct.totalAmount}</p>					 
		  </div><br>
		  	<table class="table table-bordered">
                    <thead>
                        <tr><th>產品</th><th>數量</th><th>金額</th></tr>
                    </thead>
                    <tbody>
                    	<c:forEach var='cproduct' items='${coproduct.items}'>
                        <tr>
                        <td class="col-md-9">${cproduct.description}</td>
                        <td class="col-md-2">${cproduct.quantity}</td>
                        <td class="col-md-3"><i class="fa fa-inr"></i> ${cproduct.unitPrice*cproduct.discount*cproduct.quantity}</td>
                        </tr>
                        </c:forEach>
                    </tbody>
                </table>
		</c:forEach>
	</div>



	<jsp:include page="/WEB-INF/views/footer.jsp" />
</body>
</html>