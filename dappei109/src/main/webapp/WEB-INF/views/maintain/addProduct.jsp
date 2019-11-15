<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<html>
<head>
<meta charset="UTF-8">

<title>新增產品</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
</head>
<body>
	
	<jsp:include page="/WEB-INF/views/header.jsp" />	
	<br><br><br>
	
	<fieldset>
		<legend style="text-align: center">新增/維護產品資料</legend>
		<form:form method='POST' modelAttribute="storeadd"  enctype="multipart/form-data">
			
				<div class="form-group">
					<label class="control-label col-lg-2 col-lg-2" for='productname'>產品名稱 </label>
					<div class="col-lg-10">
						 <form:input id="productname" path="productname" type='text' class='form:input-large' />
					</div>
				</div>

				<div class="form-group">
					<label class="control-label col-lg-2 col-lg-2"  for='color'>顏色 </label>
					<div class="col-lg-10">
						<form:input id="color" path="color" type='text' class='form:input-large' />
					</div>
				</div>
				
				<div class="form-group">
					<label class="control-label col-lg-2 col-lg-2"  for='size'>尺寸 </label>
					<div class="col-lg-10">
						<form:input id="size" path="size" type='text' class='form:input-large' />
					</div>
				</div>
				
				<div class="form-group">
					<label class="control-label col-lg-2 col-lg-2"  for='price'>價格 </label>
					<div class="col-lg-10">
						<form:input id="price" path="price" type='text' class='form:input-large' />
					</div>
				</div>
				
				<div class="form-group">
					<label class="control-label col-lg-2 col-lg-2"  for='discount'>折扣 </label>
					<div class="col-lg-10">
						<form:input id="discount" path="discount" type='text' class='form:input-large' />
					</div>
				</div>
				
				<div class="form-group">
					<label class="control-label col-lg-2 col-lg-2"  for='productNo'>產品號 </label>
					<div class="col-lg-10">
						<form:input id="productNo" path="productNo" type='text' class='form:input-large' />
					</div>
				</div>
				
				<div class="form-group">
					<label class='control-label col-lg-2 col-lg-2' for="companyId">
						類型</label>
					<div class='col-lg-10'>
						<form:select path="companyId">
							<form:option value="-1" label="請挑選" />
							<form:options items="${companyList}" />
						</form:select>
					</div>
				</div>
				
				<div class="form-group">
					<label class="control-label col-lg-2 col-lg-2"  for='stock'>庫存 </label>
					<div class="col-lg-10">
						<form:input id="stock" path="stock" type='text' class='form:input-large' />
					</div>
				</div>
				
				<div class="form-group">
					<label class='control-label col-lg-2 col-lg-2' for="productFileImage">產品圖片</label>
					<div class='col-lg-10'>
						<form:input id="productFileImage" path="productFileImage" type='file' class='form:input-large' /> 
					</div>
				</div>
						
				<div class="form-group">
					<div class="col-lg-10">
						<form:hidden path="shelf" value="1"/>
					</div>
				</div>
				
				<div class="form-group">
					<div class='col-lg-offset-2 col-lg-10'>
						<input id="btnAdd" type='submit' class='btn btn-primary' value="送出" />
					</div>
				</div>
				
		</form:form>

	</fieldset>
	<jsp:include page="/WEB-INF/views/footer.jsp" />
</body>
</html>
