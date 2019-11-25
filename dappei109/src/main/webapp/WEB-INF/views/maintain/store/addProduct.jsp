<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<html>
<head>
<meta charset="UTF-8">

<title>新增產品</title>
<!-- Bootstrap CSS CDN -->
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.0/css/bootstrap.min.css" >
<!-- Our Custom CSS -->
<link rel="stylesheet" href="https://bootstrapious.com/tutorial/sidebar/style.css">
<!-- Font Awesome JS -->
<script defer src="https://use.fontawesome.com/releases/v5.0.13/js/solid.js"></script>
<script defer src="https://use.fontawesome.com/releases/v5.0.13/js/fontawesome.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script src="https://cdn.ckeditor.com/4.7.3/standard/ckeditor.js"></script>
<script>
$(document).ready(function () {

    var navListItems = $('div.setup-panel div a'),
        allWells = $('.setup-content'),
        allNextBtn = $('.nextBtn');

    allWells.hide();

    navListItems.click(function (e) {
        e.preventDefault();
        var $target = $($(this).attr('href')),
            $item = $(this);

        if (!$item.hasClass('disabled')) {
            navListItems.removeClass('btn-success').addClass('btn-default');
            $item.addClass('btn-success');
            allWells.hide();
            $target.show();
            $target.find('input:eq(0)').focus();
        }
    });

    allNextBtn.click(function () {
        var curStep = $(this).closest(".setup-content"),
            curStepBtn = curStep.attr("id"),
            nextStepWizard = $('div.setup-panel div a[href="#' + curStepBtn + '"]').parent().next().children("a"),
            curInputs = curStep.find("input[type='text'],input[type='url']"),
            isValid = true;

        $(".form-group").removeClass("has-error");
        for (var i = 0; i < curInputs.length; i++) {
            if (!curInputs[i].validity.valid) {
                isValid = false;
                $(curInputs[i]).closest(".form-group").addClass("has-error");
            }
        }

        if (isValid) nextStepWizard.removeAttr('disabled').trigger('click');
    });

    $('div.setup-panel div a.btn-success').trigger('click');
});
CKEDITOR.replace("editor1");
</script>
<!-- 表格CSS -->
<style>
/*-----Background-----*/

body{
	 background-image:url(https://s3.envato.com/files/243754334/primag.jpg);
	 background-repeat:no-repeat;
	 background-size:cover;
	 width:100%;
	 height:100vh;
	 overflow:auto;
	 
}

/*-----for border----*/
.container{
	font-family:Roboto,sans-serif;
	background-image:url(https://www.crazyvector.com/wp-content/uploads/2018/11/5d9b2ab73f78307.jpg) ;
    
    border-style: 1px solid grey;
    margin: 0 auto;
    text-align: center;
    opacity: 0.8;
    margin-top: 67px;
	box-shadow: 2px 5px 5px 0px #eee;
    max-width: 500px;
    padding-top: 10px;
    height: 550px;
    margin-top: 166px;
}
/*-------for productname----------*/
  /*------label----*/
.productname{
	 margin-left: 100px;
     font-family: sans-serif;
     color: black;
     margin-top: 5px;
}

/*-------for color----------*/
  /*------label----*/  
.colorname{
	 margin-left: 100px;
     font-family: sans-serif;
     color: black;
     margin-top: 10px;
}

#cname{
	 margin-top:5px;
}
/*---for heading-----*/
.heading{
	 text-decoration:bold;
	 text-align : center;
	 font-size:30px;
	 color:#800;
	 padding-top:10px;
}
/*-------for size----------*/
  /*------label----*/
.size{
	 margin-left: 100px;
     font-family: sans-serif;
     color: black;
     margin-top: 10px;
}

#size{
	  margin-top: 5px;
}

/*-------for price----------*/
  /*------label----*/
.price{
	 margin-left: 100px;
     font-family: sans-serif;
     color: black;
     margin-top: 10px;
}

#price{
	  margin-top: 5px;
}

/*-------for discount----------*/
  /*------label----*/
.discount{
	 margin-left: 100px;
     font-family: sans-serif;
     color: black;
     margin-top: 10px;
}

#discount{
	  margin-top: 5px;
}

/*-------for productNo----------*/
  /*------label----*/
.productNo{
	 margin-left: 100px;
     font-family: sans-serif;
     color: black;
     margin-top: 10px;
}

#productNo{
	  margin-top: 5px;
}

/*-------for companyId----------*/
  /*------label----*/
.companyId{
	 margin-left: 100px;
     font-family: sans-serif;
     color: black;
     margin-top: 5px;
}

#companyId{
	  margin-top: 13px;
}

/*-------for stock----------*/
  /*------label----*/
.stock{
	 margin-left: 100px;
     font-family: sans-serif;
     color: black;
     margin-top: 10px;
}

#stock{
	  margin-top: 5px;
}

/*-------for stock----------*/
  /*------label----*/
.FImage{
	 margin-left: 100px;
     font-family: sans-serif;
     color: black;
     margin-top: 10px;
}

#FImage{
	  margin-top: 5px;
}
     /*---------- for Input type--------*/
.col-xs-4.male{
	 color: white;
     font-size: 13px;
     margin-top: 9px;
     padding-bottom: 16px;
}
.col-xs-4.female {
     color: white;
     font-size: 13px;
     margin-top: 9px;
     padding-bottom: 16px;
	 padding-right: 95px;
}	
/*------------For submit button---------*/
.sbutton{
	 color: white;
     font-size: 20px;
     border: 1px solid white;
     background-color: #080808;
     width: 32%;
     margin-left: 41%;
     margin-top: 16px;
	 box-shadow: 0px 2px 2px 0px white;
  	   
   }
.btn.btn-warning:hover {
    box-shadow: 2px 1px 2px 3px #99ccff;
	background:#5900a6;
	color:#fff;
	transition: background-color 1.15s ease-in-out,border-color 1.15s ease-in-out,box-shadow 1.15s ease-in-out;
	
}	
</style>
</head>
<body>
<div class="wrapper">
	<!-- Sidebar  -->
        <nav id="sidebar">
            <div class="sidebar-header"><h3>後台系統</h3></div>
            
            <ul class="list-unstyled components">
                <li class="active"><a href="members">會員</a></li>
                <li><a href="#homeSubmenu" data-toggle="collapse" aria-expanded="false" class="dropdown-toggle">活動</a>
                    <ul class="collapse list-unstyled" id="homeSubmenu">
                        <li><a href="eventsAdd">新增活動</a></li>
                        <li><a href="eventsMaintain">上架活動</a></li>
                        <li><a href="eventsPastevents">下架活動</a></li>
                    </ul>
                </li>
                <li><a href="#pageSubmenu" data-toggle="collapse" aria-expanded="false" class="dropdown-toggle">購物</a>
                    <ul class="collapse list-unstyled" id="pageSubmenu">
                        <li><a href="storesAdd">新增產品</a></li>
                        <li><a href="storesMaintain">上架產品</a></li>
                        <li><a href="storesPastproducts">下架產品</a></li>
                    </ul>
                </li>
                <li><a href="#">部落格</a></li>
                <li><a href="ant">公告</a></li>
                <li><a href="#pageSubmenu2" data-toggle="collapse" aria-expanded="false" class="dropdown-toggle">訂單</a>
                    <ul class="collapse list-unstyled" id="pageSubmenu2">
                        <li><a href="#">活動訂單</a></li>
                        <li><a href="#">產品訂單</a></li>
                    </ul>
                </li>
            </ul>

			<ul class="list-unstyled CTAs" >
				<li style="background-color:pink"><a href="${pageContext.request.contextPath}/"
					class="download" style="color:#696969;">回到首頁</a></li>
			</ul>
        </nav>
        
	<!-- Page Content  -->
   	<div id="content">
        <nav class="navbar navbar-expand-lg navbar-light bg-light">
           <div class="container-fluid">
              <button type="button" id="sidebarCollapse" class="btn btn-info"><i class="fas fa-align-left"></i></button>
              <button class="btn btn-dark d-inline-block d-lg-none ml-auto" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                 <i class="fas fa-align-justify"></i>
              </button>
            </div>
         </nav>
	<form:form method='POST' modelAttribute="storeadd"  enctype="multipart/form-data">
	<div class="container">
 	<!---heading---->
     <header class="heading"> 新增產品</header><hr></hr>
	<!---Form starting----> 
	<div class="row">
	<!--- For 產品名稱---->
		<form:hidden  path="productId" />
         <div class="col-sm-12">
             <div class="row">
			     <div class="col-xs-4">
          	         <label class="productname" for='productname'>產品名稱 :</label> </div>
		         <div class="col-xs-8">
		             <form:input type="text" path="productname" id="productname" placeholder="Enter your Product Name" class="form-control last" />
             </div>
		      </div>
		 </div>
		 
	<!--- For 產品顏色----> 
         <div class="col-sm-12">
		     <div class="row">
			     <div class="col-xs-4">
                     <label class="colorname" for='color'>產品顏色 :</label></div>
				<div class ="col-xs-8">	 
		             <form:input type="text" path="color" id="cname" placeholder="Enter your Color" class="form-control last" />
                </div>
		     </div>
		 </div>
	<!--- For 產品尺寸----> 
         <div class="col-sm-12">
		     <div class="row">
			     <div class="col-xs-4">
                     <label class="size" for='size'>產品尺寸 :</label></div>
				<div class ="col-xs-8">	 
		             <form:input type="text" path="size" id="size" placeholder="Enter your Size" class="form-control last" />
                </div>
		     </div>
		 </div>
	<!--- For 產品價格----> 
         <div class="col-sm-12">
		     <div class="row">
			     <div class="col-xs-4">
                     <label class="price" for='price'>產品價格 :</label></div>
				<div class ="col-xs-8">	 
		             <form:input type="text" path="price" id="price" placeholder="Enter your Price" class="form-control last" />
                </div>
		     </div>
		 </div>
	<!--- For 產品折扣----> 
         <div class="col-sm-12">
		     <div class="row">
			     <div class="col-xs-4">
                     <label class="discount" for='discount'>產品折扣 :</label></div>
				<div class ="col-xs-8">	 
		             <form:input type="text" path="discount" id="discount" placeholder="Enter your Ddiscount" class="form-control last" />
                </div>
		     </div>
		 </div>
	<!--- For 產品簡號----> 
         <div class="col-sm-12">
		     <div class="row">
			     <div class="col-xs-4">
                     <label class="productNo" for='productNo'>產品簡號 :</label></div>
				<div class ="col-xs-8">	 
		             <form:input type="text" path="productNo" id="productNo" placeholder="Enter your ProductNo" class="form-control last" />
                </div>
		     </div>
		 </div>	
	<!--- For 產品類型---->
	<div class="form-group">
         <div class="col-sm-12">
		     <div class="row">
			     <div class="col-xs-4">
                     <label class="companyId" for="storecategoryId">產品類型 :</label></div>
				<div class ="col-xs-8">
					<form:select path="storecategoryId" id="companyId">
							<form:option value="-1" label="請挑選" class="form-control last"/>
							<form:options items="${categoryList}" />
					</form:select>
                </div>
		     </div>
		 </div>
	</div>

	<!--- For 產品庫存----> 
         <div class="col-sm-12">
		     <div class="row">
			     <div class="col-xs-4">
                     <label class="stock" for='stock'>產品庫存 :</label></div>
				<div class ="col-xs-8">	 
		             <form:input type="text" path="stock" id="stock" placeholder="Enter your Stock" class="form-control last" />
                </div>
		     </div>
		 </div>
	<!--- For 產品圖片----> 
         <div class="col-sm-12">
		     <div class="row">
			     <div class="col-xs-4">
                     <label class="FImage" for='productFileImage'>產品圖片 :</label></div>
				<div class ="col-xs-8">	 
		             <form:input type="file" path="productFileImage" id="FImage" class='form:input-large'/>
                </div>
		     </div>
	<!--- For 產品狀態(預設)----> 
         <div class="col-sm-12">
		     <div class="row">
			    <div class="col-xs-4">
				<div class ="col-xs-8">	 
		             <form:hidden path="shelf" value="1"/>
                </div>
		     </div>
		 </div>
		 </div>    		     	 
		   <div class="col-sm-12">
		      <div class='col-lg-offset-2 col-lg-10'>
				<input id="btnAdd" type='submit' class='btn btn-primary' value="送出" />
			  </div>
		   </div>
		   </div>
	 </div>					 
</div>	
		</form:form> 	 
	</div>
</div>



	<!-- jQuery CDN - Slim version (=without AJAX) -->
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
    <!-- Popper.JS -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.0/umd/popper.min.js"></script>
    <!-- Bootstrap JS -->
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.0/js/bootstrap.min.js"></script>
    <script type="text/javascript">
        $(document).ready(function () {
            $('#sidebarCollapse').on('click', function () {
                $('#sidebar').toggleClass('active');
            });
        });
    </script>
</body>
</html>
