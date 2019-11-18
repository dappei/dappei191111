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



</head>
<body style="background-color:#888888">


        <jsp:include page="/WEB-INF/views/header.jsp" />
    


<div class="container">
		<div style="text-align: center" class="jumbotron">
			<h1>${title}</h1>
	   </div>
	 <c:forEach var="ant" items="${antList}">

			<!--  <tr height="52" bgcolor="lightgrey" align="center">
		<td><img width='60' height='72' src="<c:url value='/getAntPicture/${ant.antid}'/>"></td>
			<td width="150"><p align="left" />${ant.anttime}</td>
			<td width="550"><p align="left" /><a href='antsingle?antid=${ant.antid}'>${ant.anttitle}</a></td>
			
			-->




			<div class="row">
				<div class="col-md-3" >

					<img style="width:400px; height:155px" class="img-thumbnail"
						src="<c:url value='/getAntPicture/${ant.antid}'/>">
				</div>

				<div class="col-md-9" style="background-color:	#AAAAAA">
					<a href='antsingle?antid=${ant.antid}'>
						<h2>${ant.anttitle}</h2>
						<div>${ant.antcontent}</div>
						<div>
							<i></i> ${ant.anttime}
						</div>
						<div>
							<i></i>標籤
						</div>
					</a>
				</div>

				<div class="newslist-item__mdate-w">
					<div class="newslist-item__mdate">
						<i class="newslist-item__mdate-icon"></i>
					</div>
				</div>
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