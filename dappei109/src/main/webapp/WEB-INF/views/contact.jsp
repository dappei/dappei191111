<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html lang="UTF-8">
<head>
<meta charset="UTF-8">

<title>聯絡我們</title>

<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">

<style>
body {
	background-attachment: fixed;
	background-repeat: no-repeat;
	background-position: center;
	background-repeat: no-repeat; background-size : cover;
	background-image: url("http://file03.16sucai.com/2016/10/1100/16sucai_p20161007020_064.JPG");
	background-color: #ccc;
	background-size: cover;
	
}

#dbody {
	width: 350px;
	border: solid 2px #fff;
	font-color:#00000;	
}

</style>

</head>
<body  style="color: #FFFFFF">
	<jsp:include page="/WEB-INF/views/header2.jsp" />
	<br>
	<br>
	<br>

	<div class="container"></div>

	<section id="aa-catg-head-banner">
		<!--    <img src="indeximage/apple.jpg" alt="fashion img"> -->
		<div class="aa-catg-head-banner-area">
			<div class="container">
				<div class="aa-catg-head-banner-content">
					<h2>聯絡我們</h2>
					<ol class="breadcrumb">
						<li><a href="index">Home</a></li>&nbsp
						<li class="active">Contact</li>
					</ol>
				</div>
			</div>
		</div>
	</section>
	<!-- / catg header banner section -->
	<!-- start contact section -->
	<section id="aa-contact">
		<div class="container">
			<div class="row">
				<div class="col-md-12">
					<div class="aa-contact-area">
						<div class="aa-contact-top">
							<h2>我們的位置</h2>
							<p>Our location map,Can find us here</p>
						</div>
						<!-- contact map -->
						<div class="aa-contact-map">
							<iframe
								src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3615.0102862754056!2d121.54123031464479!3d25.033724983972505!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3442abd379a5ec97%3A0xedc006d25a9e35df!2z6LOH562W5pyDIOaVuOS9jeaVmeiCsueglOeptuaJgCDmlbjkvY3kurrmiY3ln7nogrLkuK3lv4M!5e0!3m2!1szh-TW!2stw!4v1572590736949!5m2!1szh-TW!2stw"
								width="1140" height="450" frameborder="0" style="border: 0;"
								allowfullscreen=""></iframe>
						</div>
						<!-- Contact address -->
						<div class="aa-contact-address">
							<div class="row">
								<div class="col-md-8">
									<div class="aa-contact-address-left">
										<form class="comments-form contact-form" action="">
											<div class="row">
												<div class="col-md-6">
													<div class="form-group">
														<input type="text" placeholder="Your Name"
															class="form-control">
													</div>
												</div>
												<div class="col-md-6">
													<div class="form-group">
														<input type="email" placeholder="Email"
															class="form-control">
													</div>
												</div>
											</div>
											<div class="row">
												<div class="col-md-6">
													<div class="form-group">
														<input type="text" placeholder="Subject"
															class="form-control">
													</div>
												</div>
												<div class="col-md-6">
													<div class="form-group">
														<input type="text" placeholder="Company"
															class="form-control">
													</div>
												</div>
											</div>

											<div class="form-group">
												<textarea class="form-control" rows="3"
													placeholder="Message"></textarea>
											</div>
											<button class="aa-secondary-btn">Send</button>
										</form>
									</div>
								</div>
								<div class="col-md-4">
									<div class="aa-contact-address-right">
										<address>
											<h4>dappei</h4>
											<p>Your wear is our most important issue,Tailored for
												you!</p>
											<p>
												<span class="fa fa-home"></span>106台北市大安區復興南路一段390號 2,3號3樓
											</p>
											<p>
												<span class="fa fa-phone"></span>02-6631-6666
											</p>
											<p>
												<span class="fa fa-envelope"></span>Email:dappei109@gmail.com
											</p>
										</address>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<br>
	<jsp:include page="/WEB-INF/views/footer.jsp" />

</body>
</html>