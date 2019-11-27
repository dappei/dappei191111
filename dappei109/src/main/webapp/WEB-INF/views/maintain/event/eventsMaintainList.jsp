<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>活動資料</title>
    <!-- Bootstrap CSS CDN -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.0/css/bootstrap.min.css" >
    <!-- Our Custom CSS -->
    <link rel="stylesheet" href="https://bootstrapious.com/tutorial/sidebar/style.css">
    <!-- Font Awesome JS -->
    <script defer src="https://use.fontawesome.com/releases/v5.0.13/js/solid.js" ></script>
    <script defer src="https://use.fontawesome.com/releases/v5.0.13/js/fontawesome.js" ></script>
<style>
	table {
	  border-collapse: collapse;
	  width: 100%;
	}
	th, td {
	  text-align: center;
	  padding: 8px;
	  font-family: 微軟正黑體;
	}
	tr:nth-child(even) {background-color: #f2f2f2;}
	input[type=submit] {
	   background-color: #46a3ff;
	   color: white;
	   font-family: 微軟正黑體;
	   font-size: 14px;
	   padding: 8px 15px;
	   border: none;
	   border-radius: 4px;
	   cursor: pointer;
	}
	input[type=submit]:hover {
	   background-color: #84c1ff;
	}
	input[type=button] {
	   background-color: #46a3ff;
	   color: white;
	   font-family: 微軟正黑體;
	   font-size: 20px;
	   width:100%;
	   margin:10px 0px;
	   padding: 12px 20px;
	   border: none;
	   border-radius: 4px;
	   cursor: pointer;
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
				<li class="active"><a href="members" style="background-color:pink ;color:#696969;">會員</a></li>
				<li><a href="#homeSubmenu" data-toggle="collapse"
					aria-expanded="false" class="dropdown-toggle" >活動</a>
					<ul class="collapse list-unstyled" id="homeSubmenu">
						<li><a href="eventsAdd" style="background-color:white">新增活動</a></li>
						<li><a href="eventsMaintain" style="background-color:white">上架活動</a></li>
						<li><a href="eventsPastevents" style="background-color:white">下架活動</a></li>
					</ul></li>
				<li style="background-color:pink"><a href="#pageSubmenu" data-toggle="collapse"
					aria-expanded="false" class="dropdown-toggle" >購物</a>
					<ul class="collapse list-unstyled" id="pageSubmenu">
						<li><a href="storesAdd" style="background-color:white">新增產品</a></li>
						<li><a href="storesMaintain" style="background-color:white">上架產品</a></li>
						<li><a href="storesPastproducts" style="background-color:white">下架產品</a></li>
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
    <!-- Page Content  -->
        <div id="content">
           <nav>                                                    <!-- class="navbar transparent navbar-expand-lg navbar-light bg-light  " -->
			<div class="container-fluid" >

					<button type="button" id="sidebarCollapse" class="btn btn-warning">
						<i class="fas fa-align-left" ></i> <span>Toggle Sidebar</span>
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
			<br><br>
				
            <h2>活動資料</h2>
            <table border="1" >
			<tr><th>活動圖片<th>活動編號<th>活動名稱<th>活動開始時間<th>活動結束時間<th>數量<th>更新<th>結束
			<c:forEach items="${events}" var="event"  >
				<tr><td><img src="<c:url value='/getEventPicture/${event.eventId}'/>" width="150" height="100"/>
				<td>${event.eventId}
				<td>${event.eventName}
				<td>${fn:substring(event.eventStartTime,0,16)}
				<td>${fn:substring(event.eventEndTime,0,16)}
				<td>${event.maxPeople}
				<td><a class="btn btn-secondary my-2 my-sm-0" href="eventUpdate/${event.eventId}">修改</a>
				<td><a class="btn btn-secondary my-2 my-sm-0" href="eventClose/${event.eventId}">結束</a>
			</c:forEach>
				<tr>
			</table>		
		<br><!-- 活動資料結束 -->
            

		<div class="container">
            <ul class="pagination list-inline mx-auto justify-content-center">
                <li class="page-item"><a class="page-link" href="<spring:url value='/eventsMaintain?pageNo=1'/>">首頁</a></li>
                <li class="page-item"><c:if test="${pageNo > 1}"><a class="page-link" href="<spring:url value='/eventsMaintain?pageNo=${pageNo-1}'/>">&laquo;</a></c:if></li>
						
                <c:forEach begin="1" end="${totalPages}" varStatus="loop">
                    <c:set var="active" value="${loop.index==pageNo?'active':''}"/>
                    <li class="page-item ${active}">
                    	<a class="page-link" href="<spring:url value="/eventsMaintain?pageNo=${loop.index}"/>">${loop.index}</a>
                    </li>
                </c:forEach>
                <li class="page-item">
                    <c:if test="${pageNo<totalPages}"><a class="page-link" href="<spring:url value="/eventsMaintain?pageNo=${pageNo+1}"/>">&raquo;</a></c:if>
                </li>
                <li class="page-item"><a class="page-link" href="<spring:url value="/eventsMaintain?pageNo=${totalPages}"/>">末頁</a></li>
            </ul>
     	</div><!--分頁結束 -->
    	</div>
   	</div>
	<br><br>
	<!-- jQuery CDN - Slim version (=without AJAX) -->
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" ></script>
    <!-- Popper.JS -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.0/umd/popper.min.js" ></script>
    <!-- Bootstrap JS -->
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.0/js/bootstrap.min.js" ></script>

    <script type="text/javascript">
        $(document).ready(function () {
            $('#sidebarCollapse').on('click', function () {
                $('#sidebar').toggleClass('active');
            });
        });
    </script>
</body>
</html>