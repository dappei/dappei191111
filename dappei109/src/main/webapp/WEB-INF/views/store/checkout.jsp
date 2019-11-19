<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<jsp:useBean id="today" class="java.util.Date" scope="session" />
<title>訂購確認頁面</title>
</head>
<body>
	確認以下資料
	<form:form method='POST' modelAttribute="productOrderBean">
	<p>MemberID:<form:input path="memberId" value="${currentUser.memberId }" />
	<p>訂單日期:<fmt:formatDate value="${today}" pattern="yyyy-MM-dd" />
	<p>客戶姓名:
	<form:input path="name" type='text' value="${currentUser.username }" />
	<p>連絡電話:
	<form:input path="phone" type='text' value="${currentUser.phone}" />
	<p>出貨地址:
	<form:input path="shippingAddress" type='text' value="${currentUser.location}" />
	
	<table border="1" >
			<tr><th>商品名稱<th>顏色<th>尺寸<th>單價<th>數量<th>小計
			<c:forEach var="anEntry" items="${ShoppingCart.content}" >
				<tr><td>${anEntry.value.productname}
				<td>${anEntry.value.color}
				<td>${anEntry.value.size}
				<td>${anEntry.value.price}
				<td>${anEntry.value.qty}
				<td><fmt:formatNumber  value="${anEntry.value.price * anEntry.value.qty}" pattern="#,###" />元</tr>				
			</c:forEach>
				<tr><TD colspan='5' align='right'>合計金額：</TD>
          		<TD align='right'><fmt:formatNumber value="${ShoppingCart.subtotal}" pattern="#,###,###" />元</TD></tr>
			</table><br>
		<form:input path="totalAmount" value="${ShoppingCart.subtotal}" />
	        <a type="button" class="btn btn-secondary btn-lg btn-block" href="canselorder">取消購買</a>
			<input type="submit" class="btn btn-primary btn-lg btn-block" value="確認購買" />
	</form:form>

</body>
</html>