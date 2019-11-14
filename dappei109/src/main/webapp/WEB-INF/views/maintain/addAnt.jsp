<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<html>
<head>

<meta charset="UTF-8">
<link rel="stylesheet"
	href="//netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.min.css">
<style type="text/css">
fieldset {
	border: 1px solid rgb(255, 232, 57);
	width: 400px;
	margin: auto;
}
</style>
<title>addAnnouncements</title>
</head>
<body>

    <jsp:include page="/WEB-INF/views/header.jsp" /> 
    
    <br><br><br><br><br>
    
	<section>
		<div class="container">
			<h1 style="text-align: center">新增公告資料</h1>
		</div>
	</section>
	<hr
		style="height: 1px; border: none; color: #333; background-color: #333;">
	<section class="container">
		<!--       三個地方要完全一樣 -->

		<form:form method='POST' modelAttribute="AntBean"
			enctype='multipart/form-data' class='form-horizontal'>
			<fieldset>
<br>
				<div class="form-group">
					<label class='control-label col-lg-2 col-lg-2' for="category">
						類別
						 </label>
					<div class='col-lg-10'>
						<form:select path="category">
							<form:option value="-1" >
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
						<input id="btnAdd" type='submit' class='btn btn-primary'
							value="送出" /> <input id="btnAdd" type='reset'
							class='btn btn-primary' value="清除" />
					</div>
				</div>
			</fieldset>
		</form:form>
	</section>
	
	
	<jsp:include page="/WEB-INF/views/footer.jsp" />
	
</body>
</html>
