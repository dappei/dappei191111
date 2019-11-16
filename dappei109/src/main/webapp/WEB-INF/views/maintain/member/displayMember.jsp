<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix='form' uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8">
<meta charset="UTF-8">
<title>新增會員資料</title>
</head>
<body>
	<p>&nbsp;</p>
	<hr>
	<div class='center'>
		<table border='1' >
			<tr bgcolor='#ffcc66'>
				<th colspan='2'>會&nbsp;員&nbsp;資&nbsp;料</th>
			</tr>
			<tr bgcolor='#ffcc66'>
				<td width='80'>帳號</td>
				<td class='b'>&nbsp;${member.id}</td>
			</tr>
			
			<tr bgcolor='#ffcc66'>
				<td width='80'>姓名</td>
				<td class='b'>&nbsp;${member.name}</td>
			</tr>
			<tr bgcolor='#ffcc66'>
				<td width='80'>餘額</td>
				<td width='200' class='b'>&nbsp;${member.balance}</td>
			</tr>
			<tr bgcolor='#ffcc66'>
				<td width='80'>生日</td>
				<td width='200' class='b'>&nbsp;${member.birthday}</td>
			</tr>
		</table>
		<p>
		<a href='${pageContext.request.contextPath}/_01/cnvr/members'>回到會員總攬</a>
	</div>
</body>
</html>