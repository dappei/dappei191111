<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<html>
<head>
<meta charset="UTF-8">

<title>新增活動</title>
<!-- Bootstrap CSS CDN -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
<!-- Our Custom CSS -->
<link rel="stylesheet" href="https://bootstrapious.com/tutorial/sidebar/style.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
</head>
<body>
	
	<jsp:include page="/WEB-INF/views/header.jsp" />	
	<br><br><br>
	
	    <!-- Sidebar  -->
        <nav id="sidebar">
            <div class="sidebar-header">
                <h3>Bootstrap Sidebar</h3>
            </div>

            <ul class="list-unstyled components">
                <p>Dummy Heading</p>
                <li class="active">
                    <a href="#" >會員</a>
                    
                </li>
                <li>
                    <a href="#homeSubmenu" data-toggle="collapse" aria-expanded="false" class="dropdown-toggle">活動</a>
                    <ul class="collapse list-unstyled" id="homeSubmenu">
                        <li>
                            <a href="events/add">新增活動</a>
                        </li>
                        <li>
                            <a href="events/maintain">上架活動</a>
                        </li>
                        <li>
                            <a href="events/pastevents">下架活動</a>
                        </li>
                    </ul>
                </li>
                <li>
                    <a href="#pageSubmenu" data-toggle="collapse" aria-expanded="false" class="dropdown-toggle">購物</a>
                    <ul class="collapse list-unstyled" id="pageSubmenu">
                        <li>
                            <a href="#">新增產品</a>
                        </li>
                        <li>
                            <a href="#">上架產品</a>
                        </li>
                        <li>
                            <a href="#">下架產品</a>
                        </li>
                    </ul>
                </li>
                <li>
                    <a href="#">部落格</a>
                </li>
                <li>
                    <a href="#">公告</a>
                </li>
                <li>
                    <a href="#">訂單</a>
                </li>
            </ul>

            <ul class="list-unstyled CTAs">
                <li>
                    <a href="https://bootstrapious.com/tutorial/files/sidebar.zip" class="download">Download source</a>
                </li>
                <li>
                    <a href="https://bootstrapious.com/p/bootstrap-sidebar" class="article">Back to article</a>
                </li>
            </ul>
        </nav>
	
	
新增/維護活動資料

		<form:form method='POST' modelAttribute="eventBean"  enctype="multipart/form-data">		
				<form:hidden  path="eventId"  />
			
				<div class="form-group">
					<label class="control-label col-lg-2 col-lg-2" for='eventName'>活動名稱 </label>
					<div class="col-lg-10">
						 <form:input  path="eventName"  />
					</div>
				</div>

				<div class="form-group">
					<label class="control-label col-lg-2 col-lg-2"  for='eventStartTime'>活動開始時間 </label>
					<div class="col-lg-10">
						<form:input  path="eventStartTime"  />
					</div>
				</div>
				
				<div class="form-group">
					<label class="control-label col-lg-2 col-lg-2"  for='eventEndTime'>活動結束時間 </label>
					<div class="col-lg-10">
						<form:input  path="eventEndTime"  />
					</div>
				</div>
				
				<div class="form-group">
					<label class="control-label col-lg-2 col-lg-2"  for='location'>活動地點 </label>
					<div class="col-lg-10">
						<form:input  path="location"  />
					</div>
				</div>
				
				<div class="form-group">
					<label class="control-label col-lg-2 col-lg-2"  for='maxPeople'>活動人數上限 </label>
					<div class="col-lg-10">
						<form:input  path="maxPeople"  />
					</div>
				</div>
				
				<div class="form-group">
					<label class="control-label col-lg-2 col-lg-2"  for='price'>價錢 </label>
					<div class="col-lg-10">
						<form:input  path="price"  />
					</div>
				</div>
				
				
				<div class="form-group">
					<label class='control-label col-lg-2 col-lg-2' for="eventImage">活動圖片</label>
					<div class='col-lg-10'>
						<form:input id="eventImage" path="eventImage" type='file' class='form:input-large' /> 
					</div>
				</div>
						
				<div class="form-group">
					<div class="col-lg-10">
						<form:hidden path="exist" value="1"/>
					</div>
				</div>
				
				<div class="form-group">
					<div class='col-lg-offset-2 col-lg-10'>
						<input id="btnAdd" type='submit' class='btn btn-primary' value="送出" />
					</div>
				</div>
				
		</form:form>


	<jsp:include page="/WEB-INF/views/footer.jsp" />
</body>
</html>
