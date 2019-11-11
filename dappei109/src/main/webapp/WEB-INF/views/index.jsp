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
  </style>
  <!-- Custom styles for this template -->
</head>

<body>

  <header>
    <nav class="navbar navbar-expand-lg navbar-dark fixed-top bg-dark">
      <a class="navbar-brand" href="#">Dappei</a>
      <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarCollapse"
        aria-controls="navbarCollapse" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>
      <div class="collapse navbar-collapse" id="navbarCollapse">
        <ul class="navbar-nav mr-auto">
          <li class="nav-item active">
            <a class="nav-link" href="#">穿搭 </a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="#">活動</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="#">部落格</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="#">購物</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="#">商城</a>
          </li>
          <li class="nav-item">
              <a class="nav-link" href="#">後台</a>
        </li>

        </ul>
        <form class="form-inline mt-2 mt-md-0">
          <!-- <input class="form-control mr-sm-2" type="text" placeholder="Search" aria-label="Search"> -->
          <!-- <li> <a href="/user/a123/following_photos"><img alt=" a132訂閱的穿搭" src="https://images.dappei.com/default/face/small/face.jpg?timestamp=1573233706"></a></li> -->
          <li><a href="members/add"><button class="btn btn-outline-success my-2 my-sm-1">Sign UP</button></a></li>
          <li><a href="login"><button class="btn btn-outline-success my-2 my-sm-1">Login</button></a></li>
        </form>
      </div>
    </nav>
  </header>

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


    <!-- FOOTER -->
    <footer class="container">
      <p class="float-right"><a href="#">Back to top</a></p>
      <p>© 2017-2018 Company, Inc. · <a href="#">Privacy</a> · <a href="#">Terms</a></p>
    </footer>
    </main>
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
      integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
      crossorigin="anonymous"></script>
    <script>window.jQuery || document.write('<script src="/docs/4.2/assets/js/vendor/jquery-slim.min.js"><\/script>')</script>
    <script src="/docs/4.2/dist/js/bootstrap.bundle.js"></script>

</body>

</html>
