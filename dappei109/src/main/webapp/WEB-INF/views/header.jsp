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
@import url("//maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css");

.navbar-icon-top .navbar-nav .nav-link > .fa {
  position: relative;
  width: 36px;
  font-size: 24px;
}

.navbar-icon-top .navbar-nav .nav-link > .fa > .badge {
  font-size: 0.75rem;
  position: absolute;
  right: 0;
  font-family: sans-serif;
}

.navbar-icon-top .navbar-nav .nav-link > .fa {
  top: 3px;
  line-height: 12px;
}

.navbar-icon-top .navbar-nav .nav-link > .fa > .badge {
  top: -10px;
}

@media (min-width: 576px) {
  .navbar-icon-top.navbar-expand-sm .navbar-nav .nav-link {
    text-align: center;
    display: table-cell;
    height: 70px;
    vertical-align: middle;
    padding-top: 0;
    padding-bottom: 0;
  }

  .navbar-icon-top.navbar-expand-sm .navbar-nav .nav-link > .fa {
    display: block;
    width: 48px;
    margin: 2px auto 4px auto;
    top: 0;
    line-height: 24px;
  }

  .navbar-icon-top.navbar-expand-sm .navbar-nav .nav-link > .fa > .badge {
    top: -7px;
  }
}

@media (min-width: 768px) {
  .navbar-icon-top.navbar-expand-md .navbar-nav .nav-link {
    text-align: center;
    display: table-cell;
    height: 70px;
    vertical-align: middle;
    padding-top: 0;
    padding-bottom: 0;
  }

  .navbar-icon-top.navbar-expand-md .navbar-nav .nav-link > .fa {
    display: block;
    width: 48px;
    margin: 2px auto 4px auto;
    top: 0;
    line-height: 24px;
  }

  .navbar-icon-top.navbar-expand-md .navbar-nav .nav-link > .fa > .badge {
    top: -7px;
  }
}

@media (min-width: 992px) {
  .navbar-icon-top.navbar-expand-lg .navbar-nav .nav-link {
    text-align: center;
    display: table-cell;
    height: 70px;
    vertical-align: middle;
    padding-top: 0;
    padding-bottom: 0;
  }

  .navbar-icon-top.navbar-expand-lg .navbar-nav .nav-link > .fa {
    display: block;
    width: 48px;
    margin: 2px auto 4px auto;
    top: 0;
    line-height: 24px;
  }

  .navbar-icon-top.navbar-expand-lg .navbar-nav .nav-link > .fa > .badge {
    top: -7px;
  }
}

@media (min-width: 1200px) {
  .navbar-icon-top.navbar-expand-xl .navbar-nav .nav-link {
    text-align: center;
    display: table-cell;
    height: 70px;
    vertical-align: middle;
    padding-top: 0;
    padding-bottom: 0;
  }

  .navbar-icon-top.navbar-expand-xl .navbar-nav .nav-link > .fa {
    display: block;
    width: 48px;
    margin: 2px auto 4px auto;
    top: 0;
    line-height: 24px;
  }

  .navbar-icon-top.navbar-expand-xl .navbar-nav .nav-link > .fa > .badge {
    top: -7px;
  }
}
</style>
 
	<nav class="navbar navbar-expand-lg navbar-dark fixed-top bg-dark">
	    <img src="https://img.icons8.com/flat_round/64/000000/t-shirt.png" width="40" height="40">&nbsp &nbsp
		<a class="navbar-brand" href="${pageContext.request.contextPath}/">Dappei</a>
		<button class="navbar-toggler" type="button" data-toggle="collapse"
			data-target="#navbarCollapse" aria-controls="navbarCollapse"
			aria-expanded="false" aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>
		<div class="collapse navbar-collapse" id="navbarCollapse">
			<ul class="navbar-nav mr-auto">
				<li class="nav-item active"><a class="nav-link" href="deppeiwall">穿搭
				</a></li>
				<li class="nav-item"><a class="nav-link" href="${pageContext.request.contextPath}/events">活動</a></li>
				<li class="nav-item"><a class="nav-link" href="${pageContext.request.contextPath}/blog">部落格</a></li>
				<li class="nav-item"><a class="nav-link" href="${pageContext.request.contextPath}/products">購物</a></li>
				<li class="nav-item"><a class="nav-link" href="${pageContext.request.contextPath}/antfont">公告</a></li>
<%-- 				<c:if test="${currentUser.memberId == 1046}"> --%>
				<li class="nav-item"><a class="nav-link" href="${pageContext.request.contextPath}/back-end">後台</a></li>	
<%-- 				</c:if> --%>
			</ul>
			<form class="form-inline mt-2 mt-md-0" >
			<c:if test="${!empty currentUser}">
				<a class="aa-cart-link mr-2"  href="personalPg">
           		<img width='60' height='50'src="<c:url value='memberPhoto/${currentUser.memberId}'/>" />
                </a>
				</c:if>
				<c:if test="${!empty currentUser}">
					<input type="button" class="btn btn-outline-success my-2 my-sm-1 mr-2 "
						onclick="javascript:location.href='logout'" value="Logout">
				</c:if>
				<c:if test="${empty currentUser}">
					<input type="button" class="btn btn-outline-success  my-2 my-sm-1 mr-2"
						onclick="javascript:location.href='login'" value="Login">
				</c:if>
				<input type="button" class="btn btn-outline-success my-2 my-sm-1 mr-2"
					onclick="javascript:location.href='members/add'" value="Register">
			</form>
		</div>
	</nav>

