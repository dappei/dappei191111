<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
</style>
 
	<nav class="navbar navbar-expand-lg navbar-dark fixed-top bg-dark">
	    <img src="https://img.icons8.com/flat_round/64/000000/t-shirt.png" width="40" height="40">&nbsp &nbsp
		<a class="navbar-brand" href="index">Dappei</a>
		<button class="navbar-toggler" type="button" data-toggle="collapse"
			data-target="#navbarCollapse" aria-controls="navbarCollapse"
			aria-expanded="false" aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>
		<div class="collapse navbar-collapse" id="navbarCollapse">
			<ul class="navbar-nav mr-auto">
				<li class="nav-item active"><a class="nav-link" href="#">穿搭
				</a></li>
				<li class="nav-item"><a class="nav-link" href="events">活動</a></li>
				<li class="nav-item"><a class="nav-link" href="blog">部落格</a></li>
				<li class="nav-item"><a class="nav-link" href="products">購物</a></li>
				<li class="nav-item"><a class="nav-link" href="#">Q&A</a></li>
				<li class="nav-item"><a class="nav-link" href="ant">後台</a></li>
		
			</ul>
			<form class="form-inline mt-2 mt-md-0" >
				<c:if test="${!empty currentUser}">
					<input type="button" class="btn btn-outline-success my-2 my-sm-1 "
						onclick="javascript:location.href='logout'" value="Logout">
				</c:if>
				<c:if test="${empty currentUser}">
					<input type="button" class="btn btn-outline-success  my-2 my-sm-1 mr-2"
						onclick="javascript:location.href='login'" value="Login">
				</c:if>
				<input type="button" class="btn btn-outline-success my-2 my-sm-1 "
					onclick="javascript:location.href='members/add'" value="Register">
			</form>
		</div>
	</nav>

