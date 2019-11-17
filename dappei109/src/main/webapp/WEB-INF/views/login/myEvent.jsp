<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"  %>
<!DOCTYPE html>
<html lang="TW">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>${currentUser.username}</title>

<style>
body {
	font-family: 'Open Sans', sans-serif;
}

.fb-profile img.fb-image-lg {
	z-index: 0;
	width: 100%;
	margin-bottom: 10px;
}

.fb-image-profile {
	margin: -130px 10px 0px 50px;
	z-index: 9;
	width: 20%;
}

@media ( max-width :768px) {
	.fb-profile-text>h1 {
		font-weight: 700;
		font-size: 16px;
	}
	.fb-image-profile {
		margin: -45px 10px 0px 25px;
		z-index: 9;
		width: 20%;
	}
}

.fullscreen_bg {
	position: fixed;
	top: 0;
	right: 0;
	bottom: 0;
	left: 0;
	background-size: cover;
	background-position: 50% 50%;
	background-image: url('http://cleancanvas.herokuapp.com/img/backgrounds/color-splash.jpg');
	background-repeat: repeat;
}
</style>
<!-- 訂單CSS -->
<style type="text/css">
.project-tab {
    padding: 10%;
    margin-top: -8%;
}
.project-tab #tabs{
    background: #007b5e;
    color: #eee;
}
.project-tab #tabs h6.section-title{
    color: #eee;
}
.project-tab #tabs .nav-tabs .nav-item.show .nav-link, .nav-tabs .nav-link.active {
    color: #0062cc;
    background-color: transparent;
    border-color: transparent transparent #f3f3f3;
    border-bottom: 3px solid !important;
    font-size: 16px;
    font-weight: bold;
}
.project-tab .nav-link {
    border: 1px solid transparent;
    border-top-left-radius: .25rem;
    border-top-right-radius: .25rem;
    color: #0062cc;
    font-size: 16px;
    font-weight: 600;
}
.project-tab .nav-link:hover {
    border: none;
}
.project-tab thead{
    background: #f3f3f3;
    color: #333;
}
.project-tab a{
    text-decoration: none;
    color: #333;
    font-weight: 600;
}
</style>

</head>
<body>
	<jsp:include page="/WEB-INF/views/header.jsp" />
	<br>
	<br>
	<div class="container">
		<div class="fb-profile">
			<img width='850' height='350' align="left" class="fb-image-lg"
				src="https://im.marieclaire.com.tw/s1920c1080h100b0/assets/mc/201908/5D47C4A74E57F1564984487.jpeg"
				alt="Profile image example" /> 
			<img width='100' height='220'
				align="left" class="fb-image-profile thumbnail"
				src="<c:url value='memberPhoto/${currentUser.memberId}'/>"
				alt="Profile image example" />
				
			<div class="fb-profile-text">
				<tr>
					<td>${currentUser.username}</td>
					<td><a href="personalPg">個人資料</a></td>
					<td><a href="">我的穿搭</a></td>
					<td><a href="eventOderedRec">我的活動</a></td>
					<td><a href="">我的訂單</a></td>
					<td><a href="">問題回報</a></td>
				</tr>
			</div>
		</div>
	</div>	
	<br><br><br><br>


		
		
	<!-- another Tab -->
	<section id="tabs" class="project-tab">
            <div class="container">
                <div class="row">
                    <div class="col-md-12">
                        <nav>
                            <div class="nav nav-tabs nav-fill" id="nav-tab" role="tablist">
                                <a class="nav-item nav-link active" id="nav-home-tab" data-toggle="tab" href="#nav-home" role="tab" aria-controls="nav-home" aria-selected="true">已訂購</a>
                                <a class="nav-item nav-link" id="nav-profile-tab" data-toggle="tab" href="#nav-profile" role="tab" aria-controls="nav-profile" aria-selected="false">已取消</a>
                                
                            </div>
                        </nav>
                        <div class="tab-content" id="nav-tabContent">
                            <div class="tab-pane fade show active" id="nav-home" role="tabpanel" aria-labelledby="nav-home-tab">
                                <br>
                                <c:forEach var='oevent' items='${orderEvents}'>
								  <div style="border: solid #7B7B7B; border-left-width: 15px ;border-left-color: #4A4AFF">
								   <div class="card-body">
									 <h5 class="card-title">${oevent.event.eventName}</h5>
									 <h6 class="card-text mb-2 text-muted">${fn:substring(oevent.event.eventStartTime,0,16)}~${fn:substring(oevent.event.eventEndTime,0,16)}</h6>
									 <p class="card-text">訂購時間:${fn:substring(oevent.orderdate,0,16)}</p>
									 <p class="card-text">訂單編號:${oevent.orderid}</p>
									 <p class="card-text">金額:NT$ ${oevent.totalprice}</p>					 
								    </div>
								   </div><br>
								</c:forEach>
                            </div>
                            <div class="tab-pane fade" id="nav-profile" role="tabpanel" aria-labelledby="nav-profile-tab">
                                <br>
                                <c:forEach var='coevent' items='${cOrderEvents}'>
								  <div style="border: solid #7B7B7B; border-left-width: 15px ;border-left-color: #4A4AFF">
								   <div class="card-body">
									 <h5 class="card-title">${coevent.event.eventName}</h5>
									 <h6 class="card-text mb-2 text-muted">${fn:substring(coevent.event.eventStartTime,0,16)}~${fn:substring(coevent.event.eventEndTime,0,16)}</h6>
									 <p class="card-text">訂購時間:${fn:substring(coevent.orderdate,0,16)}</p>
									 <p class="card-text">訂單編號:${coevent.orderid}</p>
									 <p class="card-text">金額:NT$ ${coevent.totalprice}</p>					 
								    </div>
								   </div><br>
								</c:forEach>
                        </div>
                    </div>
                </div>
            </div>
        </section><br><br><br>




	<jsp:include page="/WEB-INF/views/footer.jsp" />

</body>
</html>