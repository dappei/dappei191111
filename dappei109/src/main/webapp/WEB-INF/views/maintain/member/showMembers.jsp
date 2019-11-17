<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix='c' uri='http://java.sun.com/jsp/jstl/core' %>
<%@ taglib prefix='fmt' uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<link rel='stylesheet' href='${pageContext.request.contextPath}/css/style.css' />
<meta charset="UTF-8">
<title>會員資料</title>
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
<p>
<hr>
<div class='center' >
	<c:if test='${empty allMembers}'>
		查無會員資料<br>
	</c:if>
	<c:if test='${not empty allMembers}'>
		<div class="container" align="center">
		<h2>會員資料</h2><br>
		<table border="1" >
		<tr><td>會員圖片<td>會員編號<td>會員帳號<td>會員密碼<td>會員名稱<td>權限<td>註冊時間<td>JSON格式<td>XML格式
		<c:forEach items="${allMembers}" var="member"  >
			<tr>
			<td><img width='50' height='50'	
				src="<c:url value='memberPhoto/${member.memberId}'/>"/>
			<td>${member.registerTime}
			<td>${member.memberId}
			<td>${member.email}
			<td>${member.password}
			<td>${member.username}
			<td>${member.status}
			<td>${member.registerTime}
			<td width='90'><a href='members/${member.memberId}.json'>
					<img width='36' height='36' 
						src='${pageContext.request.contextPath}/images/JSON.jpg' >
					</a>
				</td>
				<td width='90'><a href='members/${member.memberId}.xml'>
					<img width='36' height='36' 
						src='${pageContext.request.contextPath}/images/XML.jpg' >
					</a>
				</td></tr>
		</c:forEach>
		</table>		
	</div><br>
	</c:if>
<p/>
</div>
<hr>

</body>
</html>