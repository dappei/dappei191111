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



  
<script src="https://code.jquery.com/jquery-1.12.4.min.js"></script>

<script src="https://cdn.datatables.net/1.10.20/js/jquery.dataTables.min.js"></script>
	
<script>
$(document).ready( function () {
    $('#myTable').DataTable();
} );
</script>




<!--  <link rel='stylesheet'
	href='${pageContext.request.contextPath}/css/styles.css'
	type="text/css" />-->
<link rel="stylesheet" href="https://cdn.datatables.net/1.10.20/css/jquery.dataTables.min.css" />
</head>
<body>

	<!--<jsp:include page="/WEB-INF/views/header.jsp" />-->

	<div style="text-align: center" class="jumbotron">
		<h1>${title}</h1>
		<h3>
			<a href="<c:url value='/ant/add'/>">新增公告</a><br>
		</h3>
		<h3>
			<a href="<c:url value='/queryAntByCategory'/>">分類查詢</a><br>
		</h3>

		<!--  	<h3>
			<a href='http://localhost:8080/Dappei/antfont'>查詢前台公告</a><br>
		</h3>
		<br> <input type='button' value='回查詢頁面'
			onclick="javascript:location.href='http://localhost:8080/Dappei/antfont'">  -->
		<!--  <a href='antfont'>回公告查詢</a><br>  -->
		<form method="get" action='ants'>
			<select name="category">
				<option value="活動">活動</option>
				<option value="商城">商城</option>
				<option value="會員">會員</option>
				<option value="系統">系統</option>
				<option value="部落格">部落格</option>
			</select> <input type="submit" value="查詢" />
		</form>
	</div>
	
	
	<table id="myTable" class="table table-striped table-bordered" style="width: 100%" >
		<thead>
			<tr>
				<th>圖片</th>
				<th>公布時間</th>
				<th>公告類別</th>
				<th>公布標題</th>
				<th>公告內容</th>
			</tr>
		</thead>

		<tbody>
			<c:forEach var="ant" items="${antList}">
				<tr>
					<td><a href='antsingle?antid=${ant.antid}'>查看更多</a></td>
					<td>${ant.anttime}</td>
					<td>${ant.category}</td>
					<td>${ant.anttitle}</td>
					<td>${ant.antcontent}</td>
				</tr>
			</c:forEach>
		</tbody>
		<tfoot>
			<tr>
				<th>圖片</th>
				<th>公布時間</th>
				<th>公告類別</th>
				<th>公布標題</th>
				<th>公告內容</th>
			</tr>
		</tfoot>
	</table>


	
	
	<!--<jsp:include page="/WEB-INF/views/footer.jsp" />-->

</body>
</html>