<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>過去活動資料</title>
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
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
</head>
<body>
	<jsp:include page="/WEB-INF/views/header.jsp" />
	<br><br><br>
	<div class="container" align="center">
		<h2>結束活動資料</h2><br>		
		<table border="1" >
		<tr><th>活動圖片<th>活動編號<th>活動名稱<th>活動開始時間<th>活動結束時間<th>數量<th>更新<th>開啟
		<c:forEach items="${events}" var="event"  >
			<tr><td><img src="<c:url value='/getEventPicture/${event.eventId}'/>" width="150" height="100"/>
			<td>${event.eventId}
			<td>${event.eventName}
			<td>${event.eventStartTime}
			<td>${event.eventEndTime}
			<td>${event.maxPeople}
			<td><a class="btn btn-secondary my-2 my-sm-0" href="update/${event.eventId}">修改</a>
			<td><a class="btn btn-secondary my-2 my-sm-0" href="open/${event.eventId}">開啟</a>
		</c:forEach>
		</table>		
	</div><br>
	<!-- 動態分頁 -->
	  <div class="container">
        <ul class="pagination list-inline mx-auto justify-content-center">
          <li class="page-item"><a class="page-link" href="<spring:url value='/events?pageNo=1'/>">首頁</a></li>
          <li class="page-item"><c:if test="${pageNo > 1}"><a class="page-link" href="<spring:url value='/events?pageNo=${pageNo-1}'/>">&laquo;</a></c:if></li>

            <c:forEach begin="1" end="${totalPages}" varStatus="loop">
              <c:set var="active" value="${loop.index==pageNo?'active':''}"/>
                <li class="page-item ${active}">
                	<a class="page-link" href="<spring:url value="/events?pageNo=${loop.index}"/>">${loop.index}</a>
                </li>
              </c:forEach>
           <li class="page-item">
            <a class="page-link" href="<spring:url value="/events?pageNo=${pageNo+1<totalPages?pageNo+1:totalPages}"/>">&raquo;</a>
           </li>
           <li class="page-item"><a class="page-link" href="<spring:url value="/events?pageNo=${totalPages}"/>">末頁</a></li>
          </ul>
    	</div><!-- 分頁結束 -->
	<br><br>
	<jsp:include page="/WEB-INF/views/footer.jsp" />
</body>
</html>