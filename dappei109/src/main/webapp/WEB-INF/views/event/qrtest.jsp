<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!doctype html>
<html lang="utf-8">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

<title>QR測試頁</title>

<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
<script type="text/javascript">
	function QRCode(content, width, height){
		// 預設寬高為 120x120
		width = !!width ? width : 150 ;
		height = !!height ? height : 150;
		// 編碼
		content = 'http://www.google.com';
		return 'http://chart.apis.google.com/chart?cht=qr&chl=' + content + '&chs=' + width + 'x' + height;
	}
 
	window.onload = function(){
			var msg = document.getElementById('content');
			var imgSrc = QRCode(msg.innerHTML);
			msg.innerHTML = '<img src="' + imgSrc + '" alt="" />';
		
	};
</script>
</head>
<body>
	<jsp:include page="/WEB-INF/views/header.jsp" />
	<br><br><br><br>
	
	<div id="content"></div>
	<form name = 'form' action = '#' method='post'>
            <textarea name="editor" cols="num" rows="num"></textarea>
            <input type = 'button' value = '送出' onclick = 'processData()'>
    </form>
	

	
	<jsp:include page="/WEB-INF/views/footer.jsp" />
	<script src="<c:url value='/js/ckeditor/ckeditor.js'/>"></script> 
	<script>
	CKEDITOR.replace('editor', {
		width:800,
        height: 400,
    });
	CKEDITOR.editorConfig = function(config ){
		config.resize_enabled = false;
			  };
	</script>
</body>
</html>

