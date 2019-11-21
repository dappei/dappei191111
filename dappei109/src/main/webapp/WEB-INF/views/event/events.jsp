<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"  %>

<!doctype html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<title>我要找活動</title>

<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
<style>
*{font-family: 微軟正黑體}
</style>
</head>
<body>
	
	<jsp:include page="/WEB-INF/views/header.jsp" />	
	<br><br><br>
	
	<div class="container">
		<div id="demo" class="carousel slide" data-ride="carousel">
			<!-- Indicators -->
			<ul class="carousel-indicators">
				<li data-target="#demo" data-slide-to="0" class="active"></li>
				<li data-target="#demo" data-slide-to="1"></li>
				<li data-target="#demo" data-slide-to="2"></li>
			</ul>
			<!-- The slideshow -->
			<div class="carousel-inner">
				<div class="carousel-item active">
					<img src="${pageContext.request.contextPath}/image/event005.jpg" alt="Los Angeles" width="1100" height="500">
				</div>
				<div class="carousel-item">
					<img src="${pageContext.request.contextPath}/image/event007.jpg" alt="Chicago" width="1100" height="500">
				</div>
				<div class="carousel-item">
					<img src="${pageContext.request.contextPath}/image/event014.jpg" alt="New York" width="1100" height="500">
				</div>
			</div>
			<!-- Left and right controls -->
			<a class="carousel-control-prev" href="#demo" data-slide="prev"> <span
				class="carousel-control-prev-icon"></span>
			</a> <a class="carousel-control-next" href="#demo" data-slide="next">
				<span class="carousel-control-next-icon"></span>
			</a>
		</div>
	</div><!-- 輪播圖結束 -->
	<br><br>
	<!-- 活動內容 -->
	<div class="container">
	  <div class="row">
		<c:forEach var='event' items='${events}'>
		 <div class="col-md-4">
	      <div class="card mb-4 shadow-sm">
	       <img class="bd-placeholder-img card-img-top" width='100%' height='225' 
	         src="<c:url value='/getEventPicture/${event.eventId}'/>"/>	           
	            <div class="card-body">
	              <p><b style='font-size: 16px;'>${event.eventName}</b></p>
					<p><img src="${pageContext.request.contextPath}/image/clock.png"width="20" height="20">  ${fn:substring(event.eventStartTime,0,16)}</p>           
	                  <a href="<spring:url value='/event?id=${event.eventId}'/>" class="btn btn-primary float-right">熱銷中</a>	              
	          	</div>
	      </div>
	     </div>
	    </c:forEach>
	     	<div align="center">
               <ul class="pagination" id="paginator"></ul>
            </div>
	  </div><!-- 活動結束 -->
	       
	  <!-- 動態分頁1 -->
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
                    <c:if test="${pageNo<totalPages}"><a class="page-link" href="<spring:url value="/events?pageNo=${pageNo+1}"/>">&raquo;</a></c:if>
                </li>
                <li class="page-item"><a class="page-link" href="<spring:url value="/events?pageNo=${totalPages}"/>">末頁</a></li>
            </ul>
     	</div><!--分頁結束 -->
     		 <!--動態分頁2 -->
<!--     	 <div class="row justify-content-center"> -->
<!--         <div> -->
<!--             <nav> -->
<!--                 <ul class="pagination"> -->
<%--                     <li class="page-item ${pageNo==1?'disabled':''}"><a class="page-link" --%>
<%--                                            href="<spring:url value='/events?pageNo=${pageNo-1}'/>">上一页</a> --%>
<!--                     </li> -->
<%--                     <c:if test="${pageNo!=1}"> --%>
<!--                         <li class="page-item"> -->
<%--                             <a class="page-link" href="<spring:url value="/events?pageNo="/>">1</a> --%>
<!--                         </li> -->
<%--                     </c:if> --%>
<%--                     <c:if test="${pageNo>2}"> --%>
<!--                         <li class="page-item disabled"> -->
<!--                             <a class="page-link">...</a> -->
<!--                         </li> -->
<%--                     </c:if> --%>
<!--                     <li class="page-item active"> -->
<%--                         <a class="page-link" href="<spring:url value="/events?pageNo=${pageNo}"/>">${pageNo}</a> --%>
<!--                     </li> -->
<%--                     <c:if test="${totalPages-pageNo>1}"> --%>
<!--                         <li class="page-item disabled"> -->
<!--                             <a class="page-link">...</a> -->
<!--                         </li> -->
<%--                     </c:if> --%>
<%--                     <c:if test="${pageNo!=totalPages}"> --%>
<!--                         <li class="page-item"> -->
<%--                             <a class="page-link" href="<spring:url value="/events?pageNo=${totalPages}"/>">${totalPages}</a> --%>
<!--                         </li> -->
<%--                     </c:if> --%>

<%--                     <li class="page-item ${page==totalPages?'disabled':''}"> --%>
<%--                         <a class="page-link" href="<spring:url value="/events?pageNo=${pageNo+1<totalPages?pageNo+1:totalPages}"/>">下一页</a> --%>
<!--                     </li> -->
<!--                 </ul> -->
<!--             </nav> -->
<!--         </div> -->
<!--     </div> -->
  	
   </div>
   
   <jsp:include page="/WEB-INF/views/footer.jsp" />
   
</body>
</html>
