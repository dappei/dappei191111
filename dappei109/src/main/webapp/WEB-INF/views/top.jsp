<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!-- Bootstrap core CSS -->
<link
	href='${pageContext.request.contextPath}/css/bootstrap/css/bootstrap.css'
	rel="stylesheet" type='text/css'>
<style>
/* login的樣式 */
	#login-nav input { margin-bottom: 15px; }
</style>
<script>
	$(document).ready(function(){
    //導覽列login的drop down
   	 $('.dropdown-menu').find('form').click(function (e) {
       	 e.stopPropagation();
    	});
	});
</script>
<nav class="navbar navbar-expand-md navbar-dark bg-dark fixed-top">
	<a class="navbar-brand" href=" ">Dappei</a>
	<button class="navbar-toggler" type="button" data-toggle="collapse"
		data-target="#navbarsExampleDefault"
		aria-controls="navbarsExampleDefault" aria-expanded="false"
		aria-label="Toggle navigation">
		<span class="navbar-toggler-icon"></span>
	</button>
	<div class="collapse navbar-collapse" id="navbarsExampleDefault">
		<ul class="navbar-nav mr-auto">
			<li class="nav-item active"><a class="nav-link" href="index">Home<span
					class="sr-only">(current)</span></a></li>
			<li class="nav-item"><a class="nav-link" href="#">購物</a></li>
			<li class="nav-item"><c:if test="${ funcName != 'SHO' }">
					<a class="nav-link" href="events">活動</a>
				</c:if> <c:if test="${ funcName == 'SHO' }">
					<a class="nav-link">活動</a>
				</c:if></li>
			<li class="nav-item"><a class="nav-link" href="#">部落格</a></li>
			<li class="nav-item dropdown"><a
				class="nav-link dropdown-toggle" href="#" id="dropdown01"
				data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">後台</a>
				<div class="dropdown-menu" aria-labelledby="dropdown01">
					<a class="dropdown-item" href="events/add">新增活動</a> <a
						class="dropdown-item" href="events/maintain">活動管理</a>
				</div></li>

		</ul>
		
		<div class="form-inline my-2 my-lg-0">
			 <ul class="nav navbar-nav navbar-right">
                  <li><a href="http://www.jquery2dotnet.com">Sign Up</a></li>
                  <li class="dropdown">
                     <a href="http://www.jquery2dotnet.com" class="dropdown-toggle" data-toggle="dropdown">Sign in <b class="caret"></b></a>
                     <ul class="dropdown-menu" style="padding: 15px;min-width: 250px;">
                        <li>
                           <div class="row">
                              <div class="col-md-12">
                                 <form class="form" role="form" method="post" action="login" accept-charset="UTF-8" id="login-nav">
                                    <div class="form-group">
                                       <label class="sr-only" for="exampleInputEmail2">Email address</label>
                                       <input type="email" class="form-control" id="exampleInputEmail2" placeholder="Email address" required>
                                    </div>
                                    <div class="form-group">
                                       <label class="sr-only" for="exampleInputPassword2">Password</label>
                                       <input type="password" class="form-control" id="exampleInputPassword2" placeholder="Password" required>
                                    </div>
                                    <div class="checkbox">
                                       <label>
                                       <input type="checkbox"> Remember me
                                       </label>
                                    </div>
                                    <div class="form-group">
                                       <button type="submit" class="btn btn-success btn-block">Sign in</button>
                                    </div>
                                 </form>
                              </div>
                           </div>
                        </li>
                        <li class="divider"></li>
                        <li>
                           <input class="btn btn-primary btn-block" type="button" id="sign-in-google" value="Sign In with Google">
                           <input class="btn btn-primary btn-block" type="button" id="sign-in-twitter" value="Sign In with Twitter">
                        </li>
                     </ul>
                  </li>
               </ul>
		</div>
	</div>
</nav>
