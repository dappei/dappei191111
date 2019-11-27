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
<title>消息詳細內容</title>
<link rel='stylesheet'
	href='${pageContext.request.contextPath}/css/styles.css'
	type="text/css" />

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

.fakeimg {
	height: 375px;
	background: #aaa;
}

.ccccc {
	white-space: pre-wrap;
	word-wrap: break-word;
	word-break: break-all;
}

.ZZZZZ{
padding:3px;
margin:7px;
}

.box{
  position:absolute;
  top: 350px;
  right: 218px;
  padding: 1px;
  background:#888800;
}
.box a{
  width: 23px;
  height: 23px;
  float: right;
  text-indent: -9999px;
  margin: 3px;
  cursor: pointer;
}
#whitesmoke {
	background: whitesmoke;
}

#lightcyan {
	background: lightcyan;
}

#lightgray {
	background: lightgray;
}

#mistyrose {
	background: mistyrose;
}

#wheat {
	background: wheat;
}


</style>
<script type="text/javascript">
  function changecolor(id) {
    document.body.style.background = document.getElementById(id).innerHTML;
  }
</script>

</head>
<body style="background-color:whitesmoke"; opacity: 0.2;">


	<jsp:include page="/WEB-INF/views/header2.jsp" />

               <span
					class="box"> <a onclick="changecolor('whitesmoke')"
					id="whitesmoke">whitesmoke</a> <a
					onclick="changecolor('lightcyan')" id="lightcyan">lightcyan</a> <a
					onclick="changecolor('lightgray')" id="lightgray">lightgray</a> <a
					onclick="changecolor('mistyrose')" id="mistyrose">mistyrose</a> <a
					onclick="changecolor('wheat')" id="wheat">wheat</a>
				</span>

	<div class="container"  style="margin-top: 0px">
		<div style="text-align: center;height:225px;" class="jumbotron border border-light" >
			<br><br>
		 	<h4 style="font-weight: 600;color:#FFCCCC;">"Walk like you have three men walking behind you." ——Oscar de la Renta</h4>  

		<!--  <br> <a href="<c:url value='/antfont'/>"
				class="btn btn-outline-secondary">查看所有消息</a>  -->	

		</div>
		<div class=" border-bottom">
		<div class=" ZZZZZ">     
			<i class="fas fa-flag-checkered"></i><span >&nbsp;目前位置：</span> <a  style="color:#444444"    
				href="${pageContext.request.contextPath}/">首頁</a> <span>&nbsp;»&nbsp;</span> <a  style="color:#444444"
				href="${pageContext.request.contextPath}/antfont">消息</a> <span>&nbsp;»&nbsp;</span>
			<span style="font-size:23px;color:#666666;font-weight: 600;">${ant.anttitle}</span> <br>
		</div>
		</div>
<br><br>
		<div>
			<h2>${ant.anttitle}</h2>
			<h5 >${ant.anttime}</h5> 
			<img class="fakeimg" 
				src="getAntPicture/<c:out value='${ant.antid}'  />" /> <br>
			<br>
			<p class="ccccc" style="width: 750px">${ant.antcontent}</p>
			<br>
			<p>
				<a href="<spring:url value='antfont' />" class="btn btn-dark"> <span
					class="glyphicon-hand-left glyphicon"></span>返回
				</a>
		</div>
	</div>

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
	

	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	

	<jsp:include page="/WEB-INF/views/footer.jsp" />


</body>
</html>