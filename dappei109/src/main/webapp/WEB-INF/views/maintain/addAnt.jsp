<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<html>
<head>
<meta charset="UTF-8">
<title>新增公告</title>
<link rel="stylesheet"
	href="//netdna.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>

<style >

@import "https://use.fontawesome.com/releases/v5.5.0/css/all.css";
html,body{
background-image: url('http://getwallpapers.com/wallpaper/full/2/1/4/1519214-orange-geometric-wallpaper-2560x1600-for-mobile.jpg');
background-size: cover;
background-repeat: no-repeat;
height: 100%;
font-family: 'Numans', sans-serif;
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

	<fieldset>
		<legend style="text-align: center">新增消息</legend>
		<form:form method='POST' modelAttribute="AntBean"
			enctype='multipart/form-data'>

			<div class="form-group">
				<label class='control-label col-lg-2 col-lg-2' for="category">
					類別 </label>
				<div class='col-lg-10'>
					<form:select path="category">
						<form:option value="-1">
							請選擇
							</form:option>
						<form:options items='${categoryList}' />
					</form:select>
				</div>
			</div>
			<div class="form-group">
				<label class="control-label col-lg-2 col-lg-2" for='anttitle'>
					標題 </label>
				<div class="col-lg-10">
					<form:input id="anttitle" path="anttitle" type='text'
						class='form:input-large' />
				</div>
			</div>

			<div class="form-group">
				<label class="control-label col-lg-2 col-lg-2" for='antcontent'>
					內容</label>
				<div class="col-lg-10">
					<form:input id="antcontent" path="antcontent" type='text'
						class='form:input-large' required="required" />
				</div>
			</div>
			<div class="form-group">
				<label class="control-label col-lg-2 col-lg-2" for='productImage'>
					圖片</label>
				<div class="col-lg-10">
					<form:input id="productImage" path="productImage" type='file'
						class='form:input-large' />
				</div>
			</div>
			<div class="form-group">
				<div class='col-lg-offset-2 col-lg-10'>
					<input id="btnAdd" type='submit' class='btn btn-primary' value="送出" />
					
					<input id="btnAdd" type='reset' class='btn btn-primary' value="清除" />
					<img src="${pageContext.request.contextPath}/antimage/ajax-loader.gif">
				</div>
			</div>

		</form:form>
	</fieldset>
	
		<br><br><br><br><br><br>
	

	<jsp:include page="/WEB-INF/views/footer.jsp" />

</body>
</html>
