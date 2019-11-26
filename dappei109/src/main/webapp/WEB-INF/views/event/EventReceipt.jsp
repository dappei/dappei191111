<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!doctype html>
<html lang="utf-8">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

<title>${oevent.event.eventName}</title>

<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>

<style>
*{font-family: 微軟正黑體;}
	.text-danger strong {
   		color: #9f181c;
	}
	.receipt-main {
		background: #ffffff none repeat scroll 0 0;
		border-bottom: 12px solid #333333;
		border-top: 12px solid #9f181c;
		margin-top: 50px;
		margin-bottom: 50px;
		padding: 40px 30px !important;
		position: relative;
		box-shadow: 0 1px 21px #acacac;
		color: #333333;
		font-family: open sans;
	}
	.receipt-main p {
		color: #333333;
		font-family: open sans;
		line-height: 1.42857;
	}
	.receipt-footer h1 {
		font-size: 20px;
		font-weight: 400 !important;
		margin: 0 !important;
	}
	.receipt-main::after {
		background: #414143 none repeat scroll 0 0;
		content: "";
		height: 5px;
		left: 0;
		position: absolute;
		right: 0;
		top: -13px;
	}
	.receipt-main thead {
		background: #414143 none repeat scroll 0 0;
	}
	.receipt-main thead th {
		color:#fff;
	}
	.receipt-right h5 {
		font-size: 20px;
		font-weight: bold;
		margin: 0 0 7px 0;
	}
	.receipt-right p {
		font-size: 15px;
		margin: 0px;
	}
	.receipt-right p i {
		text-align: center;
		width: 18px;
	}
	.receipt-main td {
		padding: 9px 20px !important;
	}
	.receipt-main th {
		padding: 13px 20px !important;
	}
	.receipt-main td {
		font-size: 15px;
		font-weight: initial !important;
	}
	.receipt-main td p:last-child {
		margin: 0;
		padding: 0;
	}	
	.receipt-main td h2 {
		font-size: 30px;
		font-weight: 900;
		margin: 0;
		text-transform: uppercase;
	}
	#container {
		background-color: #dcdcdc;
	}
</style>

</head>
<body>
	<jsp:include page="/WEB-INF/views/header2.jsp" />	
	<br><br><br><br>

	<div class="container">
	<a href='printEvent${oevent.orderid}.pdf'>按此下載PDF檔</a>
	<div class="row"><!-- 表格前標頭 -->
        <div class="receipt-main col-xs-10 col-sm-10 col-md-6 col-xs-offset-1 col-sm-offset-1 col-md-offset-3">
            <div class="row">			
				<div class="col-8"><br>
					<h5>訂購人:${oevent.name}</h5>
					<p style="font-family: Arial;margin:5px 0 5px 0">E-mail:${oevent.email} </p>
					<p style="margin:8px 0 0 ">訂單編號:  ${oevent.orderid} </p>
				</div>
				<div class="col">
					<img src="http://chart.apis.google.com/chart?cht=qr&chl=${oevent.orderid}&chs=150x150" />
				</div>				
            </div><br>				
			<h2>收據</h2><br>

            <div><!-- 表格 -->
                <table class="table table-bordered">
                    <thead>
                        <tr><th>活動名稱</th><th>數量</th><th>金額</th></tr>
                    </thead>
                    <tbody>
                        <tr>
                        <td class="col-md-9">${oevent.event.eventName}</td>
                        <td class="col-md-2 text-center">${oevent.quantity}</td>
                        <td class="col-md-3">${fn:substring(oevent.totalprice/oevent.quantity,0,3)}</td>
                        </tr>
                        <tr>
                            <td class="col-md-9"></td>
                            <td class="col-md-2"></td>
                            <td class="col-md-3"></td>
                        </tr>
                        <tr>
                            <td class="col-md-9"></td>
                            <td class="col-md-2"></td>
                            <td class="col-md-3"></td>
                        </tr>
                        <tr>
                        	<td></td>
                            <td class="text-right"><strong>Total: </strong></td>
                            <td class="text-left text-danger"><strong>${oevent.totalprice}</strong></td>
                        </tr>
                    </tbody>
                </table>
            </div>
			
			<div class="row">
				<div class="receipt-footer">
					<div class="col text-left">
						<div class="receipt-right">
							<p><b>訂購時間:</b></p>
							<p>${fn:substring(oevent.orderdate,0,16)}</p>
							<h5 style="color: rgb(140, 140, 140);">感謝你的購買!</h5>
						</div>
					</div>
				</div>
            </div>
			
        </div>    
	</div>
	</div><br><br>

	<jsp:include page="/WEB-INF/views/footer.jsp" />
</body>
</html>

