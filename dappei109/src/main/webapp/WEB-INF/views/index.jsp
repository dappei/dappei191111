<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html>


<html lang="zw-lang-tw">

<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="Mark Otto, Jacob Thornton, and Bootstrap contributors">
  <meta name="generator" content="Jekyll v3.8.5">
  <title>我們的穿搭網!</title>

 <!-- Bootstrap core CSS -->
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
  <style>
    .bd-placeholder-img {
      font-size: 1.125rem;
      text-anchor: middle;
    }
    .header{
     font-family: 微軟正黑體;
    }
    @media (min-width: 768px) {
      .bd-placeholder-img-lg {
        font-size: 3.5rem;
      }
    }
     .breadcrumb{
       background-color:transparent;
     }
     .text-hexschool{
       color: #000000!important;
       font-size:20px;
       font-family: 微軟正黑體;
       background-color:transparent;
     }
     .text-hexs{
       color: #000000!important;
       font-size:30px;
       font-family: 微軟正黑體;
       background-color:transparent;
     }

/* login的樣式 */
	#login-nav input { margin-bottom: 15px; }
  </style>
<script>
	$(document).ready(function(){
    //導覽列login的drop down
   	 $('.dropdown-menu').find('form').click(function (e) {
       	 e.stopPropagation();
    	});
	});
</script>
</head>

<body>


  <jsp:include page="/WEB-INF/views/header2.jsp" />

 
<!-- 輪播牆 -->
   <div class="demo">
    <div class="container mt-5">
    
    
    
      <div id="show" class="carousel slide row" data-ride="carousel">
        <div class="carousel-inner col">
          <ol class="carousel-indicators">
            <li data-target="#show" data-slide-to="1" class="active"></li>
            <li data-target="#show" data-slide-to="2"></li>
            <li data-target="#show" data-slide-to="3"></li>
            <li data-target="#show" data-slide-to="4"></li>
            <li data-target="#show" data-slide-to="5"></li>
          </ol>
          <div class="carousel-inner">
            <div class="carousel-item active">
            <a href="dappeis1"><img src="indeximage/t1.jpg" class="d-block w-100" alt="img"></a>
            </div>
            <div class="carousel-item">
            <a href="dappeis2"><img src="indeximage/t2.jpg" class="d-block w-100" alt="img"></a>
            </div>
            <div class="carousel-item">
            <a href="dappeis3"><img src="indeximage/t3.jpg" class="d-block w-100" alt="img"></a>
            </div>
            <div class="carousel-item">
            <a href="dappeis4"><img src="indeximage/t6.jpg" class="d-block w-100" alt="img"></a>
            </div>
            <div class="carousel-item">
            <a href="dappeis5"><img src="indeximage/t7.jpg" class="d-block w-100" alt="img"></a>
            </div>
          </div>
          <a class="carousel-control-prev" href="#show" role="button" data-slide="prev">
            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
            <span class="sr-only">Previous</span>
          </a>
          <a class="carousel-control-next" href="#show" role="button" data-slide="next">
            <span class="carousel-control-next-icon" aria-hidden="true"></span>
            <span class="sr-only">Next</span>
          </a>
        </div>
      </div>
    </div>
  </div>
  
<!--   <section class="py-5"> -->
<!--   <div class="container"></div> -->
<!--   <h2 class="text-center">公告</h2>  -->
<!--   <!-- <div><img src="https://img.icons8.com/wired/64/000000/medium-volume.png"></h2>公告</h2></div> --> 
<!--   </section> -->

      <!-- 中間文章圖 -->
     
      <nav aria-label="breadcrumb">
  <ol class="breadcrumb bg-transparent">
    <li class="breadcrumb-item active"  aria-current="page"><a href="#" class="text-hexs">熱門文章</a></li>
  </ol>
  
</nav>
   
      <div class="row mt-4">
        <div class="col-9 ml-5">
          <ul class="nav nav-pills card-header-pills">
            <li class="nav-item">
              <!-- 文字置中靠左 -->
               <div class="card w-100 text-center">

              <div class="card-columns">
                <div class="card p-3">
                  <ul class="nav nav-pills card-header-pills">
                    <li class="nav-item">
                      <a href="hotindex1">
                      <img src="indeximage/001.jpg" width="250" class="img-thumbnail" alt="Responsive image">
                      </a>
                      <div class="card-body">
                        <h4 class="card-title">都會時尚</h4>
                        <p class="card-text">牛仔上衣、褲子，加上飾品點綴，在搭配上叢林分布背景顯得格外時尚!</p>
                        <p class="card-text"><small class="text-muted">Metro fashion</small></p>
                      </div>
                </div>
                <div class="card p-3">
                  <ul class="nav nav-pills card-header-pills">
                    <li class="nav-item">
                      <img src="indeximage/008.jpg" width="250" class="img-thumbnail" alt="Responsive image">
                      <!-- 文字圖示分隔 -->
                      <blockquote class="blockquote mb-0 card-body">
                        <h4 class="card-title">樸實淑女</h4>
                        <p class="card-text">華麗景色，樸實穿搭</p>
                      <p class="card-text"><small class="text-muted">Understated luxury</small></p>
                          </small>
                      </blockquote>
                </div>
                <div class="card p-3">
                  <ul class="nav nav-pills card-header-pills">
                    <li class="nav-item">
                      <img src="indeximage/002.jpg" width="250" class="img-thumbnail" alt="Responsive image">
                      <div class="card-body">
                        <h4 class="card-title">暗黑女孩</h4>
                        <p class="card-text">黑暗系風格.</p>
                        <p class="card-text"><small class="text-muted">Dark girl</small></p>
                      </div>
                </div>
                <div class="card p-3">
                  <ul class="nav nav-pills card-header-pills">
                    <li class="nav-item">
                      <img src="indeximage/015.jpg" width="250" class="img-thumbnail" alt="Responsive image">
                      <blockquote class="blockquote mb-0">
                        <div class="card-body">
                          <h4 class="card-title">雅痞男士</h4>
                          <p class="card-text">雅皮西裝低調帥氣.
                          </p>
                          <p class="card-text"><small class="text-muted">Understated luxury</small></p>
                        </div></blockquote>
                </div>
                <div class="card p-3">
                  <ul class="nav nav-pills card-header-pills">
                    <li class="nav-item">
                      <img src="indeximage/005.jpg" width="250" class="img-thumbnail" alt="Responsive image">
                      <blockquote class="blockquote mb-0">
                        <div class="card-body">
                          <h4 class="card-title">帥氣牛仔風</h4>
                          <p class="card-text">女生也可以穿的很中性帥氣.
                          </p>
                          <p class="card-text"><small class="text-muted">Handsome cowboy</small></p>
                        </div></blockquote>
                </div>
                <div class="card p-3">
                  <ul class="nav nav-pills card-header-pills">
                    <li class="nav-item">
                     <img src="indeximage/003.jpg" width="250" class="img-thumbnail" alt="Responsive image">
                      <blockquote class="blockquote mb-0">
                        <div class="card-body">
                          <h4 class="card-title">文青氣質</h4>
                          <p class="card-text">氣質文青適合大眾穿搭.
                          </p>
                          <p class="card-text"><small class="text-muted">Wenqing temperament</small></p>
                       </div>
                       </blockquote>
                       </div>
                <div class="card p-3">
                        <ul class="nav nav-pills card-header-pills">
                          <li class="nav-item">
                            <img src="indeximage/009.jpg" width="250" class="img-thumbnail" alt="Responsive image">
                            <div class="card-body">
                            <blockquote class="blockquote mb-0">
                              <h4 class="card-title">夏日嚴選</h4>
                              <p class="card-text">炎熱的夏天就是要配上罩衫.
                              </p>
                              <small class="text-muted">Summer selection</small>
                        </blockquote>
                        </div>
                            </div>
                 <div class="card p-3">
                        <ul class="nav nav-pills card-header-pills">
                          <li class="nav-item">
                            <img src="indeximage/007.jpg" width="250" class="img-thumbnail" alt="Responsive image">
                            <div class="card-body">
                            <blockquote class="blockquote mb-0">
                              <h4 class="card-title">性感甜心</h4>
                              <p class="card-text">夏天就該清涼一下</p>
                              <small class="text-muted">Sexy sweetheart</small>
                        </blockquote>
                            </div>
                            </div>
                            <div class="card p-3">
                        <ul class="nav nav-pills card-header-pills">
                          <li class="nav-item">
                            <img src="indeximage/011.jpg" width="250" class="img-thumbnail" alt="Responsive image">
                            <div class="card-body">
                            <blockquote class="blockquote mb-0">
                              <h4 class="card-title">休閒西裝</h4>
                              <p class="card-text">百搭休閒西裝男孩就該擁有一套</p>
                              <small class="text-muted">Leisure Suit</small>
                        </blockquote>
                            </div>
                            </div>
      
              </div>
            
        </div>
        
     <!-- 購物shopping區 -->
     
   <div class="demo">
    <div class="container mt-5">
       <div class="card-deck">
    
     <div class="card border-0 text-center">
    <img src="indeximage/s1.jpg" class="card-img-top" alt="...">
    <div class="card-body">
      <h5 class="card-title">麂皮搖粒絨寬版T</h5>
      <p class="card-text">AMERICAN RETRO..</p>
    </div>
    <div class="card-footer border-top-0 bg-white">
    <div class="btn-group">
      <a href=""class="btn btn-outline-secondary">S</a>
      <a href=""class="btn btn-outline-secondary">M</a>
      <a href=""class="btn btn-outline-secondary">L</a>
    </div>
    </div>
  </div>
  <div class="card border-0 text-center">
    <img src="indeximage/s2.jpg" class="card-img-top" alt="...">
    <div class="card-body">
      <h5 class="card-title">雪花配色刷毛帽T</h5>
      <p class="card-text">AMERICAN RETRO.</p>
    </div>
    <div class="card-footer border-top-0 bg-white">
       <div class="btn-group">
      <a href=""class="btn btn-outline-secondary">S</a>
      <a href=""class="btn btn-outline-secondary">M</a>
      <a href=""class="btn btn-outline-secondary">L</a>
    </div>
    </div>
  </div>
  <div class="card border-0 text-center">
    <img src="indeximage/s3.jpg" class="card-img-top" alt="...">
    <div class="card-body">
      <h5 class="card-title">寬版補丁牛仔褲‧情侶款(男)</h5>
      <p class="card-text">AMERICAN RETRO.</p>
    </div>
    <div class="card-footer border-top-0 bg-white">
        <div class="btn-group">
      <a href=""class="btn btn-outline-secondary">S</a>
      <a href=""class="btn btn-outline-secondary">M</a>
      <a href=""class="btn btn-outline-secondary">L</a>
    </div>
    </div>
  </div>
</div>
     
        <div class="card-deck">
  <div class="card border-0 text-center">
    <img src="indeximage/s4.jpg" class="card-img-top" alt="...">
    <div class="card-body">
      <h5 class="card-title">帽內毛絨帽外套</h5>
      <p class="card-text">AMERICAN RETRO</p>
    </div>
    <div class="card-footer border-top-0 bg-white">
        <div class="btn-group">
      <a href=""class="btn btn-outline-secondary">S</a>
      <a href=""class="btn btn-outline-secondary">M</a>
      <a href=""class="btn btn-outline-secondary">L</a>
    </div>
    </div>
  </div>
  <div class="card border-0 text-center">
    <img src="indeximage/s5.jpg" class="card-img-top" alt="...">
    <div class="card-body">
      <h5 class="card-title">仙度瑞拉落肩上衣</h5>
      <p class="card-text">DISNEY PRINCESS COLLECTION.</p>
    </div>
    <div class="card-footer border-top-0 bg-white">
        <div class="btn-group">
      <a href=""class="btn btn-outline-secondary">S</a>
      <a href=""class="btn btn-outline-secondary">M</a>
      <a href=""class="btn btn-outline-secondary">L</a>
    </div>
    </div>
  </div>
  <div class="card border-0 text-center">
    <img src="indeximage/s6.jpg" class="card-img-top" alt="...">
    <div class="card-body">
      <h5 class="card-title">針織傘擺中長裙</h5>
      <p class="card-text">SHESTER.</p>
    </div>
    <div class="card-footer border-top-0 bg-white">
       <div class="btn-group">
      <a href=""class="btn btn-outline-secondary">S</a>
      <a href=""class="btn btn-outline-secondary">M</a>
      <a href=""class="btn btn-outline-secondary">L</a>
    </div>
    </div>
  </div>
</div>
        </div>
        </div>
        </li>       
        </div>
      
       <!-- 右側  Sidebar_Right -->
        <div class="col-2">
            <nav aria-label="breadcrumb">
                <ol class="breadcrumb ">
                  <li class="breadcrumb-item"><a href="dappeiwall" class="text-hexschool">熱門穿搭</a></li>
                  <!-- <li class="breadcrumb-item"><a href="#" class="text-hexschool">熱門活動</a></li>
                  <li class="breadcrumb-item"><a href="#" class="text-hexschool">熱門商品</a></li> -->
                 </ol>
                
          <source srcset="..." type="image/svg+xml" >
           <a href="dappeiwall">
          <img src="indeximage/014.jpg" width="110"  class="img-fluid img-thumbnail" alt="...">
       
          <source srcset="..." type="image/svg+xml">
           <a href="dappeiwall">
          <img src="indeximage/015.jpg" width="110"  class="img-fluid img-thumbnail" alt="...">
          
          <source srcset="..." type="image/svg+xml">
           <a href="dappeiwall">
          <img src="indeximage/026.jpg" width="110"  class="img-fluid img-thumbnail" alt="...">
          
          <source srcset="..." type="image/svg+xml">
           <a href="dappeiwall">
          <img src="indeximage/027.jpg" width="110"  class="img-fluid img-thumbnail" alt="...">
          
          <source srcset="..." type="image/svg+xml" >
           <a href="dappeiwall">
          <img src="indeximage/021.jpg" width="110"  class="img-fluid img-thumbnail" alt="...">
       
          <source srcset="..." type="image/svg+xml">
           <a href="dappeiwall">
          <img src="indeximage/022.jpg" width="110"  class="img-fluid img-thumbnail" alt="...">
          
          <source srcset="..." type="image/svg+xml">
           <a href="dappeiwall">
          <img src="indeximage/028.jpg" width="110"  class="img-fluid img-thumbnail" alt="...">
          
          <source srcset="..." type="image/svg+xml">
           <a href="dappeiwall">
          <img src="indeximage/029.jpg" width="110"  class="img-fluid img-thumbnail" alt="...">
          
           <source srcset="..." type="image/svg+xml">
           <a href="dappeiwall">
          <img src="indeximage/011.jpg" width="110"  class="img-fluid img-thumbnail" alt="...">
          
           <source srcset="..." type="image/svg+xml">
           <a href="dappeiwall">
          <img src="indeximage/012.jpg" width="110"  class="img-fluid img-thumbnail" alt="...">
              </nav>
         
             
        
<!--           右側下二層   Sidebar_Right -->
<!--         <div class="col-2"> -->
<!--             <nav aria-label="breadcrumb"> -->
<!--                 <ol class="breadcrumb"> -->
<!--                   <li class="breadcrumb-item"><a href="#" class="text-hexschool">熱門穿搭</a></li> -->
                
<!--                 </ol> -->
<!--             </nav> -->
<!--         </div>  -->
        
        </div> 
      </div>
      
<!--    footer封底 -->

      <br>
      <footer>
      <div class="navbar navbar-dark bg-dark" > 
     <img src="https://img.icons8.com/flat_round/64/000000/t-shirt.png" width="30" height="30">
        <p class="float-left">
        <a href="#">Back to top</a>
          © 2019-2020 Deppei, Inc. 
        <a href="contact">聯絡我們</a> ·
        <a href="#">EEIT109</a></p>
        </div>
       </footer>
    
<!-- Login Modal -->
<div class="modal fade" id="login-modal" tabindex="-1" role="dialog"
	aria-labelledby="myModalLabel" aria-hidden="true">
	<div class="modal-dialog">
		<div class="modal-content">
			<div class="modal-body">
				<button type="button" class="close" data-dismiss="modal"
					aria-hidden="true">&times;</button>

				<div class="row" style="margin: 0">
					<div
						class="col-xs-12 col-sm-8 col-md-12 col-sm-offset-2 col-md-offset-3">
						<h2>Please Sign In</h2>
						<hr class="colorgraph">
						<form:form class="aa-login-form" method="POST"
							modelAttribute="memberBean2" action="./login">
							<div class="form-group">
								<label for="Username">Email address<span>*</span></label>
								<form:input id="Username" type="text"
									placeholder="Username or email" path="email"
									class="form-control input-lg" />
							</div>
							<div class="form-group">
								<label for="">Password<span>*</span></label>
								<form:input type="password" placeholder="Password"
									path="password" class="form-control input-lg" />
							</div>

							<span class="button-checkbox">
								<button type="button" class="btn" data-color="info">Remember
									Me</button> <input type="checkbox" name="remember_me" id="remember_me"
								checked="checked" class="hidden"> <a href=""
								class="btn btn-link pull-right">Forgot Password?</a>
							</span>

							<hr class="colorgraph">

							<div class="row">
								<div class="col-xs-6 col-sm-6 col-md-6">
									<input type="submit" class="btn btn-lg btn-success btn-block"
										value="Sign In">
								</div>
								<div class="col-xs-6 col-sm-6 col-md-6">
									<a href="" class="btn btn-lg btn-primary btn-block">Register</a>
								</div>
							</div>
							<font style="color: red; font-size: 14pt">${errorMsg.loginerror}</font>
						</form:form>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>     
</body>

</html>
