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
  <!-- <link href="/docs/4.2/dist/css/bootstrap.css" rel="stylesheet"> -->
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css"
    integrity="sha384-GJzZqFGwb1QTTN6wy59ffF1BuGJpLSa9DkKMp0DgiMDm4iYMj70gZWKYbI706tWS" crossorigin="anonymous">

  <style>
    .bd-placeholder-img {
      font-size: 1.125rem;
      text-anchor: middle;
    }

    @media (min-width: 768px) {
      .bd-placeholder-img-lg {
        font-size: 3.5rem;
      }
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

  <jsp:include page="/WEB-INF/views/header.jsp" />

  <!-- 輪播牆 -->
  <div class="container mt-5">
    <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
      <ol class="carousel-indicators">
        <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
        <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
        <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
      </ol>
      <div class="carousel-inner">
        <div class="carousel-item active">
          <img src="indeximage/01.jpg" class="d-block w-100" alt="...">
        </div>
        <div class="carousel-item">
          <img src="indeximage/02.jpg" class="d-block w-100" alt="">
        </div>
        <div class="carousel-item">
          <img src="indeximage/03.jpg" class="d-block w-100" alt="...">
        </div>
      </div>
      <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
        <span class="carousel-control-prev-icon" aria-hidden="true"></span>
        <span class="sr-only">Previous</span>
      </a>
      <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
        <span class="carousel-control-next-icon" aria-hidden="true"></span>
        <span class="sr-only">Next</span>
      </a>
    </div>
    <!-- 中間圖 -->
    <div class="container mt-4">
    <div class="col-sm-9">
      <div class="card-columns">
        <div class="card p-3">
          <img src="indeximage\001.jpg" width="250" class="img-thumbnail" alt="Responsive image">
          <div class="card-body">
            <h5 class="card-title">Card title that wraps to a new line</h5>
            <p class="card-text">This is a longer card with supporting text below as a natural lead-in to additional
              content. This content is a little bit longer.</p>
          </div>
        </div>
        <div class="card p-3">
          <img src="indeximage\008.jpg" width="250" class="img-thumbnail" alt="Responsive image">
          <blockquote class="blockquote mb-0 card-body">
            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer posuere erat a ante.</p>
            <footer class="blockquote-footer">
              <small class="text-muted">
                Someone famous in <cite title="Source Title">Source Title</cite>
              </small>
            </footer>
          </blockquote>
        </div>
        <div class="card p-3">
          <img src="indeximage\002.jpg" width="250" class="img-thumbnail" alt="Responsive image">
          <div class="card-body">
            <h5 class="card-title">Card title</h5>
            <p class="card-text">This card has supporting text below as a natural lead-in to additional content.</p>
            <p class="card-text"><small class="text-muted">Last updated 3 mins ago</small></p>
          </div>
        </div>
        <div class="card p-3">
          <img src="indeximage\015.jpg" width="250" class="img-thumbnail" alt="Responsive image">
          <blockquote class="blockquote mb-0">
            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer posuere erat.</p>
            <footer class="blockquote-footer text-white">
              <small>
                Someone famous in <cite title="Source Title">Source Title</cite>
              </small>
            </footer>
          </blockquote>
        </div>
        <div class="card p-3">
          <img src="indeximage\005.jpg" width="250" class="img-thumbnail" alt="...">
          <div class="card-body">
            <h5 class="card-title">Card title</h5>
            <p class="card-text">This card has a regular title and short paragraphy of text below it.</p>
            <p class="card-text"><small class="text-muted">Last updated 3 mins ago</small></p>
          </div>
        </div>
        <div class="card p-3">
          <img src="indeximage\003.jpg" width="250" class="img-thumbnail" alt="...">
        </div>
        <div class="card p-3">
          <blockquote class="blockquote mb-0">
            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer posuere erat a ante.</p>
            <footer class="blockquote-footer">
              <small class="text-muted">
                Someone famous in <cite title="Source Title">Source Title</cite>
              </small>
            </footer>
          </blockquote>
        </div>
        <div class="card p-3">
          <img src="indeximage\004.jpg" width="250" class="img-thumbnail" alt="...">
          <div class="card-body">
            <h5 class="card-title">Card title</h5>
            <p class="card-text">This is another card with title and supporting text below. This card has some
              additional content to make it slightly taller overall.</p>
            <p class="card-text"><small class="text-muted">Last updated 3 mins ago</small></p>
          </div>
        </div>
      </div>

    </div>

	<jsp:include page="/WEB-INF/views/footer.jsp" />
    
</body>

</html>
