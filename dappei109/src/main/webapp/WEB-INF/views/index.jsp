<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

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
       color: #990099!important;
       font-size:20px;
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
  <link href="carousel.css" rel="stylesheet">
</head>

<body>


  <jsp:include page="/WEB-INF/views/header.jsp" />

 
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
              <img src="indeximage/01.jpg" class="d-block w-100" alt="img">
            </div>
            <div class="carousel-item">
              <img src="indeximage/02.jpg" class="d-block w-100" alt="img">
            </div>
            <div class="carousel-item">
              <img src="indeximage/03.jpg" class="d-block w-100" alt="img">
            </div>
            <div class="carousel-item">
              <img src="indeximage/04.jpg" class="d-block w-100" alt="img">
            </div>
            <div class="carousel-item">
              <img src="indeximage/05.jpg" class="d-block w-100" alt="img">
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
  
  <section class="py-5">
  <div class="container"></div>
  <h2 class="text-center">公告</h2> 
  <!-- <div><img src="https://img.icons8.com/wired/64/000000/medium-volume.png"></h2>公告</h2></div> -->
  </section>

      <!-- 中間文章圖 -->
      熱門文章
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
                      <img src="indeximage/001.jpg" width="250" class="img-thumbnail" alt="Responsive image">
                      <div class="card-body">
                        <h5 class="card-title">Card title that wraps to a new line</h5>
                        <p class="card-text">This is a longer card with supporting text below as a natural lead-in to
                          additional
                          content. This content is a little bit longer.</p>
                      </div>
                </div>
                <div class="card p-3">
                  <ul class="nav nav-pills card-header-pills">
                    <li class="nav-item">
                      <img src="indeximage/008.jpg" width="250" class="img-thumbnail" alt="Responsive image">
                      <!-- 文字圖示分隔 -->
                      <blockquote class="blockquote mb-0 card-body">
                        <h5 class="card-title">Card title that wraps to a new line</h5>
                        <p class="card-text">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer posuere erat a ante.</p>
                        <p class="card-text"><small class="text-muted">Someone famous in <cite title="Source Title">Source Title</cite>
                          </small>
                    
                      </blockquote>
                </div>
                <div class="card p-3">
                  <ul class="nav nav-pills card-header-pills">
                    <li class="nav-item">
                      <img src="indeximage/002.jpg" width="250" class="img-thumbnail" alt="Responsive image">
                      <div class="card-body">
                        <h5 class="card-title">Card title</h5>
                        <p class="card-text">This card has supporting text below as a natural lead-in to additional
                          content.</p>
                        <p class="card-text"><small class="text-muted">Last updated 3 mins ago</small></p>
                      </div>
                </div>
                <div class="card p-3">
                  <ul class="nav nav-pills card-header-pills">
                    <li class="nav-item">
                      <img src="indeximage/015.jpg" width="250" class="img-thumbnail" alt="Responsive image">
                      <blockquote class="blockquote mb-0">
                        <div class="card-body">
                          <h5 class="card-title">Card title</h5>
                          <p class="card-text">This card has a regular title and short paragraphy of text below it.
                          </p>
                          <p class="card-text"><small class="text-muted">Last updated 3 mins ago</small></p>
                        </div></blockquote>
                </div>
                <div class="card p-3">
                  <ul class="nav nav-pills card-header-pills">
                    <li class="nav-item">
                      <img src="indeximage/005.jpg" width="250" class="img-thumbnail" alt="Responsive image">
                      <blockquote class="blockquote mb-0">
                        <div class="card-body">
                          <h5 class="card-title">Card title</h5>
                          <p class="card-text">This card has a regular title and short paragraphy of text below it.
                          </p>
                          <p class="card-text"><small class="text-muted">Last updated 3 mins ago</small></p>
                        </div></blockquote>
                </div>
                <div class="card p-3">
                  <ul class="nav nav-pills card-header-pills">
                    <li class="nav-item">
                     <img src="indeximage/003.jpg" width="250" class="img-thumbnail" alt="Responsive image">
                      <blockquote class="blockquote mb-0">
                        <div class="card-body">
                          <h5 class="card-title">Card title</h5>
                          <p class="card-text">This card has a regular title and short paragraphy of text below it.
                          </p>
                          <p class="card-text"><small class="text-muted">Last updated 3 mins ago</small></p>
                       </blockquote>

                <div class="card p-3">
                        <ul class="nav nav-pills card-header-pills">
                          <li class="nav-item">
                            <img src="indeximage/004.jpg" width="250" class="img-thumbnail" alt="...">
                            <div class="card-body">
                            <blockquote class="blockquote mb-0">
                              <h5 class="card-title">Card title</h5>
                              <p class="card-text">This is another card with title and supporting text below. This card has some</p>
                              <footer class="blockquote-footer">
                            <small class="text-muted">
                              Someone famous go <cite title="Source Title">Source Title</cite>
                            </small>
                          </footer>
                        </blockquote>
                            </div>
      
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
      <h5 class="card-title">Card title</h5>
      <p class="card-text">This is a wider card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.</p>
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
      <h5 class="card-title">Card title</h5>
      <p class="card-text">This card has supporting text below as a natural lead-in to additional content.</p>
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
      <h5 class="card-title">Card title</h5>
      <p class="card-text">This is a wider card with supporting text below as a natural lead-in to additional content. This card has even longer content than the first to show that equal height action.</p>
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
      <h5 class="card-title">Card title</h5>
      <p class="card-text">This is a wider card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.</p>
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
      <h5 class="card-title">Card title</h5>
      <p class="card-text">This card has supporting text below as a natural lead-in to additional content.</p>
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
      <h5 class="card-title">Card title</h5>
      <p class="card-text">This is a wider card with supporting text below as a natural lead-in to additional content. This card has even longer content than the first to show that equal height action.</p>
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
      
        
        
        
        
        
        
        
        
        
        </div>
      
       <!-- 右側  Sidebar_Right -->
        <div class="col-2">
            <nav aria-label="breadcrumb">
                <ol class="breadcrumb">
                  <li class="breadcrumb-item"><a href="#" class="text-hexschool">熱門穿搭</a></li>
                  <!-- <li class="breadcrumb-item"><a href="#" class="text-hexschool">熱門活動</a></li>
                  <li class="breadcrumb-item"><a href="#" class="text-hexschool">熱門商品</a></li> -->
                 </ol>
                
          <source srcset="..." type="image/svg+xml" >
           <a href="text.jsp">
          <img src="indeximage/014.jpg" width="110"  class="img-fluid img-thumbnail" alt="...">
       
          <source srcset="..." type="image/svg+xml">
           <a href="con.jsp">
          <img src="indeximage/015.jpg" width="110"  class="img-fluid img-thumbnail" alt="...">
          
          <source srcset="..." type="image/svg+xml">
           <a href="text.jsp">
          <img src="indeximage/026.jpg" width="110"  class="img-fluid img-thumbnail" alt="...">
          
          <source srcset="..." type="image/svg+xml">
           <a href="con.jsp">
          <img src="indeximage/027.jpg" width="110"  class="img-fluid img-thumbnail" alt="...">
          
          <source srcset="..." type="image/svg+xml" >
           <a href="text.jsp">
          <img src="indeximage/021.jpg" width="110"  class="img-fluid img-thumbnail" alt="...">
       
          <source srcset="..." type="image/svg+xml">
           <a href="con.jsp">
          <img src="indeximage/022.jpg" width="110"  class="img-fluid img-thumbnail" alt="...">
          
          <source srcset="..." type="image/svg+xml">
           <a href="text.jsp">
          <img src="indeximage/028.jpg" width="110"  class="img-fluid img-thumbnail" alt="...">
          
          <source srcset="..." type="image/svg+xml">
           <a href="con.jsp">
          <img src="indeximage/029.jpg" width="110"  class="img-fluid img-thumbnail" alt="...">
          
           <source srcset="..." type="image/svg+xml">
           <a href="con.jsp">
          <img src="indeximage/011.jpg" width="110"  class="img-fluid img-thumbnail" alt="...">
          
           <source srcset="..." type="image/svg+xml">
           <a href="con.jsp">
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
      

	<jsp:include page="/WEB-INF/views/footer.jsp" />
    
</body>

</html>
