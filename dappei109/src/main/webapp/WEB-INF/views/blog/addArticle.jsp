<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>新增部落格文章</title>
<style>
#ed{
	 background-image:url(https://shoplineimg.com/5d57c9d2f7124400016c8be8/5d8ac4c91c1435002c864cd2/3200x.webp?source_format=jpg);
	 background-repeat:no-repeat;
	 background-size:cover;
	 width:100%;
	 height:100%;
 opacity: 0.5; 
}
</style>
</head>
<body>

	<!-- header區塊 -->
<jsp:include page="/WEB-INF/views/header.jsp" />

   <div><br></div>
   	<div id = "ed" >
	<section>

		<div class="container">
		
			<h3 style="text-align: center">新增文章分享</h3>
		</div>
	</section>
<br>
	<section class="container">
		<!--       三個地方要完全一樣 -->
		<form method='POST' action="addArticle" class='form-horizontal' enctype="multipart/form-data">

			<fieldset>
				<div class="form-group">
					<label class="control-label col-lg-2 col-lg-2" for='title'>
						標題 :</label>
					<div class="col-lg-10">
						<input type='text' name="title" class='input-large' />
					</div>
				</div>

				<div class="form-group">
					<label class='control-label col-lg-2 col-lg-2' for="companyId">
						文章類型 :</label>
					<div class='col-lg-10'>
						<select name="categoryId">
							<option value="-1" label="請挑選:" />
							<c:forEach var="category" items="${categoryList}">
								<option value="${category.categoryId}">${category.categoryName}</option>
							</c:forEach>
						</select>
					</div>
				</div>

				<div class="form-group">
					<label class="control-label col-lg-2 col-lg-2" for='author'>
						暱稱 :</label>
					<div class="col-lg-10">
						<input name="author" type='text' class='input-large' />
					</div>
				</div>
				<div class="form-group">
					<label class="control-label col-lg-2 col-lg-2" for='blogContent'>
						內容 :</label>
					<div class="col-lg-10">
						<textarea id="articlecontent" name="articlecontent" class='input-large'></textarea>
					</div>
				</div>
				<div class="form-group">
					<label class='control-label col-lg-2 col-lg-2' for="productImage">
						上傳圖檔
					</label>
					<div class='col-lg-10'>
						<input name="coverImage" type='file'
							class='input-large' />
					</div>
				</div>

				<div class="form-group">
					<div class='col-lg-offset-2 col-lg-10'>
						<input id="btnAdd" type='submit' class='btn btn-danger'
							value="送出" />
             			<i class="glyphicon-hand-left glyphicon"></i>
             			<a href="<spring:url value='/blogOderedRec' />" class='btn btn-danger'>返回</a>
					</div>
				</div>
			</fieldset>
		</form>
	</section>
</div>
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
