<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>修改穿搭照片</title>
</head>
<link
	href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css"
	rel="stylesheet" id="bootstrap-css">
<script
	src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script
	src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<!------ Include the above in your HEAD tag ---------->
<style>
body {
	background-attachment: fixed;
	background-repeat: no-repeat;
	/* 	background-position: center; */
	background-repeat: no-repeat;
	background-size: cover;
	background-image:
		url("http://getwallpapers.com/wallpaper/full/4/b/5/207200.jpg");
	background-color: #ccc;
}
</style>

<body>


	<jsp:include page="/WEB-INF/views/header.jsp" />
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>



	<div class="container">
		<div class="row justify-content-center">
			<div class="col-md-8">
				<div class="card">
					<div class="card-header">
						<h3>修改穿搭</h3>
					</div>
					<div class="card-body">

						<form class="form-horizontal" method="post" action="#">

							<div class="form-group">
								<label for="name" class="cols-sm-2 control-label">主題</label>
								<div class="cols-sm-10">
									<div class="input-group">
										<span class="input-group-addon"><i
											class="fa fa-user fa" aria-hidden="true"></i></span> <input
											type="text" class="form-control" name="name" id="name"
											placeholder="Enter your theme" />
									</div>
								</div>
							</div>
							<div class="form-group">
								<label for="comment">內容介紹</label>
								<textarea class="form-control" rows="5" id="comment" placeholder="Enter your Introduction" ></textarea>
								<div class="cols-sm-10">
								
									</div>
								</div>
							</div>

							<div class="form-group">
								<label for="password" class="cols-sm-2 control-label">上傳穿搭照</label>
								<div class="cols-sm-10">
									<div class="input-group">
										<span class="input-group-addon"> <i
											class="fa fa-lock fa-lg" aria-hidden="true"></i></span> <input
											type="file" class="form-control" name="file" id="file"
											placeholder="file" />
									</div>
								</div>
							</div>

							<div class="form-group ">
								<a href="dappelwall"
									class="btn btn-primary btn-lg btn-block login-button">送出</a>
							</div>

						</form>
					</div>

				</div>
			</div>
		</div>
	</div>



	<!-- ---------------------------------------------------------------------------------------------------------- -->


	<br>
	<br>
	<br>
	<br>
	

	<jsp:include page="/WEB-INF/views/footer.jsp" />



</body>
</html>