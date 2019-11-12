<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
  <!-- Bootstrap core CSS -->

  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css">

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
            <a class="nav-link" href="events">活動</a>
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
		<input type ="button" onclick="javascript:location.href='login'" value="Login">
		<input type ="button" onclick="javascript:location.href='members/add'" value="Register">
       </form>
      </div>
    </nav>
  </header>