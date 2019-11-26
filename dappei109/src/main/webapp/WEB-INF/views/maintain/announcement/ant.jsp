<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>

<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="IE=edge">

<title>穿搭後台管理</title>


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
h1 {
	color: #000000;
	margin: 40px 0 60px 0;
	font-weight: 300;
}

.our-team-main {
	width: 100%;
	height: auto;
	border-bottom: 5px #323233 solid;
	background: #fff;
	text-align: center;
	border-radius: 10px;
	overflow: hidden;
	position: relative;
	transition: 0.5s;
	margin-bottom: 28px;
}

.our-team-main img {
	border-radius: 50%;
	margin-bottom: 20px;
	width: 90px;
}

.our-team-main h3 {
	font-size: 20px;
	font-weight: 700;
}

.our-team-main p {
	margin-bottom: 0;
}

.team-back {
	width: 100%;
	height: auto;
	position: absolute;
	top: 0;
	left: 0;
	padding: 5px 15px 0 15px;
	text-align: center;
	background: #fff;
}

.team-front {
	width: 100%;
	height: auto;
	position: relative;
	z-index: 10;
	background: #fff;
	padding: 15px;
	bottom: 0px;
	transition: all 0.5s ease;
}

.our-team-main:hover .team-front {
	bottom: -200px;
	transition: all 0.5s ease;
}

.our-team-main:hover {
	border-color: #777;
	transition: 0.5s;
}

#img1 {
	border-radius: 0px;
	width: 65%;
	height: 65%;
}

#img2 {
	border-radius: 0px;
	width: 50%;
	height: 50%;
}

#content {
  width: 100%;
  
  align-items:center;
  background-image: url('http://getwallpapers.com/wallpaper/full/0/3/d/71183.jpg')  ;
  background-size: cover; 
  background-repeat: no-repeat;
  background-position:center;
}


.sidebar {
   background:white;
}

#aaa{
font-family: "Montserrat",sans-serif;
font-size: 50px;
 text-transform: uppercase;
  font-weight: 800;
  letter-spacing: 20px;
 
}

.wrapper{
font-family:微軟正黑體;
font-weight:700;
}
.jumbotron{
height:50px;
margin:0;
padding:0;
}

div.dataTables_wrapper  div.dataTables_filter {
  width: 82%;
  float: none;
  text-align: center;
}

</style>
<link rel="stylesheet"
	href="https://cdn.datatables.net/1.10.20/css/jquery.dataTables.min.css" />


</head>

<body>
	<div class="wrapper">
		<!-- Sidebar  -->
		<nav id="sidebar" style="background-color:pink" class="border border-light">
			<div class="sidebar-header" style="background-color:lightpink" >
				<h3>
					<a href="${pageContext.request.contextPath}/back-end" style="color:	#696969;">後台系統</a>
				</h3>

			</div>

			<ul class="list-unstyled components" style="color:#696969;">
				<li class="active"><a href="members" style="background-color:pink ;color:#696969;">會員</a></li>
				<li><a href="#homeSubmenu" data-toggle="collapse"
					aria-expanded="false" class="dropdown-toggle" >活動</a>
					<ul class="collapse list-unstyled" id="homeSubmenu">
						<li><a href="eventsAdd" style="background-color:white">新增活動</a></li>
						<li><a href="eventsMaintain" style="background-color:white">上架活動</a></li>
						<li><a href="eventsPastevents" style="background-color:white">下架活動</a></li>
					</ul></li>
				<li style="background-color:pink"><a href="#pageSubmenu" data-toggle="collapse"
					aria-expanded="false" class="dropdown-toggle" >購物</a>
					<ul class="collapse list-unstyled" id="pageSubmenu">
						<li><a href="storesAdd" style="background-color:white">新增產品</a></li>
						<li><a href="storesMaintain" style="background-color:white">上架產品</a></li>
						<li><a href="storesPastproducts" style="background-color:white">下架產品</a></li>
					</ul></li>
				<li><a href="#">部落格</a></li>
				<li><a href="#pageSubmenu3" data-toggle="collapse" 
					aria-expanded="false" class="dropdown-toggle">消息</a>
					<ul class="collapse list-unstyled" id="pageSubmenu3" >
						<li><a href="<c:url value='/ant'/>" style="background-color:white">查看所有消息</a></li>
						<li><a href="<c:url value='/ant/add'/>" style="background-color:white">新增消息</a></li>
					</ul></li>
				<li><a href="#pageSubmenu2" data-toggle="collapse" 
					aria-expanded="false" class="dropdown-toggle">訂單</a>
					<ul class="collapse list-unstyled" id="pageSubmenu2" >
						<li><a href="#" style="background-color:white">活動訂單</a></li>
						<li><a href="#" style="background-color:white">產品訂單</a></li>
					</ul></li>
					
			</ul>



			<ul class="list-unstyled CTAs" >
				<li style="background-color:pink"><a href="${pageContext.request.contextPath}/"
					class="download" style="color:#696969;">回到首頁</a></li>
			</ul>
		</nav>

		<!-- Page Content  -->
		<div id="content" >

			<nav>                                                    <!-- class="navbar transparent navbar-expand-lg navbar-light bg-light  " -->
			<div class="container-fluid"  >

					<button type="button" id="sidebarCollapse" class="btn btn-warning">
						<i class="fas fa-align-left" ></i> <span>Toggle Sidebar</span>
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
<br><br>
			<!-- 團隊牆 -->

<div style="text-align: center;background:none;" class="jumbotron">
	<!-- 	<h1>消息管理</h1>   -->
	<!-- 	<h3>
			<a href="<c:url value='/ant/add'/>" class="btn btn-secondary my-2 my-sm-0">新增消息</a><br>
		</h3>   -->
		<div style="text-align: center;" >
		  <h3 style="font-weight:650;">請依照類別來挑選消息：</h3>  	
			<c:forEach var='category' items='${categoryList}'>
				<a href="<c:url value='/ants/${category}'/>" class="btn btn-outline-secondary">${category}</a>	  	
			</c:forEach>
		</div>	
	<!--  	<a href="<c:url value='/ant'/>" class="btn btn-outline-secondary">查看所有消息</a>  -->
	</div>
	<br><br>
	<table id="myTable" class="table table-hover table-bordered"   
		style="width: 90% ; ">
		<thead>
			<tr>
				<th>圖片</th>
				<th>公布時間</th>
				<th>消息類別</th>
				<th>公布標題</th>
				<th>消息內容</th>
				<th style="text-align:center">修改</th>
				<th style="text-align:center">刪除</th>
			</tr>
		</thead>

		<tbody>
			<c:forEach var="ant" items="${antList}">
				<tr>
					<td style="width: 160px; height:100px; text-align:center" ><img
						style="width: 150px; height: 100px"
						src="<c:url value='/getAntPicture/${ant.antid}'/>"></td>
					<td style="width: 100px; height:100px; vertical-align: middle">${ant.anttime}</td>
					<td style="width: 90px; height:100px; vertical-align: middle; text-align:center;letter-spacing:7px">${ant.category}</td>
					<td style="width: 200px; height:100px; vertical-align: middle">${ant.anttitle}</td>
					<td class="contentpppp" style="height:100px; vertical-align: middle">${ant.antcontent}</td>
					<td style="width: 60px; height:100px; vertical-align: middle; text-align:center"><a
						class="btn btn-secondary my-2 my-sm-0" 
						href="<c:url value='/update/${ant.antid}'/>">Edit</a></td>
					<td style="width: 90px; height:100px; vertical-align: middle; text-align:center"><a
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
				<th style="text-align:center">修改</th>
				<th style="text-align:center">刪除</th>
			</tr>
		</tfoot>
	</table>
			
			<!-- 			團隊牆結束 -->
		</div>
		<!-- Page Content 結束 -->
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
				resolution:200,
				perturbance : 0.04,
			});
		});
	</script>

<script src="https://code.jquery.com/jquery-1.12.4.min.js"></script>

<script
	src="https://cdn.datatables.net/1.10.20/js/jquery.dataTables.min.js"></script>

<script>
	$(document).ready(function() {
		$('#myTable').DataTable({
			"searching": style="align:center",
			
		});
	});
</script>

<script>
$(function(){
    var len = 50; // 超過100個字以"..."取代
    $(".contentpppp").each(function(i){
        if($(this).text().length>len){
            $(this).attr("title",$(this).text());
            var text=$(this).text().substring(0,len-1)+"...";
            $(this).text(text);
        }
    });
});
</script>





</body>

</html>