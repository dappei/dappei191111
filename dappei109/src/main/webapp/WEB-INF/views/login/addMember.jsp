<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<link rel="stylesheet"
	href="//netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.min.css">
<script
	src="//netdna.bootstrapcdn.com/bootstrap/3.1.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
<!-- Include Bootstrap Datepicker -->
<link rel="stylesheet"
	href="//cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.3.0/css/datepicker.min.css" />
<link rel="stylesheet"
	href="//cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.3.0/css/datepicker3.min.css" />
<script
	src="//cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.3.0/js/bootstrap-datepicker.min.js"></script>
<title>Sign UP</title>
<style>
@import
	url("//netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.css")
	;

.register-block {
	background: #DE6262; /* fallback for old browsers */
	background: -webkit-linear-gradient(to bottom, #3f4c6b, #3f4c6b);
	/* Chrome 10-25, Safari 5.1-6 */
	background: linear-gradient(to bottom, #3f4c6b, #3f4c6b);
	/* W3C, IE 10+/ Edge, Firefox 16+, Chrome 26+, Opera 12+, Safari 7+ */
	float: left;
	width: 100%;
	padding: 50px 0;
}

.banner-sec {
	background:
		url(https://scontent.ftpe8-1.fna.fbcdn.net/v/t1.0-9/30725829_1739352229465606_1920360309894152192_n.jpg?_nc_cat=105&_nc_ohc=89qMguyCMOMAQm-rWgWFeKbXuUY8-3Bo-G4sz9Lq6DQFPn6hOsWKehwNA&_nc_ht=scontent.ftpe8-1.fna&oh=9cd044935416d114255608de8a5b7b99&oe=5E88BB42)
		no-repeat bottom;
	background-size: cover;
	min-height: 900px;
	border-radius: 0 10px 10px 0;
	padding: 0;
}

.container {
	background: #fff;
	border-radius: 10px;
	box-shadow: 15px 20px 0px rgba(0, 0, 0, 0.1);
}

.carousel-inner {
	border-radius: 0 10px 10px 0;
}

.carousel-caption {
	text-align: left;
	left: 5%;
}

.register-sec {
	padding: 0px 30px;
	position: relative;
}

.register-sec .copy-text {
	position: absolute;
	width: 80%;
	bottom: 20px;
	font-size: 13px;
	text-align: center;
}

.register-sec .copy-text i {
	color: #FEB58A;
}

.register-sec .copy-text a {
	color: #E36262;
}

.register-sec h2 {
	margin-bottom: 30px;
	font-weight: 800;
	font-size: 30px;
	color: #3f4c6b;
}

.register-sec h2:after {
	content: " ";
	width: 100px;
	height: 5px;
	background: #3f4c6b;
	display: block;
	margin-top: 20px;
	border-radius: 3px;
	margin-left: auto;
	margin-right: auto
}

.btn-register {
	background: #3f4c6b;
	color: #fff;
	font-weight: 600;
}

.banner-text {
	width: 70%;
	position: absolute;
	bottom: 40px;
	padding-left: 20px;
}

.banner-text h2 {
	color: #fff;
	font-weight: 600;
}

.banner-text h2:after {
	content: " ";
	width: 100px;
	height: 5px;
	background: #FFF;
	display: block;
	margin-top: 20px;
	border-radius: 3px;
}

.banner-text p {
	color: #fff;
}

.msgWrong {
	color: red;
	font-size: 14pt;
}
</style>
<script>
	$(document)
			.ready(
					function() {
						$("#email").blur(checkEmail);
						$("#username").blur(checkName);
						$("#password").blur(checkPwd);
						$("#password_confirmation").blur(checkPwdSame);
						$("#regis").click(checkError);

						let flag = 0;
						let thePwd;

						function checkEmail() {
							let theEmail = document.getElementById("email").value;
							if (theEmail == "" || theEmail.length == 0) {
								document.getElementById("msg_email").innerHTML = "<span class='msgWrong'>不可空白</span>";
								flag += 1;
							} else {
								let re = /^(([^<>()\[\]\\.,;:\s@"]+(\.[^<>()\[\]\\.,;:\s@"]+)*)|(".+"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/;
								if (re.test(theEmail)) {
									document.getElementById("msg_email").innerHTML = "";
									flag = 0;
								} else {
									document.getElementById("msg_email").innerHTML = "<span class='msgWrong'>Email格式不正確</span>";
									flag += 1;
								}
							}
						}

						function checkName() {
							let theName = document.getElementById("username").value;
							if (theName == "" || theName.length == 0) {
								document.getElementById("msg_username").innerHTML = "<span class='msgWrong'>不可空白</span>";
								flag += 1;
							} else {
								document.getElementById("msg_username").innerHTML = "";
								flag == 0;
							}
						}

						function checkPwd() {
							thePwd = document.getElementById("password").value;
							let re = /^[a-zA-Z0-9!@#$%^&*]{6,}$/;
							if (thePwd.length == "") {
								document.getElementById("msg_password").innerHTML = "<span class='msgWrong'>不可空白</span>";
								flag += 1;
							} else {
								if (re.test(thePwd)) {
									document.getElementById("msg_password").innerHTML = "";
								} else {
									document.getElementById("msg_password").innerHTML = "<span class='msgWrong'>密碼格式不正確</span>";
									flag += 1;
								}
							}
						}

						function checkPwdSame() {
							thePwd2 = document
									.getElementById("password_confirmation").value;
							if (thePwd2 == "" || thePwd2.length == 0) {
								document.getElementById("msg_confirmpassword").innerHTML = "<span class='msgWrong'>不可空白</span>";
								flag += 1;
							} else {
								if (thePwd2 != thePwd) {
									document
											.getElementById("msg_confirmpassword").innerHTML = "<span class='msgWrong'>與上方設定密碼不一致</span>";
									flag += 1;
								} else {
									document
											.getElementById("msg_confirmpassword").innerHTML = "";
									flag = 0;
								}
							}
						}

						function checkError() {
							let errorMsg = "<span class='msgWrong'>不可空白</span>";

							if ($("#email").val() == "") {
								$("#msg_email").empty().append(errorMsg)
										.focus();
								flag += 1;
							}
							if ($("#username").val() == "") {
								$("#msg_username").empty().append(errorMsg)
										.focus();
								flag += 1;
							}
							if ($("#password").val() == "") {
								$("#msg_password").empty().append(errorMsg)
										.focus();
								flag += 1;
							}
							if ($("#password_confirmation").val() == "") {
								$("#msg_confirmpassword").empty().append(
										errorMsg).focus();
								flag += 1;
							}

							if (flag == 0) {
								document.getElementById("registerForm")
										.submit();
								document.href();
							} else {
								;
							}
						}
					});
	//日期格式
	$(document).ready(function() {
		$('#datePicker').datepicker({
			format : 'mm/dd/yyyy'
		});
	});
</script>
</head>

<body>
	<section class="register-block">
		<div class="container">
			<div class="row">
			<div class="col-md-8 banner-sec"></div>
				<div class="col-md-4 register-sec">
					<h2 class="text-center">Register Now</h2>
					<form:form method="POST" modelAttribute="memberBean"
						id="registerForm" class="form-horizontal"
						enctype="multipart/form-data">
						<form:hidden path="status" value="1" />
						<div class="form-group">
							<label for="email" class="text-uppercase">帳號</label>
							<form:input type="email" name="email" id="email" path="email"
								autocomplete="off" class="form-control"
								placeholder="Email Address" tabindex="1" required="required" />
							<small id="msg_email" class='msgWrong'>${errorMsg.emailError}</small><br>
						</div>
						<div class="form-group">
							<label for="exampleInputAddress1" class="text-uppercase">密碼
							</label>
							<form:input type="password" name="password" id="password"
								path="password" class="form-control" placeholder="Password"
								tabindex="2" />
							<small>請輸入至少6個字母含數字</small><br> <small id="msg_password"
								class='msgWrong'></small><br>
						</div>
						<div class="form-group">
							<label for="exampleInputAddress2" class="text-uppercase">確認密碼
							</label>
							<form:input type="password" name="password_confirmation"
								path="confirmPassword" id="password_confirmation"
								class="form-control" placeholder="Confirm Password" tabindex="3" />
							<small id="msg_confirmpassword" class='msgWrong'></small><br>
						</div>
						<div class="form-group">
							<label for="exampleInputTown1" class="text-uppercase">使用者名稱</label>
							<form:input type="text" name="username" id="username"
								path="username" class="form-control" placeholder="Username"
								tabindex="4" />
							<small id="msg_username" class='msgWrong'></small><br>
						</div>
						<div class="form-group">
							<label for="exampleInputCountry1" class="text-uppercase">生日</label>

							<div class="input-group input-append date" id="datePicker">
								<form:input type="text" class="form-control" name="birthday"
									path="birthday" placeholder="Birthday" autocomplete="off"
									tabindex="5" />
								<span class="input-group-addon add-on"> <span
									class="glyphicon glyphicon-calendar"></span>
								</span>
							</div>

						</div>
						<div class="form-group">
							<label for="exampleInputPostCode1" class="text-uppercase">電話</label>
							<form:input type="text" name="phone" id="phone" path="phone"
								class="form-control" placeholder="Phone" tabindex="6" />
							<small id="msg_phone"></small>
						</div>
						<div class="form-group">
							<label for="exampleInputUsername" class="text-uppercase">上傳個人照</label>
							<form:input type="file" name="facepic" id="memberImage"
								path="memberImage" class="form-control"
								placeholder="Face Picture" tabindex="7" />

						</div>
						<font style="color: red; font-size: 20pt">${errorMsg.accError}</font>
						<div class="row">
							<div class="col-xs-12 col-md-6">
								<input type="submit" value="註冊" id="regis"
									class="btn btn-primary btn-block btn-lg" />
							</div>
							<div class="col-xs-12 col-md-6">
								<input type="reset" class="btn btn-success btn-block btn-lg"
									value="重新填寫">
							</div>
						</div>

					</form:form>

				</div>
				
			</div>
			</div>
	</section>
</body>
</html>
