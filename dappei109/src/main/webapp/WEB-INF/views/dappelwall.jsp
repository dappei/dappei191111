<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<!-- dappeiwall.jsp -->
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
	<jsp:include page="/WEB-INF/views/header2.jsp" />

	<br>
	<br>
	<br>
	<br>
	<div class="container">
		<div class="row">
			<div id="photo-wall">
				<div id="filter">
					<h3>
						<i class="photo"></i>搭配牆 - 第1頁
					</h3>

				</div>
				<div id="photos-list">
					<div class="photo" id="photo-76832">
						<a href="dappelpage"><img alt="時尚穿搭：20181102"
							class="photo-image"
							src="https://images.dappei.com/uploads/photo/image/79750/large_f165a74984645b72.jpg"></a><span
							class="hot-tag red"></span>
						<div class="face"></div>
						<div class="information">
							<a class="like-photo dark " data-id="76832"
								href="javascript:void(0);">
								
									<i class="fa fa-heart"></i><span data-counter="34"></span>
								</a><a class="collect-photo dark " data-id="76832"
								href="javascript:void(0);"><i class="fa fa-star"></i><span
								data-counter="1"></span></a><a class="tag dark"
								href="deppeipage"><i class="fa fa-tag"></i></a><a
								class="comment " href="/photos/76832#comments"></a>
						</div>
					</div>
					<div class="photo" id="photo-76680">
						<a href="/photos/76680"><img alt="時尚穿搭：20181023"
							class="photo-image"
							src="https://images.dappei.com/uploads/photo/image/76680/medium_76a34e60cb72b6c6.jpg"></a><span
							class="hot-tag red"></span>
						<div class="face"></div>
						<div class="information">
							<a class="like-photo dark" data-id="76680"
								href="javascript:void(0);">
<!-- 								<div class="like-photo-container"> -->
									<i class="fa fa-heart"></i><span data-counter="48"></span>
<!-- 								</div> -->
								</a><a class="collect-photo dark " data-id="76680"
								href="javascript:void(0);"><i class="fa fa-star"></i><span
								data-counter="2"></span></a><a class="tag dark"
								href="/photos/76680#tags-preview"><i class="fa fa-tag"></i></a><a
								class="comment " href="/photos/76680#comments"></a>
						</div>
					</div>
					<div class="photo" id="photo-76169">
						<a href="/photos/76169"><img alt="時尚穿搭：20180911"
							class="photo-image"
							src="https://images.dappei.com/uploads/photo/image/76169/medium_b1fa47a26e98b5ea.jpg"></a><span
							class="hot-tag red"></span>
						<div class="face"></div>
						<div class="information">
							<a class="like-photo dark " data-id="76169"
								href="javascript:void(0);">
								
									<i class="fa fa-heart"></i><span data-counter="43"></span>
								</a><a class="collect-photo  " data-id="76169"
								href="javascript:void(0);"><i class="fa fa-star"></i><span
								data-counter="0"></span></a><a class="tag dark"
								href="/photos/76169#tags-preview"><i class="fa fa-tag"></i></a><a
								class="comment dark" href="/photos/76169#comments"></a>
						</div>
					</div>
					<div class="photo last" id="photo-75518">
						<a href="/photos/75518"><img alt="時尚穿搭：＃不要穿普 —— 黑白灰穿搭（2）"
							class="photo-image"
							src="https://images.dappei.com/uploads/photo/image/75518/medium_dea66f94dc6e118f.jpg"></a><span
							class="hot-tag red"></span>
						<div class="face"></div>
						<div class="information">
							<a class="like-photo dark " data-id="75518"
								href="javascript:void(0);">
								
									<i class="fa fa-heart"></i><span data-counter="33"></span>
								</a><a class="collect-photo dark" data-id="75518"
								href="javascript:void(0);"><i class="fa fa-star"></i><span
								data-counter="1"></span></a><a class="tag dark"
								href="/photos/75518#tags-preview"><i class="fa fa-tag"></i></a><a
								class="comment " href="/photos/75518#comments"></a>
						</div>
					</div>
					<div class="photo" id="photo-75415">
						<a href="/photos/75415"><img alt="時尚穿搭：20180627"
							class="photo-image"
							src="https://images.dappei.com/uploads/photo/image/75415/medium_e6c46dd2a12ede8e.jpg"></a><span
							class="hot-tag red"></span>
						<div class="face"></div>
						<div class="information">
							<a class="like-photo dark " data-id="75415"
								href="javascript:void(0);">
								
									<i class="fa fa-heart"></i><span data-counter="45"></span>
								</a><a class="collect-photo dark " data-id="75415"
								href="javascript:void(0);"><i class="fa fa-star"></i><span
								data-counter="2"></span></a><a class="tag dark"
								href="/photos/75415#tags-preview"><i class="fa fa-tag"></i></a><a
								class="comment " href="/photos/75415#comments"></a>
						</div>
					</div>
					<div class="photo" id="photo-74847">
						<a href="/photos/74847"><img
							alt="時尚穿搭：Miriam Mibao 2018-04-18的搭配" class="photo-image"
							src="https://images.dappei.com/uploads/photo/image/74847/medium_7a0d40f0a2ecc79b.jpg"></a><span
							class="hot-tag red"></span>
						<div class="face"></div>
						<div class="information">
							<a class="like-photo dark " data-id="74847"
								href="javascript:void(0);">
								
									<i class="fa fa-heart"></i><span data-counter="35"></span>
								</a><a class="collect-photo dark " data-id="74847"
								href="javascript:void(0);"><i class="fa fa-star"></i><span
								data-counter="2"></span></a><a class="tag "
								href="/photos/74847#tags-preview"><i class="fa fa-tag"></i></a><a
								class="comment " href="/photos/74847#comments"></a>
						</div>
					</div>
					<div class="photo" id="photo-74790">
						<a href="/photos/74790"><img alt="時尚穿搭：北海道春天穿搭"
							class="photo-image"
							src="https://images.dappei.com/uploads/photo/image/74790/medium_95860a919a22f939.jpg"></a><span
							class="hot-tag red"></span>
						<div class="face"></div>
						<div class="information">
							<a class="like-photo dark " data-id="74790"
								href="javascript:void(0);">
									<i class="fa fa-heart"></i><span data-counter="31"></span>
								</a><a class="collect-photo  " data-id="74790"
								href="javascript:void(0);"><i class="fa fa-star"></i><span
								data-counter="0"></span></a><a class="tag dark"
								href="/photos/74790#tags-preview"><i class="fa fa-tag"></i></a><a
								class="comment " href="/photos/74790#comments"></a>
						</div>
					</div>
					<div class="photo last" id="photo-74545">
						<a href="/photos/74545"><img alt="時尚穿搭：20180315"
							class="photo-image"
							src="https://images.dappei.com/uploads/photo/image/74545/medium_25ce8c43f627ff1d.jpg"></a><span
							class="hot-tag red"></span>
								<div class="face"></div>
								<div class="information">
									<a class="like-photo dark " data-id="74545"
										href="javascript:void(0);">
											<i class="fa fa-heart"></i><span data-counter="39"></span>
										</a><a class="collect-photo dark " data-id="74545"
										href="javascript:void(0);"><i class="fa fa-star"></i><span
										data-counter="1"></span></a><a class="tag dark"
										href="/photos/74545#tags-preview"><i class="fa fa-tag"></i></a><a
										class="comment dark" href="/photos/74545#comments"></a>
								</div>
					</div>
					<div class="photo" id="photo-74503">
						<a href="/photos/74503"><img alt="時尚穿搭：Suit Walk 2018"
							class="photo-image"
							src="https://images.dappei.com/uploads/photo/image/74503/medium_60e4fa814404cd0b.jpg"></a><span
							class="hot-tag orange"></span>
						<div class="face"></div>
						<div class="information">
							<a class="like-photo dark " data-id="74503"
								href="javascript:void(0);">
									<i class="fa fa-heart"></i><span data-counter="50"></span>
								</a><a class="collect-photo  " data-id="74503"
								href="javascript:void(0);"><i class="fa fa-star"></i><span
								data-counter="0"></span></a><a class="tag dark"
								href="/photos/74503#tags-preview"><i class="fa fa-tag"></i></a><a
								class="comment dark" href="/photos/74503#comments"></a>
						</div>
					</div>
					<div class="photo" id="photo-74213">
						<a href="/photos/74213"><img alt="時尚穿搭：Great Combo"
							class="photo-image"
							src="https://images.dappei.com/uploads/photo/image/74213/medium_5deab7142c885906.jpg"></a><span
							class="hot-tag red"></span>
						<div class="face"></div>
						<div class="information">
							<a class="like-photo dark " data-id="74213"
								href="javascript:void(0);">
									<i class="fa fa-heart"></i><span data-counter="33"></span>
								</a><a class="collect-photo dark " data-id="74213"
								href="javascript:void(0);"><i class="fa fa-star"></i><span
								data-counter="1"></span></a><a class="tag "
								href="/photos/74213#tags-preview"><i class="fa fa-tag"></i></a><a
								class="comment " href="/photos/74213#comments"></a>
						</div>
					</div>
					<div class="photo" id="photo-74125">
						<a href="/photos/74125"><img alt="時尚穿搭：沉穩的紅！"
							class="photo-image"
							src="https://images.dappei.com/uploads/photo/image/74125/medium_acd9ec458fd9aff7.jpg"></a><span
							class="hot-tag red"></span>
						<div class="face"></div>
						<div class="information">
							<a class="like-photo dark " data-id="74125"
								href="javascript:void(0);">
									<i class="fa fa-heart"></i><span data-counter="42"></span>
								</a><a class="collect-photo  " data-id="74125"
								href="javascript:void(0);"><i class="fa fa-star"></i><span
								data-counter="0"></span></a><a class="tag dark"
								href="/photos/74125#tags-preview"><i class="fa fa-tag"></i></a><a
								class="comment " href="/photos/74125#comments"></a>
						</div>
					</div>
					<div class="photo last" id="photo-74091">
						<a href="/photos/74091"><img alt="時尚穿搭：首爾行"
							class="photo-image"
							src="https://images.dappei.com/uploads/photo/image/74091/medium_fd8a685a2d5abba4.jpg"></a><span
							class="hot-tag red"></span>
						<div class="face"></div>
						<div class="information">
							<a class="like-photo dark " data-id="74091"
								href="javascript:void(0);">
									<i class="fa fa-heart"></i><span data-counter="47"></span>
								</a><a class="collect-photo dark " data-id="74091"
								href="javascript:void(0);"><i class="fa fa-star"></i><span
								data-counter="2"></span></a><a class="tag dark"
								href="/photos/74091#tags-preview"><i class="fa fa-tag"></i></a><a
								class="comment " href="/photos/74091#comments"></a>
						</div>
					</div>
					
					

					</div>

				</div>





			</div>
			<!-- <div id="photo-wall"> -->
		</div>
		<!-- <div class="row"> -->
	</div>
	<!-- <div class="container"> -->

<nav aria-label="Page navigation example">
  <ul class="pagination justify-content-center">
    <li class="page-item "><a class="page-link" href="dappeiwall">Previous</a></li>
    <li class="page-item"><a class="page-link" href="dappeiwall">1</a></li>
    <li class="page-item"><a class="page-link" href="dappeiwall2">2</a></li>
<!--     <li class="page-item"><a class="page-link" href="#">3</a></li> -->
    <li class="page-item"><a class="page-link" href="dappeiwall2">Next</a>
    </li>
  </ul>
</nav>

	<jsp:include page="/WEB-INF/views/footer.jsp" />



</body>
</html>