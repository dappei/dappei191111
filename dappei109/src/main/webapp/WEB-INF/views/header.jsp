<%@ page language="java" contentType="text/html; charset=UTF-8" 	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!-- Bootstrap core CSS -->
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css">
<link href="http://maxcdn.bootstrapcdn.com/font-awesome/4.1.0/css/font-awesome.min.css" rel="stylesheet">
<style>

.text-header {
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


/* Credit to bootsnipp.com for the css for the color graph */
.colorgraph {
  height: 5px;
  border-top: 0;
  background: #c4e17f;
  border-radius: 5px;
  background-image: -webkit-linear-gradient(left, #c4e17f, #c4e17f 12.5%, #f7fdca 12.5%, #f7fdca 25%, #fecf71 25%, #fecf71 37.5%, #f0776c 37.5%, #f0776c 50%, #db9dbe 50%, #db9dbe 62.5%, #c49cde 62.5%, #c49cde 75%, #669ae1 75%, #669ae1 87.5%, #62c2e4 87.5%, #62c2e4);
  background-image: -moz-linear-gradient(left, #c4e17f, #c4e17f 12.5%, #f7fdca 12.5%, #f7fdca 25%, #fecf71 25%, #fecf71 37.5%, #f0776c 37.5%, #f0776c 50%, #db9dbe 50%, #db9dbe 62.5%, #c49cde 62.5%, #c49cde 75%, #669ae1 75%, #669ae1 87.5%, #62c2e4 87.5%, #62c2e4);
  background-image: -o-linear-gradient(left, #c4e17f, #c4e17f 12.5%, #f7fdca 12.5%, #f7fdca 25%, #fecf71 25%, #fecf71 37.5%, #f0776c 37.5%, #f0776c 50%, #db9dbe 50%, #db9dbe 62.5%, #c49cde 62.5%, #c49cde 75%, #669ae1 75%, #669ae1 87.5%, #62c2e4 87.5%, #62c2e4);
  background-image: linear-gradient(to right, #c4e17f, #c4e17f 12.5%, #f7fdca 12.5%, #f7fdca 25%, #fecf71 25%, #fecf71 37.5%, #f0776c 37.5%, #f0776c 50%, #db9dbe 50%, #db9dbe 62.5%, #c49cde 62.5%, #c49cde 75%, #669ae1 75%, #669ae1 87.5%, #62c2e4 87.5%, #62c2e4);
}
</style>


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
			<c:if
				test="${currentUser.memberId == 1046 || currentUser.memberId == 1061}">
				<li class="nav-item"><a class="nav-link"
					href="${pageContext.request.contextPath}/back-end">後台</a></li>
			</c:if>
		</ul>
		<ul class="navbar-nav ">
		  <li>
	        <a class="nav-link" href="storeCartlist"><i class="fa fa-shopping-bag"><span class="badge badge-success">${ShoppingCart.itemNumber}</span></i></a>
	      </li>
	    </ul>
		<form class="form-inline mt-2 mt-md-0">
			<c:if test="${!empty currentUser}">
				<a class="aa-cart-link mr-2" href="personalPg"> <img width='60'
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

