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
											placeholder="Enter your theme" value="穿搭主題：20191128" />
									</div>
								</div>
							</div>
							<div class="form-group">
								<label for="comment">內容介紹</label>
								<textarea class="form-control" rows="5" id="comment"
									placeholder="Enter your Introduction">"此次穿搭與台灣服飾品牌合作*
-
近幾年工裝風格崛起，每年秋冬都可以看到燈芯絨的單品，無論保暖或質感都是被認同的🉑️，這件NET的夾克外套，不管要單穿內搭或多層次穿搭，都很好發揮的款式，天氣逐漸變涼，是該入手外套了🧥。
-
燈芯絨夾克: NET
後背包: MCM
領巾: Beauty&youth
內搭: GU Taiwan
褲子: Life by 陽台工作室
鞋子: Vatic Official Pages
襪子: Uniqlo Taiwan
--------------------------
蝦皮 https://goo.gl/c7W8fQ
陽台工作室INSTAGRAM https://goo.gl/DGtfSN
INSTAGRAM https://goo.gl/muWtCM
FANSPAGE https://goo.gl/T4Rd3L
BLOG https://goo.gl/skm1Ud

單品預覽"</textarea>
								<div class="cols-sm-10"></div>
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
	



	<!-- ---------------------------------------------------------------------------------------------------------- -->


	<br>
	<br>
	<br>
	<br>


	<jsp:include page="/WEB-INF/views/footer.jsp" />



</body>
</html>