<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<html>
<head>
<meta charset="UTF-8">

<title>新增活動</title>
<!-- Bootstrap CSS CDN -->
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.0/css/bootstrap.min.css" >
<!-- Our Custom CSS -->
<link rel="stylesheet" href="https://bootstrapious.com/tutorial/sidebar/style.css">
<!-- Font Awesome JS -->
<script defer src="https://use.fontawesome.com/releases/v5.0.13/js/solid.js"></script>
<script defer src="https://use.fontawesome.com/releases/v5.0.13/js/fontawesome.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
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
 body {
    margin-top:30px;
}
.stepwizard-step p {
    margin-top: 0px;
    color:#666;
}
.stepwizard-row {
    display: table-row;
}
.stepwizard {
    display: table;
    width: 100%;
    position: relative;
}
.stepwizard-step button[disabled] {
    /*opacity: 1 !important;
    filter: alpha(opacity=100) !important;*/
}
.stepwizard .btn.disabled, .stepwizard .btn[disabled], .stepwizard fieldset[disabled] .btn {
    opacity:1 !important;
    color:#bbb;
}
.stepwizard-row:before {
    top: 14px;
    bottom: 0;
    position: absolute;
    content:" ";
    width: 100%;
    height: 1px;
    background-color: #ccc;
    z-index: 0;
}
.stepwizard-step {
    display: table-cell;
    text-align: center;
    position: relative;
}
.btn-circle {
    width: 30px;
    height: 30px;
    text-align: center;
    padding: 6px 0;
    font-size: 12px;
    line-height: 1.428571429;
    border-radius: 15px;
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
                        <li><a href="#">新增產品</a></li>
                        <li><a href="#">上架產品</a></li>
                        <li><a href="#">下架產品</a></li>
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

            <ul class="list-unstyled CTAs">
                <li><a href="${pageContext.request.contextPath}/" class="download">回到首頁</a></li>
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
      <div class="stepwizard">
        <div class="stepwizard-row setup-panel">
            <div class="stepwizard-step col-xs-3"> 
                <a href="#step-1" type="button" class="btn btn-success btn-circle">1</a>
                <p ><small>活動類型</small></p>
            </div>
            <div class="stepwizard-step col-xs-3"> 
                <a href="#step-2" type="button" class="btn btn-default btn-circle" disabled="disabled">2</a>
                <p><small>活動基本資訊</small></p>
            </div>
            <div class="stepwizard-step col-xs-3"> 
                <a href="#step-3" type="button" class="btn btn-default btn-circle" disabled="disabled">3</a>
                <p><small>活動內容</small></p>
            </div>
            <div class="stepwizard-step col-xs-3"> 
                <a href="#step-4" type="button" class="btn btn-default btn-circle" disabled="disabled">4</a>
                <p><small>人數上限/金額</small></p>
            </div>
        </div>
    </div>
    
    <form:form method='POST' modelAttribute="eventBean"  enctype="multipart/form-data">
    	<form:hidden path="eventId" />
    	<form:hidden path="exist" value="1"/>
        <div class="panel panel-primary setup-content" id="step-1">
            <div class="panel-heading">
                 <h3 class="panel-title">活動類型</h3>
            </div>
            <div class="panel-body">
                <div class="form-group">
                    <form:radiobuttons path="type" items='${typeMap}'/>
                </div>
                <button class="btn btn-primary nextBtn pull-right" type="button">下一步</button>
            </div>
        </div>
     
        <div class="panel panel-primary setup-content" id="step-2">
            <div class="panel-heading">
                 <h3 class="panel-title">活動基本資訊</h3>
            </div>
            <div class="panel-body">
                <div class="form-group">
					<label class="control-label col-lg-2 col-lg-2" for='eventName'>活動名稱 </label>
					<div class="col-lg-10"><form:input class="form-control" path="eventName" /></div>
				</div>
                <div class="form-group">
					<label class="control-label col-lg-2 col-lg-2"  for='eventStartTime'>活動開始時間 </label>
					<div class="col-lg-10"><form:input class="form-control" path="eventStartTime" /></div>
				</div>
				<div class="form-group">
					<label class="control-label col-lg-2 col-lg-2"  for='eventEndTime'>活動結束時間 </label>
					<div class="col-lg-10"><form:input class="form-control" path="eventEndTime" /></div>
				</div>
				<div class="form-group">
					<label class="control-label col-lg-2 col-lg-2"  for='location'>活動地點 </label>
					<div class="col-lg-10"><form:input class="form-control" path="location" /></div>
				</div>
                <button class="btn btn-primary nextBtn pull-right" type="button">下一步</button>
            </div>
        </div>
        
        <div class="panel panel-primary setup-content" id="step-3">
            <div class="panel-heading">
                 <h3 class="panel-title">活動內容</h3>
            </div>
            <div class="panel-body">
                <div class="form-group">              
					<form:textarea path="aboutEvent" rows="40" cols="120"></form:textarea>
                </div>
                
                <button class="btn btn-primary nextBtn pull-right" type="button">下一步</button>
            </div>
        </div>
        
        <div class="panel panel-primary setup-content" id="step-4">
            <div class="panel-heading">
                 <h3 class="panel-title">人數上限/金額</h3>
            </div>
            <div class="form-group">
				<label class="control-label col-lg-2 col-lg-2"  for='maxPeople'>活動人數上限 </label>
					<div class="col-lg-10"><form:input class="form-control" path="maxPeople" /></div>
				</div>			
				<div class="form-group">
					<label class="control-label col-lg-2 col-lg-2"  for='price'>金額</label>
					<div class="col-lg-10"><form:input class="form-control" path="price" /></div>
				</div>
				<div class="form-group">
					<label class='control-label col-lg-2 col-lg-2' for="eventImage">活動圖片</label>
					<div class='col-lg-10'><form:input id="eventImage" path="eventImage" type='file' class='form:input-large' /></div>
				</div>
                <button class="btn btn-success pull-right" type="submit">完成</button>
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
