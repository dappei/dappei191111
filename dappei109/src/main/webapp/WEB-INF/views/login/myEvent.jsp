<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
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
<!-- 活動訂單Css -->
<style type="text/css">
nav > .nav.nav-tabs{
  border: none;
    color:#000000;
    background:#272e38;
    border-radius:0;
}
nav > div a.nav-item.nav-link,
nav > div a.nav-item.nav-link.active
{
  border: none;
    padding: 18px 25px;
    color:#7B7B7B;
    background:#E0E0E0;
    border-radius:0;
	border-right:solid 1px;
}
nav > div a.nav-item.nav-link.active:after
 {
  content: "";
  position: relative;
  bottom: -60px;
  left: -5%;
  border: 15px solid transparent;
  border-top-color: #8080C0 ;
}
.tab-content{
  background: #fdfdfd;
    line-height: 25px;
    border: 3px solid #ddd;
    border-top:5px solid #8080C0;
    border-bottom:5px solid #8080C0;
    padding:30px 25px;
}

nav > div a.nav-item.nav-link:hover,
nav > div a.nav-item.nav-link:focus
{
  border: none;
    background: #F0F0F0;
    color:#272727;
    border-radius:0;
    transition:background 0.20s linear;
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
					<td><a href="">我的活動</a></td>
					<td><a href="">我的訂單</a></td>
					<td><a href="">問題回報</a></td>
				</tr>
			</div>
		</div>
	</div>	
	<br><br><br><br>

	<div class="container">
      <div class="row">
        <div class="col-xs-12 ">
          <nav>
            <div class="nav nav-tabs nav-fill" id="nav-tab" role="tablist">
              <a class="nav-item nav-link active" id="nav-home-tab" data-toggle="tab" href="#nav-ordered" role="tab" aria-controls="nav-home" aria-selected="true">已報名</a>
              <a class="nav-item nav-link" id="nav-profile-tab" data-toggle="tab" href="#nav-profile" role="tab" aria-controls="nav-profile" aria-selected="false">已取消</a>
            </div>
          </nav>
          <div class="tab-content py-3 px-3 px-sm-0" id="nav-tabContent">
            <div class="tab-pane fade show active" id="nav-ordered" role="tabpanel" aria-labelledby="nav-home-tab">
             <div id="wrapper" class="animate">
              <div class="row">
				<div class="col">
				<c:forEach var='oevent' items='${orderEvents}'>
				  <div class="card">
				   <div class="card-body">
					 <h5 class="card-title">Try Other</h5>
					 <h6 class="card-subtitle mb-2 text-muted">Bootstrap 4.0.0 Snippet by pradeep330</h6>
					 <p class="card-text">You can also try different version of Bootstrap V4 side menu. Click below link to view all Bootstrap Menu versions.</p>
					 <a href="https://bootsnipp.com/pradeep330" class="card-link">link</a>
					 <a href="http://websitedesigntamilnadu.com" class="card-link">Another link</a>
				    </div>
				   </div>
				  </c:forEach>
				  </div>
				</div>
              </div>
             <div class="tab-pane fade" id="nav-profile" role="tabpanel" aria-labelledby="nav-profile-tab">
               Et et consectetur ipsum labore excepteur est proident excepteur ad velit occaecat qui minim occaecat veniam. Fugiat veniam incididunt anim aliqua enim pariatur veniam sunt est aute sit dolor anim. Velit non irure adipisicing aliqua ullamco irure incididunt irure non esse consectetur nostrud minim non minim occaecat. Amet duis do nisi duis veniam non est eiusmod tempor incididunt tempor dolor ipsum in qui sit. Exercitation mollit sit culpa nisi culpa non adipisicing reprehenderit do dolore. Duis reprehenderit occaecat anim ullamco ad duis occaecat ex.
            </div>
           </div>
         </div>
        </div>
      </div><br><br><br>

	




	<jsp:include page="/WEB-INF/views/footer.jsp" />

</body>
</html>