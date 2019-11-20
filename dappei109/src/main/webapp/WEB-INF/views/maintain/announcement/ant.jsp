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
<title>公告管理</title>




<script src="https://code.jquery.com/jquery-1.12.4.min.js"></script>

<script
	src="https://cdn.datatables.net/1.10.20/js/jquery.dataTables.min.js"></script>

<script>
	$(document).ready(function() {
		$('#myTable').DataTable();
	});
</script>

<script>
$(function(){
    var len = 100; // 超過100個字以"..."取代
    $(".content").each(function(i){
        if($(this).text().length>len){
            $(this).attr("title",$(this).text());
            var text=$(this).text().substring(0,len-1)+"...";
            $(this).text(text);
        }
    });
});
</script>


<!--  <link rel='stylesheet'
	href='${pageContext.request.contextPath}/css/styles.css'
	type="text/css" />-->
<link rel="stylesheet"
	href="https://cdn.datatables.net/1.10.20/css/jquery.dataTables.min.css" />
</head>
<body>

	<!--<jsp:include page="/WEB-INF/views/header.jsp" />-->

	<div style="text-align: center" class="jumbotron">
		<h1>公告管理</h1>
		<h3>
			<a href="<c:url value='/ant/add'/>" class="btn btn-secondary my-2 my-sm-0">新增公告</a><br>
		</h3>
	<!--  	<h3>
			<a href="<c:url value='/queryAntByCategory'/>">分類查詢</a><br>
		</h3>   -->

		<!--  	<h3>
			<a href='http://localhost:8080/Dappei/antfont'>查詢前台公告</a><br>
		</h3>
		<br> <input type='button' value='回查詢頁面'
			onclick="javascript:location.href='http://localhost:8080/Dappei/antfont'">  -->
		<!--  <a href='antfont'>回公告查詢</a><br>  -->
		<!-- <form method="get" action='ants'>
			<select name="category">
				<option value="活動">活動</option>
				<option value="商城">商城</option>
				<option value="會員">會員</option>
				<option value="系統">系統</option>
				<option value="部落格">部落格</option>
			</select> <input type="submit" value="查詢" />
		</form>   -->

		<div style="text-align: center">
			<h4>請依照類別來挑選公告：</h4>
			<c:forEach var='category' items='${categoryList}'>
				<a href="<c:url value='/ants/${category}'/>" class="btn btn-outline-secondary">${category}</a>	  	
			</c:forEach>
		</div>
		<br>
		<a href="<c:url value='/ant'/>" class="btn btn-outline-secondary">查看所有公告</a>

	</div>



	<table id="myTable" class="table table-hover table-bordered"   
		style="width: 90%">
		<thead>
			<tr>
				<th>圖片</th>
				<th>公布時間</th>
				<th>公告類別</th>
				<th>公布標題</th>
				<th>公告內容</th>
				<th>修改</th>
				<th>刪除</th>
			</tr>
		</thead>

		<tbody>
			<c:forEach var="ant" items="${antList}">
				<tr>
					<td style="width: 160px"><img
						style="width: 150px; height: 100px"
						src="<c:url value='/getAntPicture/${ant.antid}'/>"></td>
					<td style="width: 100px">${ant.anttime}</td>
					<td style="width: 90px">${ant.category}</td>
					<td style="width: 200px">${ant.anttitle}</td>
					<td class="content">${ant.antcontent}</td>
					<td style="width: 60px"><a
						class="btn btn-secondary my-2 my-sm-0"
						href="<c:url value='/update/${ant.antid}'/>">Edit</a></td>
					<td style="width: 100px"><a
						class="btn btn-secondary my-2 my-sm-0"
						href="<c:url value='/deleteAnt?antid=${ant.antid}'/>"    
						onclick="if (!(confirm('Are you sure you want to delete this announcement?')))return false">remove</a></td>
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
				<th>修改</th>
				<th>刪除</th>
			</tr>
		</tfoot>
	</table>




	<!--<jsp:include page="/WEB-INF/views/footer.jsp" />-->

</body>
</html>