<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>修改個人文章</title>
</head>
<body>

	<!-- header區塊 -->
<jsp:include page="/WEB-INF/views/header.jsp" />	
<!-- header區塊 -->
   
<br><br>
	<hr
		style="height: 1px; border: none; color: #333; background-color: #333;">
	<section class="container">

<!-- 從這邊開始Update -->
		<form method='POST' action="updateArtilce" class='form-horizontal' enctype="multipart/form-data">
		
			<input type="hidden" name="articleid" value="${articleBean.articleid }">

			<fieldset>
				<div class="form-group">
					<label class="control-label col-lg-2 col-lg-2" for='title'>
						標題 </label>
					<div class="col-lg-10">
						<input type='text' name="title" class='input-large' value="${articleBean.title }"/>
					</div>
				</div>

				<div class="form-group">
					<label class='control-label col-lg-2 col-lg-2' for="companyId">
						文章類型 </label>
					<div class='col-lg-10'>
<!-- 						<select name="categoryId"> -->
<!-- 							<option value="-1" label="請挑選" /> -->
<%-- 							<c:forEach var="category" items="${categoryList}"> --%>
<%-- 								<option value="${category.categoryId}">${category.categoryName}</option> --%>
<%-- 							</c:forEach> --%>
<!-- 						</select> -->
					
						<select name="categoryId">
							<option value="${articleBean.categoryBean.categoryId}">${articleBean.categoryBean.categoryName}</option>
						</select>
					</div>
				</div>

				<div class="form-group">
					<label class="control-label col-lg-2 col-lg-2" for='author'>
						暱稱 </label>
					<div class="col-lg-10">
						<input name="author" type='text' class='input-large' value="${articleBean.author }" />
					</div>
				</div>
				<div class="form-group">
					<label class="control-label col-lg-2 col-lg-2" for='blogContent'>
						內容 </label>
					<div class="col-lg-10">
						<textarea id="articlecontent" name="articlecontent" class='input-large'>${articleBean.articlecontent }</textarea>
					</div>
				</div>
<!-- 				<div class="form-group"> -->
<!-- 					<label class='control-label col-lg-2 col-lg-2' for="productImage"> -->
<!-- 						上傳圖檔 -->
<!-- 					</label> -->
<!-- 					<div class='col-lg-10'> -->
<!-- 						<input name="coverImage" type='file' -->
<!-- 							class='input-large' /> -->
<!-- 					</div> -->
<!-- 				</div> -->

				<div class="form-group">
					<div class='col-lg-offset-2 col-lg-10'>
						<input id="btnAdd" type='submit' class='btn btn-danger'
							value="送出" />
						<i class="glyphicon-hand-left glyphicon"></i>
             			<a href="<spring:url value='/blog' />" class='btn btn-danger'>返回</a>
					</div>
				
				</div>
			</fieldset>
		</form>
	</section>
<%-- 	<jsp:include page="footer.jsp" /> --%>
	<!-- 絕對路徑 載入外掛程式寫法 -->
	<script src="<c:url value='/js/ckeditor/ckeditor.js'/>"></script> 
	<script>
	CKEDITOR.replace('articlecontent', {
        height: 400,
        filebrowserUploadUrl: '${pageContext.request.contextPath}/blogInsert',
        filebrowserBrowseUrl: '${pageContext.request.contextPath}/blogBrowse'
    });
	</script>
</body>
</html>
