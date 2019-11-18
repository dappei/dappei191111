<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="java.util.ArrayList, com.web.announcement.model.AntBean"
    %>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ page session="false" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel='stylesheet' href='${pageContext.request.contextPath}/css/styles.css' type="text/css" />

<style>



.jumbotron{
background-image: url('http://getwallpapers.com/wallpaper/full/2/1/4/1519214-orange-geometric-wallpaper-2560x1600-for-mobile.jpg');
background-size: cover;
background-repeat: no-repeat;
height: 100%;
font-family: 'Numans', sans-serif;
}
</style>

</head>
<body style=""background-color:#000000"; opacity: 0.2;">


        <jsp:include page="/WEB-INF/views/header.jsp" />
    


<div class="container">
		<div style="text-align: center" class="jumbotron">
			<h1>最新消息</h1>
	   </div>
	 <c:forEach var="ant" items="${antList}">

			<!--  <tr height="52" bgcolor="lightgrey" align="center">
		<td><img width='60' height='72' src="<c:url value='/getAntPicture/${ant.antid}'/>"></td>
			<td width="150"><p align="left" />${ant.anttime}</td>
			<td width="550"><p align="left" /><a href='antsingle?antid=${ant.antid}'>${ant.anttitle}</a></td>
			
			-->



<div class="border-bottom">
			<div class="row" >
				<div class="col-md-3" >

					<img style="width:400px; height:155px" class="img-thumbnail"
						src="<c:url value='/getAntPicture/${ant.antid}'/>">
				</div>

				<div class="col-md-9" style=""background-color:#000000"; opacity: 0.2;">
					    <i class="border" style="padding:4px ; background-color:	#77DDFF; width='35px'">最新消息</i>
						<a href='antsingle?antid=${ant.antid}'><h2>${ant.anttitle}</h2></a>
						<div>
						  ${ant.anttime}
						</div>
						<div>${ant.antcontent}</div>
						<br>
						
					
				</div>

				<div class="newslist-item__mdate-w">
					<div class="newslist-item__mdate">
						<i class="newslist-item__mdate-icon"></i>
					</div>
				</div>
			</div>
			<div>
							&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
							&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
							&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
							&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
							&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
							&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
							&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
							&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
							&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
							&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
							&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
							&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
							&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
							&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
							&nbsp;&nbsp;&nbsp;&nbsp;
							<span><img src="https://carlisletheacarlisletheatre.org/images/speaker-png-icon-3.png" width="40" height="40"></span>
							<span class="border border-warning" style="padding:3px ; background-color:#AAAAAA">${ant.category}</span>
						</div>
	<br>
</div>
	<br>
			<br>
			
		</c:forEach>
	</div>   
	   
    <!--  </div>
    <table border="1" style="margin: 0px auto;">
    	<tr height="52" bgcolor="darkgrey" align="center">
    	<th width="150"><p align="left" />圖片<BR></td>
			<th width="150"><p align="left" />公布時間<BR></td>
			<th width="550"><p align="left" />公告標題<BR></td>
			
		</tr>
    <c:forEach var="ant" items="${antList}">
	
		<tr height="52" bgcolor="lightgrey" align="center">
		<td><img width='60' height='72' src="<c:url value='/getAntPicture/${ant.antid}'/>"></td>
			<td width="150"><p align="left" />${ant.anttime}</td>
			<td width="550"><p align="left" /><a href='antsingle?antid=${ant.antid}'>${ant.anttitle}</a></td>
			
			
			  <td>
			<div class="form-group">
					<div class='col-lg-offset-2 col-lg-10'>
						<input id='/ant/remove' type='button' class='btn btn-primary'
							value="刪除" />
					</div>
				</div> 
			</td> 
		</tr>
		  </c:forEach>
	</table>   -->
	
		<jsp:include page="/WEB-INF/views/footer.jsp" />
	
	
</body>
</html>