<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"
	import="java.util.ArrayList, com.web.announcement.model.AntBean"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ page session="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel='stylesheet'
	href='${pageContext.request.contextPath}/css/styles.css'
	type="text/css" />
</head>
<body>
    
    <jsp:include page="/WEB-INF/views/header.jsp" />

	<div style="text-align: center" class="jumbotron">
		<h1>${title}</h1>
		<h3>
			<a href="<c:url value='/ant/add'/>">新增公告</a><br>
		</h3>
		<h3>
			<a href="<c:url value='/queryAntByCategory'/>">分類查詢</a><br>
		</h3>
		
	<form method="get" action='ants/${category}'>
							<select name="category">
							<option value="1">活動</option>
							<option value="2">商城</option>
							<option value="3">會員</option>
							<option value="4">系統</option>
							<option value="5">部落格</option>
							</select>
							<input type="submit" value="查詢"  />
					</form>
	</div>
	<table border="1" style="margin: 0px auto;">
		<tr height="52" bgcolor="darkgrey" align="center">
		<th width="150"><p align="left" />圖片<BR>			
			<th width="150"><p align="left" />公布時間<BR>			
			<th width="150"><p align="left" />公告類別<BR>			
			<th width="150"><p align="left" />公布標題<BR>			
			<th width="550"><p align="left" />公告內容<BR>		
			<th width="75"><p align="center" />修改<BR>			
			<th width="75"><p align="center" />刪除<BR>
			
		</tr>
		<c:forEach var="ant" items="${antList}">

			<tr height="52" bgcolor="lightgrey" align="center">
		
			<td><img width='60' height='72' src="<c:url value='/getAntPicture/${ant.antid}'/>"></td>
			
	  		     
				<td width="150"><p align="left" />${ant.anttime}</td>
				<td width="150"><p align="left" />${ant.category}</td>
				<td width="150"><p align="left" />${ant.anttitle}</td>
				<td width="550"><p align="left" />${ant.antcontent}</td>
				<td><a href="<c:url value='/update/${ant.antid}'/>">Edit</a></td>				
				<td><a href="deleteAnt?antid=${ant.antid}"
					onclick="if (!(confirm('Are you sure you want to delete this announcement?')))return false">remove</a></td>

				
			</tr>
		</c:forEach>
	</table>
	
	<jsp:include page="/WEB-INF/views/footer.jsp" />
	
</body>
</html>