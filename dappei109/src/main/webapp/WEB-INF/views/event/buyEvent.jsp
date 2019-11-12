<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!doctype html>
<html lang="utf-8">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

<title>${eventBean.eventName}</title>

<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script>
	function cancelOrder() {
		if (confirm("確定取消此份訂單 ? ")) {
			// 接收此資料的Servlet會使用 finalDecision 參數的值
			document.forms[0].finalDecision.value = "CANCEL";
			document.forms[0].action = "<c:url value='ProcessOrder.do' />";
			document.forms[0].method = "POST";
			document.forms[0].submit();
			return;
		} else {
			return;
		}
}
</script>
<style>
*{font-family: 微軟正黑體}
</style>


</head>
<body>
	<jsp:include page="/WEB-INF/views/header.jsp" />
	<br><br><br><br>

	<div class="container login-container" style="background-color:#F0F0F0">
            <form:form method='POST' modelAttribute="orderEventBean" >
            <div class="row">
                <div class="col-md-3">
                <br><br>
                	<div>
						<img src="<c:url value='/getEventPicture/${eventBean.eventId}'/>" width=100% height=100%/>
					</div><br>
                    <h6 style="font-weight: bolder">${eventBean.eventName}</h6><br>
                    <form:hidden  path="eventid" value="${eventBean.eventId}"/>
                    <p><img src="${pageContext.request.contextPath}/image/calendar.png" width="30" height="30">${fn:substring(eventBean.eventStartTime,0,16)}~${fn:substring(eventBean.eventEndTime,0,16)}
                    <p><img src="${pageContext.request.contextPath}/image/place.jpg" width="30" height="30">${eventBean.location}
                    <p>數量:${quantity}
                    <form:hidden  path="quantity" value="${quantity}"/>
                    <p>金額:NT$${quantity}*${eventBean.price}
                    <form:hidden  path="totalprice" value="${eventBean.price}"/>

                </div>
                <div class="col-md-8">
                <br><br>
                    <h5 style="font-weight: bolder">填寫參加人資訊</h5>
                    <p style="font-size: 15px">報名資料將用於主辦單位安排活動，活動入場電子票券將寄至訂購人信箱，如需修改請至 修改個人資料
                    <hr>
                    <form>
                    	<form:input path="memberid" type='text' class='form:input-large' value="${currentUser.memberid}"/>
                        <div class="form-group">
                        	<p>姓名
                        	<form:input path="name" type='text' class='form:input-large' value="${currentUser.username}"/>
                        </div>
                        <div class="form-group">
                        	<p>電子郵件
                        	<form:input path="email" type='text' class='form:input-large' value="${currentUser.email}"/>
                        </div>
                        <div class="form-group">
                        	<p>行動電話
                        	<form:input path="phone" type='text' class='form:input-large' value="${currentUser.phone}"/>
                        </div>
                        <div class="form-group">
                        	<p>出生年月日
                        	<form:input path="birthday" type='text' class='form:input-large' value="${fn:substring(currentUser.birthday,0,10)}"/>
                        </div>
                        <div class="row">
                        	<div class="col-md-6">
	                        	<div class="form-group ">
	                            	<input type="button" class="btn btn-secondary btn-lg btn-block" value="取消購買" onclick="cancelOrder()"/>
	                        	</div>
                        	</div>
                        	<div class="col-md-6">
	                        	<div class="form-group ">
	                            	<input type="submit" class="btn btn-primary btn-lg btn-block" value="確認購買" />
	                        	</div>
                        	</div>
                        </div>

                    </form>
                </div>
            </div>
            </form:form>
        </div>
        <br><br>

	
	<jsp:include page="/WEB-INF/views/footer.jsp" />
</body>
</html>

