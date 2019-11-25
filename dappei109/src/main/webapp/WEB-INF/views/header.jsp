<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!-- Bootstrap core CSS -->

<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css">

<style>
.bd-placeholder-img {
	font-size: 1.125rem;
	text-anchor: middle;
}

@media ( min-width : 768px) {
	.bd-placeholder-img-lg {
		font-size: 3.5rem;
	}
}

.text-header {
	font-size: 20px;
	font-family: 微軟正黑體;
}

@import
	url("//maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css")
	;

.navbar-icon-top .navbar-nav .nav-link>.fa {
	position: relative;
	width: 36px;
	font-size: 24px;
}

.navbar-icon-top .navbar-nav .nav-link>.fa>.badge {
	font-size: 0.75rem;
	position: absolute;
	right: 0;
	font-family: sans-serif;
}

.navbar-icon-top .navbar-nav .nav-link>.fa {
	top: 3px;
	line-height: 12px;
}

.navbar-icon-top .navbar-nav .nav-link>.fa>.badge {
	top: -10px;
}

@media ( min-width : 576px) {
	.navbar-icon-top.navbar-expand-sm .navbar-nav .nav-link {
		text-align: center;
		display: table-cell;
		height: 70px;
		vertical-align: middle;
		padding-top: 0;
		padding-bottom: 0;
	}
	.navbar-icon-top.navbar-expand-sm .navbar-nav .nav-link>.fa {
		display: block;
		width: 48px;
		margin: 2px auto 4px auto;
		top: 0;
		line-height: 24px;
	}
	.navbar-icon-top.navbar-expand-sm .navbar-nav .nav-link>.fa>.badge {
		top: -7px;
	}
}

@media ( min-width : 768px) {
	.navbar-icon-top.navbar-expand-md .navbar-nav .nav-link {
		text-align: center;
		display: table-cell;
		height: 70px;
		vertical-align: middle;
		padding-top: 0;
		padding-bottom: 0;
	}
	.navbar-icon-top.navbar-expand-md .navbar-nav .nav-link>.fa {
		display: block;
		width: 48px;
		margin: 2px auto 4px auto;
		top: 0;
		line-height: 24px;
	}
	.navbar-icon-top.navbar-expand-md .navbar-nav .nav-link>.fa>.badge {
		top: -7px;
	}
}

@media ( min-width : 992px) {
	.navbar-icon-top.navbar-expand-lg .navbar-nav .nav-link {
		text-align: center;
		display: table-cell;
		height: 70px;
		vertical-align: middle;
		padding-top: 0;
		padding-bottom: 0;
	}
	.navbar-icon-top.navbar-expand-lg .navbar-nav .nav-link>.fa {
		display: block;
		width: 48px;
		margin: 2px auto 4px auto;
		top: 0;
		line-height: 24px;
	}
	.navbar-icon-top.navbar-expand-lg .navbar-nav .nav-link>.fa>.badge {
		top: -7px;
	}
}

@media ( min-width : 1200px) {
	.navbar-icon-top.navbar-expand-xl .navbar-nav .nav-link {
		text-align: center;
		display: table-cell;
		height: 70px;
		vertical-align: middle;
		padding-top: 0;
		padding-bottom: 0;
	}
	.navbar-icon-top.navbar-expand-xl .navbar-nav .nav-link>.fa {
		display: block;
		width: 48px;
		margin: 2px auto 4px auto;
		top: 0;
		line-height: 24px;
	}
	.navbar-icon-top.navbar-expand-xl .navbar-nav .nav-link>.fa>.badge {
		top: -7px;
	}
}
</style>

<script>
	function doPost() {

	}

	var xhttp = new XMLHttpRequest();
	xhttp.onreadystatechange = function() {
		if (xhttp.readyState == 4 && xhttp.status == 200) {

		}
	}
	
	
</script>

<nav class="navbar navbar-expand-lg navbar-dark fixed-top bg-dark">
	<img src="https://img.icons8.com/flat_round/64/000000/t-shirt.png"
		width="40" height="40">&nbsp &nbsp <a class="navbar-brand"
		href="${pageContext.request.contextPath}/">Dappei</a>
	<button class="navbar-toggler" type="button" data-toggle="collapse"
		data-target="#navbarCollapse" aria-controls="navbarCollapse"
		aria-expanded="false" aria-label="Toggle navigation">
		<span class="navbar-toggler-icon"></span>
	</button>
	<div class="collapse navbar-collapse" id="navbarCollapse">
		<ul class="navbar-nav mr-auto">
			<li class="nav-item active"><a class="nav-link"
				href="dappeiwall">穿搭 </a></li>
			<li class="nav-item"><a class="nav-link"
				href="${pageContext.request.contextPath}/events">活動</a></li>
			<li class="nav-item"><a class="nav-link"
				href="${pageContext.request.contextPath}/blog">部落格</a></li>
			<li class="nav-item"><a class="nav-link"
				href="${pageContext.request.contextPath}/products">購物</a></li>
			<li class="nav-item"><a class="nav-link"
				href="${pageContext.request.contextPath}/antfont">消息</a></li>
			<c:if test="${currentUser.memberId == 1046}">
				<li class="nav-item"><a class="nav-link"
					href="${pageContext.request.contextPath}/back-end">後台</a></li>
			</c:if>
		</ul>
		<form class="form-inline mt-2 mt-md-0">
			<c:if test="${!empty currentUser}">
				<a class="aa-cart-link mr-2" href="personalPg"> <img id="test" width='60'
					height='50'
					src="${pageContext.request.contextPath}/memberPhoto/${currentUser.memberId}" />
				</a>
			</c:if>
			<c:if test="${!empty currentUser}">
				<input type="button"
					class="btn btn-outline-success my-2 my-sm-1 mr-2 "
					onclick="javascript:location.href='logout'" value="Logout">
			</c:if>
							<c:if test="${empty currentUser}">
								<input type="button" class="btn btn-outline-success  my-2 my-sm-1 mr-2"
									onclick="javascript:location.href='login'" value="Login">
							</c:if>
<%-- 			<c:if test="${empty currentUser}"> --%>
<!-- 				<input type="button" -->
<!-- 					class="btn btn-outline-success  my-2 my-sm-1 mr-2" -->
<!-- 					data-toggle="modal" data-target="#login-modal" value="Login"> -->
<%-- 			</c:if> --%>
			<c:if test="${empty currentUser}">
				<input type="button"
					class="btn btn-outline-success my-2 my-sm-1 mr-2"
					onclick="javascript:location.href='members/add'" value="Register">
			</c:if>
		</form>
	</div>
</nav>

<!-- Login Modal -->
<!-- <div class="modal fade" id="login-modal" tabindex="-1" role="dialog" -->
<!-- 	aria-labelledby="myModalLabel" aria-hidden="true"> -->
<!-- 	<div class="modal-dialog"> -->
<!-- 		<div class="modal-content"> -->
<!-- 			<div class="modal-body"> -->
<!-- 				<button type="button" class="close" data-dismiss="modal" -->
<!-- 					aria-hidden="true">&times;</button> -->
					
<!-- 				<h4>Login</h4> -->
<%-- 					<form:form class="aa-login-form" method="POST" modelAttribute="memberBean2"> --%>
<!-- 					<label for="Username">Email address<span>*</span></label> -->
<%-- 					<form:input id="Username" type="text" placeholder="Username or email" path="email" /> --%>
					
<!-- 					<label for="">Password<span>*</span></label> -->
<%-- 					<form:input type="password" placeholder="Password" path="password" /> --%>
					
<!-- 					<button class="aa-browse-btn" type="submit">Login</button> -->
<!-- 					<label for="rememberme" class="rememberme"> -->
<!-- 					<input type="checkbox" id="rememberme"> Remember me </label> -->
					
<!-- 					<p class="aa-lost-password"> -->
<!-- 						<a href="#">Lost your password?</a> -->
<!-- 					</p> -->
					
<!-- 					<div class="aa-register-now"> -->
<!-- 						Don't have an account?<a href="account.html">Register now!</a> -->
<!-- 					</div> -->
					
<%-- 				</form:form> --%>
<!-- 			</div> -->
<!-- 		</div> -->
<!-- 	</div> -->
<!-- </div> -->
