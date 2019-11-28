<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<html>
<head>
<meta charset="UTF-8">
<title>修改消息</title>
<link rel="stylesheet" href="style.css">
<link rel="stylesheet"
	href="//netdna.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
	
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
<!-- Our Custom CSS -->
<link rel="stylesheet"
	href="https://bootstrapious.com/tutorial/sidebar/style.css">

<style>
@import "https://use.fontawesome.com/releases/v5.5.0/css/all.css";

body {

	margin: 0;
	padding: 0;
	font-family: sans-serif;
	background-image:linear-gradient(125deg,lightskyblue,lightcyan,azure,powderblue,turquoise);
	background-size: 400%;
	animation: bganimation 20s infinite;
}
@keyframes bganimation{
0%{
background-position: 0% 50%;
}
50%{
background-position: 100% 50%;
}
100%{
background-position: 0% 50%;
}

}
#content {
	width: 100%;
	align-items: center;
	background-size: cover;
	background-repeat: no-repeat;
	background-position: center;
}
.login-box {
	height: 650px;
	width: 450px;
	position: absolute;
	top: 41%;
	left: 50%;
	transform: translate(-50%, -50%);
	color: #000000;
}

.login-box h1 {
	float: left;
	font-size: 30px;
	border-bottom: 6px solid #444444;
	margin-bottom: 50px;
	padding: 13px 0;
}

.textbox {
	width: 100%;
	overflow: hidden;
	font-size: 20px;
	padding: 8px 0;
	margin: 8px 0;
	border-bottom: 1px solid #444444;
}

.textbox i {
	width: 26px;
	float: left;
	text-align: center;
}

.textbox input {
	border: none;
	outline: none;
	background: none;
	color: #003377;
	font-size: 18px;
	width: 80%;
	float: left;
	margin: 0 10px;
}

.button {
	width: 49%;
	background: none;
	border: 2px solid #444444;
	color: #003377;
	padding: 5px;
	font-size: 18px;
	cursor: pointer;
	margin: 12px 0;
}
#antcontent{
background: none;
color: #003377;
border: 1px solid #444444;
padding: 10px;
margin: 0 10px;


}


.wrapper{
height:900px
}


</style>

</head>
<body>

	<div class="wrapper">
	<!-- Sidebar  -->
		<nav id="sidebar" style="background-color:pink" class="border border-light">
			<div class="sidebar-header" style="background-color:lightpink" >
				<h3>
					<a href="${pageContext.request.contextPath}/back-end" style="color:	#696969;">後台系統</a>
				</h3>

			</div>

			<ul class="list-unstyled components" style="color:#696969;">
				<li class="active"><a href="${pageContext.request.contextPath}/members" style="background-color:pink ;color:#696969;">會員</a></li>
				<li><a href="#homeSubmenu" data-toggle="collapse"
					aria-expanded="false" class="dropdown-toggle" >活動</a>
					<ul class="collapse list-unstyled" id="homeSubmenu">
						<li><a href="${pageContext.request.contextPath}/eventsAdd" style="background-color:white">新增活動</a></li>
						<li><a href="${pageContext.request.contextPath}/eventsMaintain" style="background-color:white">上架活動</a></li>
						<li><a href="${pageContext.request.contextPath}/eventsPastevents" style="background-color:white">下架活動</a></li>
					</ul></li>
				<li style="background-color:pink"><a href="#pageSubmenu" data-toggle="collapse"
					aria-expanded="false" class="dropdown-toggle" >購物</a>
					<ul class="collapse list-unstyled" id="pageSubmenu">
						<li><a href="${pageContext.request.contextPath}/storesAdd" style="background-color:white">新增產品</a></li>
						<li><a href="${pageContext.request.contextPath}/storesMaintain" style="background-color:white">上架產品</a></li>
						<li><a href="${pageContext.request.contextPath}/storesPastproducts" style="background-color:white">下架產品</a></li>
					</ul></li>
				<li><a href="#">部落格</a></li>
				<li><a href="#pageSubmenu3" data-toggle="collapse" 
					aria-expanded="false" class="dropdown-toggle">消息</a>
					<ul class="collapse list-unstyled" id="pageSubmenu3" >
					<li><a href="<c:url value='/ant'/>" style="background-color:white">查看所有消息</a></li>
						<li><a href="<c:url value='/ant/add'/>" style="background-color:white">新增消息</a></li>
					</ul></li>
				<li><a href="#pageSubmenu2" data-toggle="collapse" 
					aria-expanded="false" class="dropdown-toggle">訂單</a>
					<ul class="collapse list-unstyled" id="pageSubmenu2" >
						<li><a href="#" style="background-color:white">活動訂單</a></li>
						<li><a href="#" style="background-color:white">產品訂單</a></li>
					</ul></li>
					
			</ul>



			<ul class="list-unstyled CTAs" >
				<li style="background-color:pink"><a href="${pageContext.request.contextPath}/"
					class="download" style="color:#696969;">回到首頁</a></li>
			</ul>
		</nav>
         <div id="content">

			<nav>
				<!-- class="navbar transparent navbar-expand-lg navbar-light bg-light  " -->
				<div class="container-fluid">

					<button type="button" id="sidebarCollapse" class="btn btn-warning">
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

	<fieldset class="login-box">
		<h1>Edit News</h1>
		<form:form method='POST' modelAttribute="antBean"
			enctype='multipart/form-data'>
			
			<div >
				<label  for='antid'> </label>
				<div>
					<form:input id="antid" path="antid" type='text'
						style="display:none;" />
				</div>
			</div>
			<div class="textbox">
				<label class="far fa-calendar-alt" for='anttime'>日期:</label>
				<div>
					<form:input id="anttime" path="anttime" type='text'
						placeholder="Title"  />
				</div>
			</div>
			<div class="textbox">
				<label class="fas fa-pencil-ruler" for='anttitle'>標題: </label>
				<div>
					<form:input id="anttitle" path="anttitle" type='text'
						required="required" placeholder="Title" />
				</div>
			</div>
			<div class="textbox">
				<label class="fas fa-stream" for='category'>類別: </label>
				<div >
					<form:input id="category" path="category" type='text'
						readonly="true"  />
				</div>
			</div>
			<div class="textbox">
				<label class="fas fa-book-open" for='antcontent'>內容: </label>
				<div>
					<textarea id="antcontent" name="antcontent" path="antcontent" rows="6" style="width:430px"
						  >${antBean.antcontent}</textarea>
				</div>
			</div>
			<div class="textbox">
				<label class="fas fa-images" for='productImage'>圖片: </label>
				<div>
					<form:input id="productImage" path="productImage" type='file' />
				</div>
			</div>
			<div>
				<div>
					<input id="btnAdd" type='submit' class="button" value="送出">

					<i><input id="btnAdd" type='reset' class="button" value="刪除" /></i>
					<!--  	<img src="${pageContext.request.contextPath}/antimage/ajax-loader.gif">   -->

				</div>
			</div>
		</form:form>
	</fieldset>
</div>
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

<script
		src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/jquery.ripples/0.5.3/jquery.ripples.min.js"></script>
	<script>
		$(document).ready(function() {
			$("#content").ripples({
				resolution:200,
				perturbance : 0.04,
			});
		});
	</script>



	

</body>
</html>
