<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html>
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
.colorgraph {
	height: 5px;
	border-top: 0;
	background: #c4e17f;
	border-radius: 5px;
	background-image: -webkit-linear-gradient(left, #c4e17f, #c4e17f 12.5%, #f7fdca 12.5%,
		#f7fdca 25%, #fecf71 25%, #fecf71 37.5%, #f0776c 37.5%, #f0776c 50%,
		#db9dbe 50%, #db9dbe 62.5%, #c49cde 62.5%, #c49cde 75%, #669ae1 75%,
		#669ae1 87.5%, #62c2e4 87.5%, #62c2e4);
	background-image: -moz-linear-gradient(left, #c4e17f, #c4e17f 12.5%, #f7fdca 12.5%,
		#f7fdca 25%, #fecf71 25%, #fecf71 37.5%, #f0776c 37.5%, #f0776c 50%,
		#db9dbe 50%, #db9dbe 62.5%, #c49cde 62.5%, #c49cde 75%, #669ae1 75%,
		#669ae1 87.5%, #62c2e4 87.5%, #62c2e4);
	background-image: -o-linear-gradient(left, #c4e17f, #c4e17f 12.5%, #f7fdca 12.5%, #f7fdca
		25%, #fecf71 25%, #fecf71 37.5%, #f0776c 37.5%, #f0776c 50%, #db9dbe
		50%, #db9dbe 62.5%, #c49cde 62.5%, #c49cde 75%, #669ae1 75%, #669ae1
		87.5%, #62c2e4 87.5%, #62c2e4);
	background-image: linear-gradient(to right, #c4e17f, #c4e17f 12.5%, #f7fdca 12.5%, #f7fdca
		25%, #fecf71 25%, #fecf71 37.5%, #f0776c 37.5%, #f0776c 50%, #db9dbe
		50%, #db9dbe 62.5%, #c49cde 62.5%, #c49cde 75%, #669ae1 75%, #669ae1
		87.5%, #62c2e4 87.5%, #62c2e4);
}

body {
	font-family: 微軟正黑體;
	background-color: #f5f5f5;
	margin-top: 3%;
}
</style>
<script>
$(document).ready(function () {
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
        }
        else {
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
	thePwd2 = document.getElementById("password_confirmation").value;
	if (thePwd2 == "" || thePwd2.length == 0) {
		document.getElementById("msg_confirmpassword").innerHTML = "<span class='msgWrong'>不可空白</span>";
    	flag += 1;
	} else {
		if (thePwd2 != thePwd) {
			document.getElementById("msg_confirmpassword").innerHTML = "<span class='msgWrong'>與上方設定密碼不一致</span>";
			flag += 1;
		} else {
			document.getElementById("msg_confirmpassword").innerHTML = "";
			flag = 0;
		}
	}
}

function checkError() {
	let errorMsg = "<span class='msgWrong'>不可空白</span>";
	
	if($("#email").val()=="") {
		$("#msg_email").empty().append(errorMsg).focus();
		flag += 1;
	} 
	if($("#username").val()=="") {
		$("#msg_username").empty().append(errorMsg).focus();
		flag += 1;
	} 
	if($("#password").val()=="") {
		$("#msg_password").empty().append(errorMsg).focus();
		flag += 1;
	} 
	if($("#password_confirmation").val()=="") {
		$("#msg_confirmpassword").empty().append(errorMsg).focus();
		flag += 1;
	} 
	 
	if(flag == 0) {
		document.getElementById("registerForm").submit();
		document.href();
	} else {
		;
	}
}
	// I Agree的打勾用
	$(function() {
		$('.button-checkbox')
				.each(
						function() {

							// Settings
							var $widget = $(this), $button = $widget
									.find('button'), $checkbox = $widget
									.find('input:checkbox'), color = $button
									.data('color'), settings = {
								on : {
									icon : 'glyphicon glyphicon-check'
								},
								off : {
									icon : 'glyphicon glyphicon-unchecked'
								}
							};

							// Event Handlers
							$button.on('click', function() {
								$checkbox.prop('checked', !$checkbox
										.is(':checked'));
								$checkbox.triggerHandler('change');
								updateDisplay();
							});
							$checkbox.on('change', function() {
								updateDisplay();
							});

							// Actions
							function updateDisplay() {
								var isChecked = $checkbox.is(':checked');

								// Set the button's state
								$button.data('state', (isChecked) ? "on"
										: "off");

								// Set the button's icon
								$button
										.find('.state-icon')
										.removeClass()
										.addClass(
												'state-icon '
														+ settings[$button
																.data('state')].icon);

								// Update the button's color
								if (isChecked) {
									$button.removeClass('btn-default')
											.addClass(
													'btn-' + color + ' active');
								} else {
									$button.removeClass(
											'btn-' + color + ' active')
											.addClass('btn-default');
								}
							}

							// Initialization
							function init() {

								updateDisplay();

								// Inject the icon if applicable
								if ($button.find('.state-icon').length == 0) {
									$button
											.prepend('<i class="state-icon '
													+ settings[$button
															.data('state')].icon
													+ '"></i>');
								}
							}
							init();
						});
	});

	//日期格式
	$(document).ready(function() {
		$('#datePicker').datepicker({
			format : 'mm/dd/yyyy'
		})
	});
</script>
</head>

<body>
	<div class="container">

		<div class="row" id="registerForm">
			<div
				class="col-xs-12 col-sm-8 col-md-6 col-sm-offset-2 col-md-offset-3">
				<form:form method="POST" modelAttribute="memberBean"
					class="form-horizontal" enctype="multipart/form-data">
					<h2>請輸入會員資料</h2>
					<hr class="colorgraph">
					<div class="form-group">
						<label>Email</label>
						<form:input type="email" name="email" id="email" path="email"
							class="form-control input-lg" placeholder="Email Address"
							tabindex="1" />
						<small id="msg_email" class='msgWrong'>${errorMsg.emailError}</small>
					</div>
					<div class="form-group">
						<label>密碼</label>
						<form:input type="password" name="password" id="password"
							path="password" class="form-control input-lg"
							placeholder="Password" tabindex="2" />
						<small>請輸入至少6個字母含數字</small> <small id="msg_password"></small>
					</div>

					<div class="form-group">
						<label>確認密碼</label>
						<form:input type="password" name="password_confirmation"
							path="confirmPassword" id="password_confirmation"
							class="form-control input-lg" placeholder="Confirm Password"
							tabindex="3" />
						<small id="msg_confirmpassword"></small>
					</div>


					<div class="form-group">
						<label>使用者名稱</label>
						<form:input type="text" name="username" id="username"
							path="username" class="form-control input-lg"
							placeholder="Username" tabindex="4" />
						<small id="msg_username"></small>
					</div>
					<div class="form-group">
						<label>生日</label>
						<div class="col-xs-15 date">
							<div class="input-group input-append date" id="datePicker">
								<form:input type="text" class="form-control input-lg"
									name="birthday" path="birthday" placeholder="Birthday"
									autocomplete="off" tabindex="5" />
								<span class="input-group-addon add-on"><span
									class="glyphicon glyphicon-calendar"></span></span>
							</div>
						</div>
					</div>
					<div class="form-group">
						<label>電話</label>
						<form:input type="text" name="phone" id="phone" path="phone"
							class="form-control input-lg" placeholder="Phone" tabindex="6" />
						<small id="msg_phone"></small>
					</div>
					<div class="form-group">
						<label>上傳個人照</label>
						<form:input type="file" name="facepic" id="memberImage"
							path="memberImage" class="form-control input-lg"
							placeholder="Face Picture" tabindex="7" />
					</div>
					<div class="row">
						<div class="col-xs-4 col-sm-3 col-md-3">
							<span class="button-checkbox">
								<button type="button" class="btn" data-color="info"
									tabindex="87">I Agree</button> <input type="checkbox"
								name="t_and_c" id="t_and_c" class="hidden" value="1">
							</span>
						</div>
						<div class="col-xs-8 col-sm-9 col-md-9">
							By clicking <strong class="label label-primary">Register</strong>,
							you agree to the <a href="#" data-toggle="modal"
								data-target="#t_and_c_m">Terms and Conditions</a> set out by
							this site, including our Cookie Use.
						</div>
					</div>

					<hr class="colorgraph">
					<div class="row">
						<div class="col-xs-12 col-md-6">
							<input type="submit" value="註冊" id="regis"
								class="btn btn-primary btn-block btn-lg">
						</div>
						<div class="col-xs-12 col-md-6">
							<a href="login" class="btn btn-success btn-block btn-lg">已有帳號</a>
						</div>
					</div>
				</form:form>
			</div>
		</div>




		<!-- Modal -->
		<div class="modal fade" id="t_and_c_m" tabindex="-1" role="dialog"
			aria-labelledby="myModalLabel" aria-hidden="true">
			<div class="modal-dialog modal-lg">
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal"
							aria-hidden="true">×</button>
						<h4 class="modal-title" id="myModalLabel">Terms & Conditions</h4>
					</div>
					<div class="modal-body">
						<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit.
							Similique, itaque, modi, aliquam nostrum at sapiente consequuntur
							natus odio reiciendis perferendis rem nisi tempore possimus ipsa
							porro delectus quidem dolorem ad.</p>
						<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit.
							Similique, itaque, modi, aliquam nostrum at sapiente consequuntur
							natus odio reiciendis perferendis rem nisi tempore possimus ipsa
							porro delectus quidem dolorem ad.</p>
						<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit.
							Similique, itaque, modi, aliquam nostrum at sapiente consequuntur
							natus odio reiciendis perferendis rem nisi tempore possimus ipsa
							porro delectus quidem dolorem ad.</p>
						<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit.
							Similique, itaque, modi, aliquam nostrum at sapiente consequuntur
							natus odio reiciendis perferendis rem nisi tempore possimus ipsa
							porro delectus quidem dolorem ad.</p>
						<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit.
							Similique, itaque, modi, aliquam nostrum at sapiente consequuntur
							natus odio reiciendis perferendis rem nisi tempore possimus ipsa
							porro delectus quidem dolorem ad.</p>
						<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit.
							Similique, itaque, modi, aliquam nostrum at sapiente consequuntur
							natus odio reiciendis perferendis rem nisi tempore possimus ipsa
							porro delectus quidem dolorem ad.</p>
						<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit.
							Similique, itaque, modi, aliquam nostrum at sapiente consequuntur
							natus odio reiciendis perferendis rem nisi tempore possimus ipsa
							porro delectus quidem dolorem ad.</p>
					</div>
					<div class="modal-footer">
						<button type="button" class="btn btn-primary" data-dismiss="modal">I
							Agree</button>
					</div>
				</div>
				<!-- /.modal-content -->
			</div>
			<!-- /.modal-dialog -->
		</div>
		<!-- /.modal -->
	</div>


</body>
</html>

