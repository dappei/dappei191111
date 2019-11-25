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
<title>消息</title>
<link rel='stylesheet'
	href='${pageContext.request.contextPath}/css/styles.css'
	type="text/css" />
<script src="https://code.jquery.com/jquery-1.12.4.min.js"></script>
<script
	src="https://cdn.rawgit.com/bradley/Blotter/master/build/blotter.min.js"></script>
<script
	src="https://rawgit.com/bradley/Blotter/master/build/materials/liquidDistortMaterial.js"></script>
<style>
@import "https://use.fontawesome.com/releases/v5.5.0/css/all.css";

.jumbotron {
	background-image:
		url('http://getwallpapers.com/wallpaper/full/2/1/4/1519214-orange-geometric-wallpaper-2560x1600-for-mobile.jpg');
	background-size: cover;
	background-repeat: no-repeat;
	height: 100%;
	font-family: 'Numans', sans-serif;
}

.ZZZZZ{
padding:3px;
margin:7px;
}
</style>

<script>
	$(function() {
		var len = 100; // 超過100個字以"..."取代
		$(".content").each(function(i) {
			if ($(this).text().length > len) {
				$(this).attr("title", $(this).text());
				var text = $(this).text().substring(0, len - 1) + "...";
				$(this).text(text);
			}
		});
	});
</script>

<script type="text/javascript">
	$(function() {
		var search_input = $(".search_box input"), search_content = $(".search_content");
		$(search_input).on(
				"keyup",
				function() {
					if (search_input.val() == '') {
						$(search_content).show();
					}
					$(
							".search_content .fuck:contains("
									+ search_input.val().trim() + ")").show();

					$(
							".search_content .fuck:not(:contains("
									+ search_input.val().trim() + "))").hide();

					//第二中方法
					//$(".search_content div").hide().filter(":contains("+ search_input.val().trim() +")").show();
				});
	});
</script>



</head>
<body style="background-color:whitesmoke"; opacity: 0.2;">


	<jsp:include page="/WEB-INF/views/header.jsp" />



	<div class="container">

		<div style="text-align: center; height:275px" class="jumbotron img-thumbnail border border-light">
		
			<div id="main"></div>

			<!--     <h3>
			<a href="<c:url value='/queryAntFontByCategory'/>">分類查詢</a><br>
		</h3>   -->

			<div style="text-align: center">
			<!--  	<h4 style="font-weight: 800;color:gainsboro">請依照類別來挑選消息：</h4>  -->
				<c:forEach var='category' items='${categoryList2}'>
					<a href="<c:url value='/antFont/${category}'/>"
						class="btn btn-outline-secondary">${category}</a>
				</c:forEach>
			</div>

		<!--  	<br> <a href="<c:url value='/antfont'/>"
				class="btn btn-outline-secondary">查看所有消息</a>  -->

		</div>
		
		<div class=" border-bottom">
		<div class=" ZZZZZ">     
			<i class="fas fa-flag-checkered"></i><span >&nbsp;目前位置：</span> <a style="color:#444444"    
				href="${pageContext.request.contextPath}/">首頁</a> <span>&nbsp;»&nbsp;</span> <a 
				href="${pageContext.request.contextPath}/antfont" style="font-size:23px;color:#888888;font-weight: 600;">消息</a> 
			<span class="search_box" style="float:right ;font-size:17px;font-weight: 500">Search&nbsp;:&nbsp;
			<input type="text" placeholder='請輸入搜索內容'> <i
				class='search_icno'></i>
		</span>
		</div>
		</div>

		
		<br>
		<div class="search_content">

			<c:forEach var="ant" items="${antList}">

				<div class="border-bottom fuck" >

					<div class="row" style="height: 170px">
						<div class="col-md-3 picture">

							<img style="width: 400px; height: 155px" class="img-thumbnail"
								src="<c:url value='/getAntPicture/${ant.antid}'/>">
						</div>

						<div class="col-md-9" style=""background-color:#000000"; opacity: 0.2;">
							<i class="border"
								style="padding: 4px; background-color: #77DDFF;">最新消息</i> <a style="color:#888888"
								href="<c:url value='/antsingle?antid=${ant.antid}'/>"><h2 >${ant.anttitle}</h2></a>
							<div class="fas fa-tint">&nbsp;${ant.anttime}</div>
							<div class="content">${ant.antcontent}</div>
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
						&nbsp;&nbsp;&nbsp;&nbsp; <span><img
							src="https://carlisletheacarlisletheatre.org/images/speaker-png-icon-3.png"
							width="40" height="40"></span> <span class="border border-warning"
							style="padding: 3px; background-color: #AAAAAA">${ant.category}</span>
					</div>

					<br>
				</div>
				<br>
				<br>

			</c:forEach>

		</div>

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


	<nav aria-label="Page navigation example"
		class="pagination list-inline mx-auto justify-content-center" >
		<ul class="pagination" >
			<li class="page-item"><a class="page-link" href="#"
				aria-label="Previous" style="background-color:whitesmoke"> <span aria-hidden="true">&laquo;</span> <span
					class="sr-only">Previous</span>
			</a></li>
			<li class="page-item"><a class="page-link" href="#" style="background-color:whitesmoke">1</a></li>
			<!--     <li class="page-item"><a class="page-link" href="#">2</a></li>  -->
			<!--     <li class="page-item"><a class="page-link" href="#">3</a></li> -->
			<li class="page-item"><a class="page-link" href="#" style="background-color:whitesmoke"
				aria-label="Next"> <span aria-hidden="true">&raquo;</span> <span 
					class="sr-only">Next</span>
			</a></li>
		</ul>
	</nav>

	<script>
		container = document.getElementById("main");
		const text = new Blotter.Text("Latest News", {
			family : "serif",
			size : 100,
			fill : "mistyrose"
		});
		let material = new Blotter.LiquidDistortMaterial();
		material.uniforms.uSpeed.value = 0.3;
		material.uniforms.uVolatility.value = 0.1;
		material.uniforms.uSeed.value = 0.1;
		let blotter = new Blotter(material, {
			texts : text
		});
		let scope = blotter.forText(text);
		scope.appendTo(container);
	</script>

	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/jquery.ripples/0.5.3/jquery.ripples.min.js"></script>
	<script>
		$(document).ready(function() {
			$("#ooo").ripples({
				resolution : 200,
				perturbance : 0.04,
			});
		});
	</script>


	<jsp:include page="/WEB-INF/views/footer.jsp" />


</body>
</html>