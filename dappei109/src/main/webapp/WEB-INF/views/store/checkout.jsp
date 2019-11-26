<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

<style>
body {
    background: grey;
    margin-top: 120px;
    margin-bottom: 120px;
}
</style>
<jsp:useBean id="today" class="java.util.Date" scope="session" />
<title>確認訂購</title>
</head>
<body>
<jsp:include page="/WEB-INF/views/header2.jsp" />
<br><br><br><br><br><br>
<!------ Include the above in your HEAD tag ---------->

<div class="container">
    <div class="row">
        <div class="col-12">
            <div class="card">
                <div class="card-body p-0">
                <form:form method='POST' modelAttribute="ProductOrderBean">
                    <div class="row p-5">
                        <div class="col-md-6">
                            <img src="https://i.imgur.com/RqjHn00.png" width="100">
                        </div>
						
                        <div class="col-md-6 text-right">
                            <p class="font-weight-bold mb-1">會員ID: ${currentUser.memberId}
                            	<form:hidden path="memberId" value="${currentUser.memberId }" />
                            </p>
                            <p class="text-muted">訂單日期：<fmt:formatDate value="${today}" pattern="yyyy-MM-dd" /></p>
                        </div>
                    </div>
<h3 style="color:red; text-align: center;">僅提供現場付現</h3>
                    <div class="row pb-5 p-5">
                        <div class="col-md-8">
                            <p class="font-weight-bold mb-4">客戶詳細資料</p>
                            <p class="mb-1">客戶姓名：<form:input path="name" type='text' value="${currentUser.username}" /></p>
                            <p class="mb-1">連絡電話：<form:input path="phone" type='text' value="${currentUser.phone}"/></p>
                            <p class="mb-1">收貨地址：<form:input path="shippingAddress" size="60" type='text' value="${currentUser.location}" /></p>
                        </div>
                    </div>

                    <div class="row p-5">
                        <div class="col-md-12">
                            <table class="table">
                                <thead>
                                    <tr>
                                        <th class="border-0 text-uppercase small font-weight-bold">商品名稱</th>
                                        <th class="border-0 text-uppercase small font-weight-bold">顏色</th>
                                        <th class="border-0 text-uppercase small font-weight-bold">尺寸</th>
                                        <th class="border-0 text-uppercase small font-weight-bold">單價</th>
                                        <th class="border-0 text-uppercase small font-weight-bold">折扣</th>
                                        <th class="border-0 text-uppercase small font-weight-bold">數量</th>
                                        <th class="border-0 text-uppercase small font-weight-bold">折後小計</th>
                                    </tr>
                                </thead>
                                <tbody>
                                <c:forEach var="anEntry" items="${ShoppingCart.content}" >
                                    <tr>
                                        <td>${anEntry.value.productname}</td>
                                        <td>${anEntry.value.color}</td>
                                        <td>${anEntry.value.size}</td>
                                        <td>${anEntry.value.price}</td>
                                        <td>${anEntry.value.discount}</td>
                                        <td>${anEntry.value.qty}</td>
                                        <td><fmt:formatNumber  value="${anEntry.value.price * anEntry.value.qty * anEntry.value.discount}" pattern="#,###" />元</td>
                                    </tr>
                                </c:forEach>
                                </tbody>
                            </table>
                        </div>
                    </div>

                    <div class="d-flex flex-row-reverse bg-dark text-white p-4">

                        <div class="py-3 px-5 text-right">
                            <div class="mb-2">合計金額</div>
                            <div class="h2 font-weight-light">$<fmt:formatNumber value="${ShoppingCart.subtotal}" pattern="#,###,###" />元</div>
                        </div>
                    </div>
                    <form:hidden path="totalAmount" value="${ShoppingCart.subtotal}" />
					<form:hidden path="cancelTag" value="1" />
                    <a type="button" class="btn btn-secondary btn-lg btn-block" href="canselorder">取消購買</a>
					<input type="submit" class="btn btn-primary btn-lg btn-block" value="確認購買" />
                    </form:form>
                </div>
            </div>
        </div>
    </div>
    
    <div class="text-light mt-5 mb-5 text-center small">by : <a class="text-light" target="_blank" href="http://totoprayogo.com">totoprayogo.com</a></div>

</div>

</body>
</html>