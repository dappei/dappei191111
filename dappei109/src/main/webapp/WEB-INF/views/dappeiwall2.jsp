<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>穿搭牆</title>

<style>
#filter-options {
	float: right;
}

#filter-options .group {
	float: left;
	margin-right: 10px;
	*zoom: 1;
}

#filter-options .group li a {
	display: block;
	padding: 10px 15px;
	border: 1px solid #ddd;
	border-right: 0;
	background: #fff;
}

}
#photos-list {
	*zoom: 1;
}

#photos-list .photo {
	position: relative;
	float: left;
	margin: 0 8px 20px 0;
	width: 234px;
}

#photos-list .photo .photo-image {
	width: 234px;
	height: 375px;
	-moz-box-sizing: border-box;
	-webkit-box-sizing: border-box;
	box-sizing: border-box;
}
</style>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">

</head>
<body>
	<jsp:include page="/WEB-INF/views/header.jsp" />

	<br>
	<br>
	<br>
	<br>
	<div class="container">
		<div class="row">
			<div id="photo-wall">
				<div id="filter">
					<h3>
						<i class="photo"></i>搭配牆 - 第2頁
					</h3>

				</div>

				<div id="photos-list">
					<div class="photo" id="photo-74049">
						<a href="/photos/74049"><img alt="時尚穿搭：很久沒穿黑色窄褲"
							class="photo-image"
							src="https://images.dappei.com/uploads/photo/image/74049/medium_60405c4a8117f483.jpg"></a><span
							class="hot-tag red"></span>
						<div class="face"></div>
						<div class="information">
							<a class="like-photo dark " data-id="74049"
								href="javascript:void(0);">
								<i class="fa fa-heart"></i><span data-counter="46"></span>
								 </a><a class="collect-photo dark " data-id="74049"
								href="javascript:void(0);"><i class="fa fa-star"></i><span
								data-counter="3"></span></a><a class="tag "
								href="/photos/74049#tags-preview"><i class="fa fa-tag"></i></a><a
								class="comment " href="/photos/74049#comments"></a>
						</div>
					</div>
					<div class="photo" id="photo-74028">
						<a href="/photos/74028"><img alt="時尚穿搭：張小丹style之休閒甜美LOOK"
							class="photo-image"
							src="https://images.dappei.com/uploads/photo/image/74028/medium_3586b8787fe62e0f.jpg"></a><span
							class="hot-tag orange"></span>
						<div class="face"></div>
						<div class="information">
							<a class="like-photo dark " data-id="74028"
								href="javascript:void(0);">
									<i class="fa fa-heart"></i><span data-counter="54"></span>
								</a><a class="collect-photo dark " data-id="74028"
								href="javascript:void(0);"><i class="fa fa-star"></i><span
								data-counter="3"></span></a><a class="tag dark"
								href="/photos/74028#tags-preview"><i class="fa fa-tag"></i></a><a
								class="comment " href="/photos/74028#comments"></a>
						</div>
					</div>
					<div class="photo" id="photo-73991">
						<a href="/photos/73991"><img alt="時尚穿搭：居然2018惹"
							class="photo-image"
							src="https://images.dappei.com/uploads/photo/image/73991/medium_eddb0b16af54b955.jpg"></a><span
							class="hot-tag yellow"></span>
						<div class="face"></div>
						<div class="information">
							<a class="like-photo dark " data-id="73991"
								href="javascript:void(0);">
									<i class="fa fa-heart"></i><span data-counter="83"></span>
								</a><a class="collect-photo dark " data-id="73991"
								href="javascript:void(0);"><i class="fa fa-star"></i><span
								data-counter="3"></span></a><a class="tag dark"
								href="/photos/73991#tags-preview"><i class="fa fa-tag"></i></a><a
								class="comment " href="/photos/73991#comments"></a>
						</div>
					</div>
					<div class="photo last" id="photo-73975">
						<a href="/photos/73975"><img alt="時尚穿搭：20180110"
							class="photo-image"
							src="https://images.dappei.com/uploads/photo/image/73975/medium_4f7c18cc0bf591f8.jpg"></a><span
							class="hot-tag orange"></span>
						<div class="face"></div>
						<div class="information">
							<a class="like-photo dark " data-id="73975"
								href="javascript:void(0);">
									<i class="fa fa-heart"></i><span data-counter="53"></span>
								</a><a class="collect-photo dark " data-id="73975"
								href="javascript:void(0);"><i class="fa fa-star"></i><span
								data-counter="5"></span></a><a class="tag dark"
								href="/photos/73975#tags-preview"><i class="fa fa-tag"></i></a><a
								class="comment " href="/photos/73975#comments"></a>
						</div>
					</div>
					<div class="photo" id="photo-73965">
						<a href="/photos/73965"><img alt="時尚穿搭：北海道室內穿搭"
							class="photo-image"
							src="https://images.dappei.com/uploads/photo/image/73965/medium_a9fce32386e65249.jpg"></a><span
							class="hot-tag red"></span>
						<div class="face"></div>
						<div class="information">
							<a class="like-photo dark " data-id="73965"
								href="javascript:void(0);">
									<i class="fa fa-heart"></i><span data-counter="36"></span>
								</a><a class="collect-photo  " data-id="73965"
								href="javascript:void(0);"><i class="fa fa-star"></i><span
								data-counter="0"></span></a><a class="tag "
								href="/photos/73965#tags-preview"><i class="fa fa-tag"></i></a><a
								class="comment " href="/photos/73965#comments"></a>
						</div>
					</div>
					<div class="photo" id="photo-73958">
						<a href="/photos/73958"><img alt="時尚穿搭：20180108"
							class="photo-image"
							src="https://images.dappei.com/uploads/photo/image/73958/medium_16e6e8c0ec30f78f.jpg"></a><span
							class="hot-tag red"></span>
						<div class="face"></div>
						<div class="information">
							<a class="like-photo dark " data-id="73958"
								href="javascript:void(0);">
									<i class="fa fa-heart"></i><span data-counter="47"></span>
								</a><a class="collect-photo dark " data-id="73958"
								href="javascript:void(0);"><i class="fa fa-star"></i><span
								data-counter="2"></span></a><a class="tag dark"
								href="/photos/73958#tags-preview"><i class="fa fa-tag"></i></a><a
								class="comment dark" href="/photos/73958#comments"></a>
						</div>
					</div>
					<div class="photo" id="photo-73953">
						<a href="/photos/73953"><img alt="時尚穿搭：燕麥牛奶 "
							class="photo-image"
							src="https://images.dappei.com/uploads/photo/image/73953/medium_479b21d686725a3d.jpg"></a><span
							class="hot-tag orange"></span>
						<div class="face"></div>
						<div class="information">
							<a class="like-photo dark " data-id="73953"
								href="javascript:void(0);">
									<i class="fa fa-heart"></i><span data-counter="63"></span>
								</a><a class="collect-photo dark " data-id="73953"
								href="javascript:void(0);"><i class="fa fa-star"></i><span
								data-counter="3"></span></a><a class="tag dark"
								href="/photos/73953#tags-preview"><i class="fa fa-tag"></i></a><a
								class="comment " href="/photos/73953#comments"></i></a>
						</div>
					</div>
					<div class="photo last" id="photo-73919">
						<a href="/photos/73919"><img alt="時尚穿搭：格紋西裝外套 I"
							class="photo-image"
							src="https://images.dappei.com/uploads/photo/image/73919/medium_e5c507ac11fccbad.jpg"></a><span
							class="hot-tag red"></span>
						<div class="face"></div>
						<div class="information">
							<a class="like-photo dark " data-id="73919"
								href="javascript:void(0);">
									<i class="fa fa-heart"></i><span data-counter="41"></span>
								</a><a class="collect-photo dark " data-id="73919"
								href="javascript:void(0);"><i class="fa fa-star"></i><span
								data-counter="2"></span></a><a class="tag dark"
								href="/photos/73919#tags-preview"><i class="fa fa-tag"></i></a><a
								class="comment " href="/photos/73919#comments"></a> <br>

						</div>
					</div>
				</div>
			</div>
		</div>
	</div>


	<nav aria-label="Page navigation example">
		<ul class="pagination justify-content-center">
			<li class="page-item "><a class="page-link" href="dappeiwall">Previous</a></li>
			<li class="page-item"><a class="page-link" href="dappeiwall">1</a></li>
			<li class="page-item"><a class="page-link" href="dappeiwall2">2</a></li>
<!-- 			<li class="page-item"><a class="page-link" href="#">3</a></li> -->
			<li class="page-item"><a class="page-link" href="dappeiwall2">Next</a></li>
		</ul>
	</nav>

	<jsp:include page="/WEB-INF/views/footer.jsp" />

</body>
</html>