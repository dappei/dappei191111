<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"  %>

<!doctype html>
<html lang="UTF-8">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

<title>${event.eventName}</title>

<!-- Bootstrap core CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.4/jquery.min.js"></script>
<style>
*{font-family: 微軟正黑體}
</style>
</head>
<body>
	<jsp:include page="/WEB-INF/views/header2.jsp" />
	<br><br><br>
		
		<div class="container">
			<img src="<c:url value='/getEventPicture/${event.eventId}'/>" width=100% height=100%/>
		</div>
	
	<main id="main" class="container">

	<div class="row" style="background-color:#F0F0F0">
		<div class="col-md-8 blog-main">
			<br><br>
			<h3 class="pb-3 mb-2 font-weight-bold">${event.eventName}</h3>
			<p class="font-weight-bold" style="font-size: 20px"><img src="${pageContext.request.contextPath}/image/calendar.png" width="40" height="40">活動時間</p>
			<p>${fn:substring(event.eventStartTime,0,16)}~${fn:substring(event.eventEndTime,0,16)}
			<p class="font-weight-bold" style="font-size: 20px"><img src="${pageContext.request.contextPath}/image/place.jpg" width="40" height="40">活動地點</p>
			<p>${event.location}
		</div>
		<aside class="col-md-4">
			<br><br>	
			<div class="container m-22" style="width: 200px; height: 300px;background-color: #DDDDDD"><br>
				<p class="text-center font-weight-bold">${event.eventName}</p>
				<p class="text-center">${fn:substring(event.eventStartTime,0,16)}</p>
				<p class="text-center">NT$ ${event.price}</p>
				<p class="text-center">剩下數量:${event.maxPeople}</p>				
				<form:form method='GET' action="buy${event.eventId}">
					 	<p>購買數量:
	               <select id="amount" name='qty'>
	                    <option value="1">1</option>
	                    <option value="2">2</option>
	                    <option value="3">3</option>
	                    <option value="4">4</option>
	                    <option value="5">5</option>
	               </select><br><br>
	               <Input type='submit' class="btn btn-primary btn-block" value='報名'>      
				</form:form>
				
			</div>
			<br><br>
		</aside>
			
		<div class="col-12 blog-main">
			<h5 class="pb-3 mb-4 border-bottom">活動介紹</h5>
			<div>
				${event.aboutEvent}
				<h5 class="pb-3 border-bottom">活動地圖</h5>
				<iframe class="container" width="600" height="450" frameborder="0" style="border:0" 
				      src="https://www.google.com/maps/embed/v1/place?key=AIzaSyBTbNH68e_IKHysXjR2EkcfnAdCVjY6eKA&q=${event.location}" 
				      allowfullscreen>
				</iframe>				
			</div>
			<!-- /.blog-post -->
		</div>
		<!-- /.blog-main -->
	</div>
	<!-- /.row --> </main>
	<!-- /.container -->
	<br><br><br>
	<!-- Login Modal -->
<div class="modal fade" id="login-modal" tabindex="-1" role="dialog"
	aria-labelledby="myModalLabel" aria-hidden="true">
	<div class="modal-dialog">
		<div class="modal-content">
			<div class="modal-body">
				<button type="button" class="close" data-dismiss="modal"
					aria-hidden="true">&times;</button>

				<div class="row" style="margin: 0">
					<div
						class="col-xs-12 col-sm-8 col-md-12 col-sm-offset-2 col-md-offset-3">
						<h2>Please Sign In</h2>
						<hr class="colorgraph">
						<form:form class="aa-login-form" method="POST"
							modelAttribute="memberBean2" action="./login">
							<div class="form-group">
								<label for="Username">Email address<span>*</span></label>
								<form:input id="Username" type="text"
									placeholder="Username or email" path="email"
									class="form-control input-lg" />
							</div>
							<div class="form-group">
								<label for="">Password<span>*</span></label>
								<form:input type="password" placeholder="Password"
									path="password" class="form-control input-lg" />
							</div>

							<span class="button-checkbox">
								<button type="button" class="btn" data-color="info">Remember
									Me</button> <input type="checkbox" name="remember_me" id="remember_me"
								checked="checked" class="hidden"> <a href=""
								class="btn btn-link pull-right">Forgot Password?</a>
							</span>

							<hr class="colorgraph">

							<div class="row">
								<div class="col-xs-6 col-sm-6 col-md-6">
									<input type="submit" class="btn btn-lg btn-success btn-block"
										value="Sign In">
								</div>
								<div class="col-xs-6 col-sm-6 col-md-6">
									<a href="" class="btn btn-lg btn-primary btn-block">Register</a>
								</div>
							</div>
							<font style="color: red; font-size: 14pt">${errorMsg.loginerror}</font>
						</form:form>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
	<jsp:include page="/WEB-INF/views/footer.jsp" />
</body>
</html>