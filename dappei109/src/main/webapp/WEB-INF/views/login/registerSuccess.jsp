<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<!-- Required meta tags -->
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta http-equiv="refresh" content="2;url=${pageContext.request.contextPath}/">
<link href="https://fonts.googleapis.com/css?family=Open+Sans" rel="stylesheet">
<link href="https://fonts.googleapis.com/css?family=Kaushan+Script" rel="stylesheet">
 <link href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet" integrity="sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN" crossorigin="anonymous">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/3.7.0/animate.css" />
<link rel="stylesheet" href="//cdnjs.cloudflare.com/ajax/libs/fancybox/2.1.5/jquery.fancybox.min.css" media="screen">
<script src="//cdnjs.cloudflare.com/ajax/libs/fancybox/2.1.5/jquery.fancybox.min.js"></script>
<title>login</title>
<style>
body {
	font-family: 'Open Sans', sans-serif !important;
    background: #fff;
    color: #222;
}


header.masthead {
    position: relative;
    height: 500px;
    background-color: #343a40;
    background: url('https://scontent.ftpe7-4.fna.fbcdn.net/v/l/t1.0-9/43639661_1966501910083969_6875886613876965376_n.jpg?_nc_cat=105&_nc_oc=AQlh8C5JMiksu96_A8D9oezlxOc4H1D9Xn1a2X3lj86588f3qflBcHSo35CtL7blxU4&_nc_ht=scontent.ftpe7-4.fna&oh=77c5c28eca7fb8a53904f873a1a75a20&oe=5E80A3F3') no-repeat center center;
    -webkit-background-size: cover;
    -moz-background-size: cover;
    -o-background-size: cover;
    background-size: cover;
    padding-top: 8rem;
    padding-bottom: 8rem;
}

header.masthead .overlay{position:absolute;background-color:#212529;height:100%;width:100%;top:0;left:0;opacity:.3}

@media (min-width:768px) {
    header.masthead {
        padding-top: 12rem;
        padding-bottom: 12rem;
    }
    header.masthead h3 {
        font-size: 4rem;
    }
}





.big-img img {
    height: 100%;
    width:100%;
    object-fit: cover;
}

.inner-section{
 position:relative;   
}
.container.slider-top-text {
    position: absolute;
    left: 50%;
    transform: translate(-50%, -50%);
}

.btn-login {
    width: 138px;
    background: #1fc6d8 !important;
    border: 1px solid #1fc6d8 !important;
}
.btn-login:hover{
       background: #3683a1 !important;
    border: 1px solid #1fc6d8 !important;
}
.mfa-white {
    color: #fff !important;
}

h3.my-heading {
    font-family: 'Kaushan Script', cursive;
    color: #fff;
    font-weight: bold;
    font-size: 30px;
    margin:0;
}

p.myp-slider.text-center {
    color: #fff;
}

.btn-register {
    width: 138px;
    background: #1fc6d8 !important;
    border: 1px solid #1fc6d8 !important;
}


.btn-register:hover{
       background: #3683a1 !important;
    border: 1px solid #1fc6d8 !important;
}

.btn-join {
    background: #1fc6d8 !important;
    border: 1px solid #1fc6d8 !important;
}

section#about {
    width: 100%;
    padding-top: 2.1rem;
    padding-bottom: 2.1rem;
}

.btn-circle {
    border-radius: 50%;
}

.my-social-btn {
    background: lightgrey;
}

.card:hover .my-social-btn.fb {
    background: #205b9f;
}
.card:hover .my-social-btn.twitter {
    background: #00ace3;
}
.card:hover .my-social-btn.google {
    background: #ff3921;
}
/*
a.btn.btn-circle.my-social-btn.fb:hover {
    background: #205b9f;
}

a.btn.btn-circle.my-social-btn.twitter:hover {
    background: #00ace3;
}

a.btn.btn-circle.my-social-btn.google:hover {
    background: #ff3921;
}
*/
a.btn.btn-circle.my-social-btn {
    color: #fff;
    height: 40px;
    width: 40px;
}

.inner-section h3 {
    text-transform: uppercase;
    font-weight:bold;
}

.inner-section h3:after {
    content: '';
    position: absolute;
    border-bottom: 4px solid #008ba3;
    width: 100%;
    max-width: 10%;
    top: 37px;
    left: 0;
}
span.bg-main {
    color: #008ba3;
}

hr.my-border {
    margin-top: 1rem;
    margin-bottom: 1rem;
    border: 0;
    border-top: 2px solid #008ba3;
    width: 117px;
}

.linear-grid img {
    width: 100%;
    height: 124px;
    object-fit: cover;
}

.mybg-events {
    background: url('https://images.pexels.com/photos/167491/pexels-photo-167491.jpeg?auto=compress&cs=tinysrgb&h=650&w=940') no-repeat center center fixed;
    background-size: cover;
}

.h-262 {
    height: 262px !important;
}

h3.title-heading.text-center {
    color: #fff;
    font-weight: bold;
}

p.myp.text-center {
    color: #fff;
    font-size: 14px;
    margin-bottom: 3rem;
}

.big-img2 img {
    height: 472px;
    width: 100%;
    object-fit: cover;
}

.my-grid img {
    height: 228px;
    width: 100%;
    object-fit: cover;
}








/*-------------------responsive-----------------*/

@media screen and (max-width: 520px) {
    ::placeholder {
        font-size: 10px;
    }
    .scroll-down {
        position: absolute;
        left: 50%;
        transform: translate(-50%, -50%);
        top: 45px;
    }
    
    .text-block {
        padding: 15px;
    }
    .linear-grid img {
        width: 100%;
        height: 181px;
    }
    .my-grid img {
        width: 100%;
    }
   
   
}
@media screen and (max-width: 767px) {
    .btn-login{
       width:100%; 
    }
    .btn-register {
         width:100%; 
    }
}



@media only screen and (min-width:2560px){}
@media only screen and (min-width:1600px) and (max-width:1920px){
	.navbar-toggler {display: none !important;}
}
@media only screen and (min-width:1440px){
	.navbar-toggler {display: none !important;}
}
@media only screen and (max-width: 1280px){
	.navbar-toggler {display: none !important;}
}
@media only screen and (max-width: 1024px){
	.navbar-toggler {display: none !important;}
	.mob-ul{list-style-type: none; padding-left: 0;}
	h5.events-heading{font-size:15px;}
	p.myp-font{font-size:13px;}
}
@media only screen and (min-width: 960px) and (max-width: 1023px) {
	.navbar-toggler {display: none !important;}
	.mob-ul{list-style-type: none; padding-left: 0;}
}

@media only screen and (min-width: 768px) and (max-width: 959px) {
.navbar-toggler {display: none !important;}
	#main {display: block;}
	.header-wrap .navbar .nav-link {color: #fff;}
	.mob-ul{list-style-type: none; padding-left: 0;}
	.header-wrap .sub-menu {width: 250px;}

}

@media only screen and (max-width:736px) and (orientation:landscape){
	.navbar-toggler {display: none !important;}
	#main {display: block;}
	.header-wrap .navbar .nav-link {color: #fff;}
	.mob-ul{list-style-type: none; padding-left: 0;}
	.header-wrap .sub-menu {width: 250px;}
}
@media only screen and (max-width:667px) and (orientation:landscape){
	.navbar-toggler {display: none !important;}
	#main {display: block;}
	.header-wrap .navbar .nav-link {color: #fff;}
	.mob-ul{list-style-type: none; padding-left: 0;}
	.header-wrap .sub-menu {width: 250px;}
}
@media only screen and (max-width:568px) and (orientation:landscape){
	.navbar-toggler {display: none !important;}
	#main {display: block;}
	.header-wrap .navbar .nav-link {color: #fff;}
	.mob-ul{list-style-type: none; padding-left: 0;}
	.header-wrap .sub-menu {width: 250px;}
}
@media only screen and (min-width: 600px) and (max-width: 767px) {
    h5.events-heading {
    font-size: 20px;
}
p.myp-font {
    font-size: 15px;
}
	.navbar-toggler {display: none !important;}
	#main {display: block;}
	.header-wrap .navbar .nav-link {color: #fff;}
	.mob-ul{list-style-type: none; padding-left: 0;}
	.header-wrap .sub-menu {width: 250px;}	
	.box img {height: 100%;}
}
@media only screen and (min-width: 480px) and (max-width: 599px) {
    .inner-section h3 {
        font-size: 18px;
    }
    h5.events-heading{font-size:15px;}
    .inner-section p {
    font-size: 13px;
    text-align: justify;
    }
    section#marketplace img {
     object-fit: cover;
    }
	.navbar-toggler {display: none !important;}
	#main {display: block;}
	.header-wrap .navbar .nav-link {color: #fff;}
	.mob-ul{list-style-type: none; padding-left: 0;}
	.header-wrap .sub-menu {width: 250px;}
	.box img {height: 100%;}
}
@media only screen and (min-width: 321px) and (max-width: 479px) {
    .inner-section h3 {
        font-size: 18px;
    }
    h5.events-heading{font-size:15px;}
    .inner-section p {
    font-size: 13px;
    text-align: justify;
    }
    section#marketplace img {
     object-fit: cover;
    }
	.navbar-toggler {display: none !important;}
	#main {display: block;}
	.header-wrap .navbar .nav-link {color: #fff;}
	.mob-ul{list-style-type: none; padding-left: 0;}
	.header-wrap .sub-menu {width: 250px;}	
	.box img {height: 100%;}
}
@media only screen and (max-width:568px) and (orientation:landscape){
	.navbar-toggler {display: none !important;}
	#main {display: block;}
	.header-wrap .navbar .nav-link {color: #fff;}
	.mob-ul{list-style-type: none; padding-left: 0;}
	.header-wrap .sub-menu {width: 250px;}
	.box img {height: 100%;}
}
@media only screen and (max-width: 320px) {
     .inner-section h3 {
        font-size: 18px;
    }
    h5.events-heading{font-size:15px;}
    .inner-section p {
    font-size: 13px;
    text-align: justify;
    }
    section#marketplace img {
     object-fit: cover;
    }
	.navbar-toggler {display: none !important;}
	#main {display: block;}
	.header-wrap .navbar .nav-link {color: #fff;}
	.mob-ul{list-style-type: none; padding-left: 0;}
	.header-wrap .sub-menu {width: 250px;}
	.box img {height: 100%;}
}
</style>
<!-- Custom styles for this template -->
<link href="jumbotron.css" rel="stylesheet">
</head>
<body>
	<header class="masthead text-white ">
        
        <div class="overlay"></div>
        
        <div class="container slider-top-text">
            <div class="row">
                <div class="col-md-12 text-center">
                    <h3 class="my-heading">WELCOME</h3>
                    <h3 class="my-heading">註冊成功</h3>
                </div>
                
            </div>
        </div>
    </header>

</body>
</html>
