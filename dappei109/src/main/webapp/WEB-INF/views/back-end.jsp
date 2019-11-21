<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>

<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="IE=edge">

<title>穿搭後台管理</title>


<!-- Bootstrap CSS CDN -->
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.0/css/bootstrap.min.css">
<!-- Our Custom CSS -->
<link rel="stylesheet"
	href="https://bootstrapious.com/tutorial/sidebar/style.css">
<!-- Font Awesome JS -->
<script defer
	src="https://use.fontawesome.com/releases/v5.0.13/js/solid.js"></script>
<script defer
	src="https://use.fontawesome.com/releases/v5.0.13/js/fontawesome.js"></script>

<style>
h1 {
	color: #000000;
	margin: 40px 0 60px 0;
	font-weight: 300;
}

.our-team-main {
	width: 100%;
	height: auto;
	border-bottom: 5px #323233 solid;
	background: #fff;
	text-align: center;
	border-radius: 10px;
	overflow: hidden;
	position: relative;
	transition: 0.5s;
	margin-bottom: 28px;
}

.our-team-main img {
	border-radius: 50%;
	margin-bottom: 20px;
	width: 90px;
}

.our-team-main h3 {
	font-size: 20px;
	font-weight: 700;
}

.our-team-main p {
	margin-bottom: 0;
}

.team-back {
	width: 100%;
	height: auto;
	position: absolute;
	top: 0;
	left: 0;
	padding: 5px 15px 0 15px;
	text-align: center;
	background: #fff;
}

.team-front {
	width: 100%;
	height: auto;
	position: relative;
	z-index: 10;
	background: #fff;
	padding: 15px;
	bottom: 0px;
	transition: all 0.5s ease;
}

.our-team-main:hover .team-front {
	bottom: -200px;
	transition: all 0.5s ease;
}

.our-team-main:hover {
	border-color: #777;
	transition: 0.5s;
}
#img1{
	border-radius: 0px;
	width:65%;
	height:65%;
}
#img2{
	border-radius: 0px;
	width:50%;
	height:50%;
}
/*our-team-main*/ 
</style>
</head>

<body>
	<div class="wrapper">
		<!-- Sidebar  -->
		<nav id="sidebar">
			<div class="sidebar-header">
				<h3>後台系統</h3>
			</div>

			<ul class="list-unstyled components">
				<li class="active"><a href="members">會員</a></li>
				<li><a href="#homeSubmenu" data-toggle="collapse"
					aria-expanded="false" class="dropdown-toggle">活動</a>
					<ul class="collapse list-unstyled" id="homeSubmenu">
						<li><a href="eventsAdd">新增活動</a></li>
						<li><a href="eventsMaintain">上架活動</a></li>
						<li><a href="eventsPastevents">下架活動</a></li>
					</ul></li>
				<li><a href="#pageSubmenu" data-toggle="collapse"
					aria-expanded="false" class="dropdown-toggle">購物</a>
					<ul class="collapse list-unstyled" id="pageSubmenu">
						<li><a href="storesAdd">新增產品</a></li>
						<li><a href="storesMaintain">上架產品</a></li>
						<li><a href="storesPastproducts">下架產品</a></li>
					</ul></li>
				<li><a href="#">部落格</a></li>
				<li><a href="ant">公告</a></li>
				<li><a href="#pageSubmenu2" data-toggle="collapse"
					aria-expanded="false" class="dropdown-toggle">訂單</a>
					<ul class="collapse list-unstyled" id="pageSubmenu2">
						<li><a href="#">活動訂單</a></li>
						<li><a href="#">產品訂單</a></li>
					</ul></li>
			</ul>

			<ul class="list-unstyled CTAs">
				<li><a href="${pageContext.request.contextPath}/"
					class="download">回到首頁</a></li>
			</ul>
		</nav>

		<!-- Page Content  -->
		<div id="content">

			<nav class="navbar navbar-expand-lg navbar-light bg-light">
				<div class="container-fluid">

					<button type="button" id="sidebarCollapse" class="btn btn-info">
						<i class="fas fa-align-left"></i> <span>Toggle Sidebar</span>
					</button>
					<button class="btn btn-dark d-inline-block d-lg-none ml-auto"
						type="button" data-toggle="collapse"
						data-target="#navbarSupportedContent"
						aria-controls="navbarSupportedContent" aria-expanded="false"
						aria-label="Toggle navigation">
						<i class="fas fa-align-justify"></i>
					</button>
				</div>
			</nav>

			<!-- 團隊牆 -->


			<h1 class="text-center">Team Member</h1>

			<div class="container">
				<div class="row">

					<!--team-1-->
					<div class="col-lg-4">
						<div class="our-team-main">

							<div class="team-front">
								<img src="https://scontent.ftpe7-4.fna.fbcdn.net/v/t1.0-9/36758169_2212484202101509_4830914394894368768_n.jpg?_nc_cat=105&_nc_ohc=MyKMqN4s1IcAQmHpD9RmWtIJOzv6n8pZ619vI-s0z14WOg5g8CrkwTwIQ&_nc_ht=scontent.ftpe7-4.fna&oh=6f6a828438a9e60c60fd712548bb8dbc&oe=5E8169B6"
									class="img-fluid" />
								<h3>葉明坤</h3>
								<p>Web Designer</p>
							</div>
						
							<div class="team-back">
								<img id="img1" src="${pageContext.request.contextPath}/image/kun1.jpg"/>
							</div>
						</div>
						
					</div>
					<!--team-1-->

					<!--team-2-->
					<div class="col-lg-4">
						<div class="our-team-main">

							<div class="team-front">
								<img src="https://scontent.ftpe7-3.fna.fbcdn.net/v/t1.0-9/10401490_885829914766815_7450812822239291613_n.jpg?_nc_cat=108&_nc_ohc=74fznATPS3UAQmo_cunZObbG3kHSWlLYar5xvnxwAodrYOOcN0MwKnnVg&_nc_ht=scontent.ftpe7-3.fna&oh=0c691ec0195158a5f5e0f4052a37f965&oe=5E3E226D"
									class="img-fluid" />
								<h3>蔣弦成</h3>
								<p>Web Designer</p>
							</div>

							<div class="team-back">
								<img id="img2" src="${pageContext.request.contextPath}/indeximage/win2.jpg"/>

						</div>
					</div>
					<!--team-2-->

					<!--team-3-->
					<div class="col-lg-4">
						<div class="our-team-main">

							<div class="team-front">
								<img src="http://placehold.it/110x110/607d8b/fff?text=Dilip"
									class="img-fluid" />
								<h3>Dilip Kevat</h3>
								<p>Web Designer</p>
							</div>

							<div class="team-back">
								<span> Lorem ipsum dolor sit amet, consectetuer
									adipiscing elit. Aenean commodo ligula eget dolor. Aenean
									massa. Cum sociis natoque penatibus et magnis dis parturient
									montes, Lorem ipsum dolor sit amet, consectetuer adipiscing
									elit. Aenean commodo ligula eget dolor. Aenean massa. Cum
									sociis natoque. </span>
							</div>

						</div>
					</div>
					<!--team-3-->

					<!--team-4-->
					<div class="col-lg-4">
						<div class="our-team-main">

							<div class="team-front">
								<img src="http://placehold.it/110x110/4caf50/fff?text=Dilip"
									class="img-fluid" />
								<h3>Dilip Kevat</h3>
								<p>Web Designer</p>
							</div>

							<div class="team-back">
								<span> Lorem ipsum dolor sit amet, consectetuer
									adipiscing elit. Aenean commodo ligula eget dolor. Aenean
									massa. Cum sociis natoque penatibus et magnis dis parturient
									montes, Lorem ipsum dolor sit amet, consectetuer adipiscing
									elit. Aenean commodo ligula eget dolor. Aenean massa. Cum
									sociis natoque. </span>
							</div>

						</div>
					</div>
					<!--team-4-->

					<!--team-5-->
					<div class="col-lg-4">
						<div class="our-team-main">

							<div class="team-front">
								<img src="http://placehold.it/110x110/e91e63/fff?text=Dilip"
									class="img-fluid" />
								<h3>Dilip Kevat</h3>
								<p>Web Designer</p>
							</div>

							<div class="team-back">
								<span> Lorem ipsum dolor sit amet, consectetuer
									adipiscing elit. Aenean commodo ligula eget dolor. Aenean
									massa. Cum sociis natoque penatibus et magnis dis parturient
									montes, Lorem ipsum dolor sit amet, consectetuer adipiscing
									elit. Aenean commodo ligula eget dolor. Aenean massa. Cum
									sociis natoque. </span>
							</div>

						</div>
					</div>
					<!--team-5-->

					<!--team-6-->
					<div class="col-lg-4">
						<div class="our-team-main">

							<div class="team-front">
								<img src="http://placehold.it/110x110/2196f3/fff?text=Dilip"
									class="img-fluid" />
								<h3>Dilip Kevat</h3>
								<p>Web Designer</p>
							</div>

							<div class="team-back">
								<span> Lorem ipsum dolor sit amet, consectetuer
									adipiscing elit. Aenean commodo ligula eget dolor. Aenean
									massa. Cum sociis natoque penatibus et magnis dis parturient
									montes, Lorem ipsum dolor sit amet, consectetuer adipiscing
									elit. Aenean commodo ligula eget dolor. Aenean massa. Cum
									sociis natoque. </span>
							</div>

						</div>
					</div>
					<!--team-6-->



				</div>
			</div>
			<!-- 			團隊牆結束 -->
		</div>
		<!-- Page Content 結束 -->
	</div>

	<!-- jQuery CDN - Slim version (=without AJAX) -->
	<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
		integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
		crossorigin="anonymous"></script>
	<!-- Popper.JS -->
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.0/umd/popper.min.js"
		integrity="sha384-cs/chFZiN24E4KMATLdqdvsezGxaGsi4hLGOzlXwp5UZB1LY//20VyM2taTB4QvJ"
		crossorigin="anonymous"></script>
	<!-- Bootstrap JS -->
	<script
		src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.0/js/bootstrap.min.js"
		integrity="sha384-uefMccjFJAIv6A+rW+L4AHf99KvxDjWSu1z9VI8SKNVmz4sk7buKt/6v9KI65qnm"
		crossorigin="anonymous"></script>

	<script type="text/javascript">
		$(document).ready(function() {
			$('#sidebarCollapse').on('click', function() {
				$('#sidebar').toggleClass('active');
			});
		});
	</script>
</body>

</html>