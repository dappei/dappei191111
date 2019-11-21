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

.login-box {
	height: 450px;
	width: 450px;
	position: absolute;
	top: 50%;
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
</style>

</head>
<body>

	<jsp:include page="/WEB-INF/views/header.jsp" />
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>


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
						placeholder="Title" readonly="true" />
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
				<div>
					<form:input id="category" path="category" type='text'
						 readonly="true" />
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







<br>
	<br>
	<br>
	<br>

<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>

<br>
	<br>
	<br>
	<br>


	<jsp:include page="/WEB-INF/views/footer.jsp" />

</body>
</html>
