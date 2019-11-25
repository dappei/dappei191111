<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix='c' uri='http://java.sun.com/jsp/jstl/core'%>
<%@ taglib prefix='fn' uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix='fmt' uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>會員資料</title>
<!-- Bootstrap CSS CDN -->
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.0/css/bootstrap.min.css">
<!-- Our Custom CSS -->
<link rel="stylesheet"
	href="https://bootstrapious.com/tutorial/sidebar/style.css">
<!-- Font Awesome JS -->
<script defer
	src="https://use.fontawesome.com/releases/v5.0.13/js/solid.js"></script>
<script defer
	src="https://use.fontawesome.com/releases/v5.0.13/js/fontawesome.js"></script>

<style>
* {
	font-family: 微軟正黑體
}

table {
	border-collapse: collapse;
	width: 100%;
}

th, td {
	text-align: center;
	padding: 12px;
	font-family: 微軟正黑體;
}

tr:nth-child(even) {
	background-color: #f2f2f2;
}

#content {
	width: 100%;
	align-items: center;
	background-size: cover;
	background-repeat: no-repeat;
	background-position: center;
}

.sidebar {
	background: white;
}

#aaa {
	font-family: "Montserrat", sans-serif;
	font-size: 50px;
	text-transform: uppercase;
	font-weight: 800;
	letter-spacing: 20px;
}

.wrapper {
	font-family: 微軟正黑體;
	font-weight: 700;
}
</style>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>

</head>
<body>
	<div class="wrapper">
		<!-- Sidebar  -->
		<nav id="sidebar" style="background-color: pink"
			class="border border-light">
			<div class="sidebar-header" style="background-color: lightpink">
				<h3>
					<a href="${pageContext.request.contextPath}/back-end"
						style="color: #696969;">後台系統</a>
				</h3>

			</div>

			<ul class="list-unstyled components" style="color: #696969;">
				<li class="active"><a href="members"
					style="background-color: pink; color: #696969;">會員</a></li>
				<li><a href="#homeSubmenu" data-toggle="collapse"
					aria-expanded="false" class="dropdown-toggle">活動</a>
					<ul class="collapse list-unstyled" id="homeSubmenu">
						<li><a href="eventsAdd" style="background-color: white">新增活動</a></li>
						<li><a href="eventsMaintain" style="background-color: white">上架活動</a></li>
						<li><a href="eventsPastevents"
							style="background-color: white">下架活動</a></li>
					</ul></li>
				<li style="background-color: pink"><a href="#pageSubmenu"
					data-toggle="collapse" aria-expanded="false"
					class="dropdown-toggle">購物</a>
					<ul class="collapse list-unstyled" id="pageSubmenu">
						<li><a href="storesAdd" style="background-color: white">新增產品</a></li>
						<li><a href="storesMaintain" style="background-color: white">上架產品</a></li>
						<li><a href="storesPastproducts"
							style="background-color: white">下架產品</a></li>
					</ul></li>
				<li><a href="#">部落格</a></li>
				<li><a href="ant">消息</a></li>
				<li><a href="#pageSubmenu2" data-toggle="collapse"
					aria-expanded="false" class="dropdown-toggle">訂單</a>
					<ul class="collapse list-unstyled" id="pageSubmenu2">
						<li><a href="#" style="background-color: white">活動訂單</a></li>
						<li><a href="#" style="background-color: white">產品訂單</a></li>
					</ul></li>

			</ul>



			<ul class="list-unstyled CTAs">
				<li style="background-color: pink"><a
					href="${pageContext.request.contextPath}/" class="download"
					style="color: #696969;">回到首頁</a></li>
			</ul>
		</nav>
		<!-- Page Content  -->
		<div id="content">

			<nav>
				<!-- class="navbar transparent navbar-expand-lg navbar-light bg-light  " -->
				<div class="container-fluid">

					<button type="button" id="sidebarCollapse" class="btn btn-warning">
						<i class="fas fa-align-left"></i> <span>Toggle Sidebar</span>
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
			<div class='center'>
				<c:if test='${empty allMembers}'>
		查無會員資料<br>
				</c:if>
				<c:if test='${not empty allMembers}'>
					<div class="container" align="center">
						<h2>會員資料</h2>
						<br>
						<table border="1">
							<tr>
								<td>會員圖片
								<td>會員編號
								<td>會員帳號
								<td>會員名稱
								<td>權限
								<td>註冊時間
								<td>JSON格式
								<td>XML格式 <c:forEach items="${allMembers}" var="member">
										<tr>
											<td><img width='50' height='50'
												src="<c:url value='memberPhoto/${member.memberId}'/>" />
											<td>${member.memberId}
											<td>${member.email}
											<td>${member.username}
											<td>${member.status}
											<td>${fn:substring(member.registerTime,0,19)}
											<td width='100'><a
												href='members/${member.memberId}.json'> <img width='36'
													height='36'
													src='${pageContext.request.contextPath}/image/JSON.jpg'>
											</a></td>
											<td width='100'><a href='members/${member.memberId}.xml'>
													<img width='36' height='36'
													src='${pageContext.request.contextPath}/image/XML.jpg'>
											</a></td>
										</tr>
									</c:forEach>
						</table>
					</div>
					<br>
				</c:if>
			</div>
		</div>
	</div>
	<!-- jQuery CDN - Slim version (=without AJAX) -->
	<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
		integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
		crossorigin="anonymous"></script>
	<!-- Popper.JS -->
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.0/umd/popper.min.js"
		integrity="sha384-cs/chFZiN24E4KMATLdqdvsezGxaGsi4hLGOzlXwp5UZB1LY//20VyM2taTB4QvJ"
		crossorigin="anonymous"></script>
	<!-- Bootstrap JS -->
	<script
		src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.0/js/bootstrap.min.js"
		integrity="sha384-uefMccjFJAIv6A+rW+L4AHf99KvxDjWSu1z9VI8SKNVmz4sk7buKt/6v9KI65qnm"
		crossorigin="anonymous"></script>

	<script type="text/javascript">
		$(document).ready(function() {
			$('#sidebarCollapse').on('click', function() {
				$('#sidebar').toggleClass('active');
			});
		});
	</script>

	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/jquery.ripples/0.5.3/jquery.ripples.min.js"></script>
	<script>
		$(document).ready(function() {
			$("#content").ripples({
				resolution : 200,
				perturbance : 0.04,
			});
		});
	</script>
</body>
</html>