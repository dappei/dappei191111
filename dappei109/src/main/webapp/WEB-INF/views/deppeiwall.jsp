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
						<i class="photo"></i>搭配牆 - 第1頁
					</h3>

				</div>
				<div id="photos-list">
					<div class="photo" id="photo-76832">
						<a href="/photos/76832"><img alt="時尚穿搭：20181102"
							class="photo-image"
							src="https://images.dappei.com/uploads/photo/image/76832/medium_b4a06d7d70a8e909.jpg"></a><span
							class="hot-tag red">hot</span>
						<div class="face">
							<a href="/user/zhan1209"><img alt="陳捲毛的穿搭"
								src="https://images.dappei.com/uploads/user/face/1945/small_8d0ea0fd8ee8f31f.jpg?timestamp=1569858014"></a>
						</div>
						<div class="information">
							<a class="like-photo dark " data-id="76832"
								href="javascript:void(0);"><div class="like-photo-container">
									<i class="fa fa-heart"></i><span data-counter="34">34</span>
								</div></a><a class="collect-photo dark " data-id="76832"
								href="javascript:void(0);"><i class="fa fa-star"></i><span
								data-counter="1">1</span></a><a class="tag dark"
								href="/photos/76832#tags-preview"><i class="fa fa-tag"></i>4</a><a
								class="comment " href="/photos/76832#comments"><i
								class="fa fa-comment"></i>0</a>
						</div>
					</div>
					<div class="photo" id="photo-76680">
						<a href="/photos/76680"><img alt="時尚穿搭：20181023"
							class="photo-image"
							src="https://images.dappei.com/uploads/photo/image/76680/medium_76a34e60cb72b6c6.jpg"></a><span
							class="hot-tag red">hot</span>
						<div class="face">
							<a href="/user/Chainloop"><img alt="圈入準的穿搭"
								src="https://images.dappei.com/uploads/user/face/1374/small_e88ff92196283ddd.jpg?timestamp=1573797366"></a>
						</div>
						<div class="information">
							<a class="like-photo dark" data-id="76680"
								href="javascript:void(0);"><div class="like-photo-container">
									<i class="fa fa-heart"></i><span data-counter="48">48</span>
								</div></a><a class="collect-photo dark " data-id="76680"
								href="javascript:void(0);"><i class="fa fa-star"></i><span
								data-counter="2">2</span></a><a class="tag dark"
								href="/photos/76680#tags-preview"><i class="fa fa-tag"></i>1</a><a
								class="comment " href="/photos/76680#comments"><i
								class="fa fa-comment"></i>0</a>
						</div>
					</div>
					<div class="photo" id="photo-76169">
						<a href="/photos/76169"><img alt="時尚穿搭：20180911"
							class="photo-image"
							src="https://images.dappei.com/uploads/photo/image/76169/medium_b1fa47a26e98b5ea.jpg"></a><span
							class="hot-tag red">hot</span>
						<div class="face">
							<a href="/user/Chainloop"><img alt="圈入準的穿搭"
								src="https://images.dappei.com/uploads/user/face/1374/small_e88ff92196283ddd.jpg?timestamp=1573797366"></a>
						</div>
						<div class="information">
							<a class="like-photo dark " data-id="76169"
								href="javascript:void(0);"><div class="like-photo-container">
									<i class="fa fa-heart"></i><span data-counter="43">43</span>
								</div></a><a class="collect-photo  " data-id="76169"
								href="javascript:void(0);"><i class="fa fa-star"></i><span
								data-counter="0">0</span></a><a class="tag dark"
								href="/photos/76169#tags-preview"><i class="fa fa-tag"></i>5</a><a
								class="comment dark" href="/photos/76169#comments"><i
								class="fa fa-comment"></i>2</a>
						</div>
					</div>
					<div class="photo last" id="photo-75518">
						<a href="/photos/75518"><img alt="時尚穿搭：＃不要穿普 —— 黑白灰穿搭（2）"
							class="photo-image"
							src="https://images.dappei.com/uploads/photo/image/75518/medium_dea66f94dc6e118f.jpg"></a><span
							class="hot-tag red">hot</span>
						<div class="face">
							<a href="/user/melodycheng"><img alt="Melody 美樂弟的穿搭"
								src="https://images.dappei.com/uploads/user/face/72229/small_761ca0bf251350b1.jpg?timestamp=1573701573"></a>
						</div>
						<div class="information">
							<a class="like-photo dark " data-id="75518"
								href="javascript:void(0);"><div class="like-photo-container">
									<i class="fa fa-heart"></i><span data-counter="33">33</span>
								</div></a><a class="collect-photo dark" data-id="75518"
								href="javascript:void(0);"><i class="fa fa-star"></i><span
								data-counter="1">1</span></a><a class="tag dark"
								href="/photos/75518#tags-preview"><i class="fa fa-tag"></i>1</a><a
								class="comment " href="/photos/75518#comments"><i
								class="fa fa-comment"></i>0</a>
						</div>
					</div>
					<div class="photo" id="photo-75415">
						<a href="/photos/75415"><img alt="時尚穿搭：20180627"
							class="photo-image"
							src="https://images.dappei.com/uploads/photo/image/75415/medium_e6c46dd2a12ede8e.jpg"></a><span
							class="hot-tag red">hot</span>
						<div class="face">
							<a href="/user/Chainloop"><img alt="圈入準的穿搭"
								src="https://images.dappei.com/uploads/user/face/1374/small_e88ff92196283ddd.jpg?timestamp=1573797366"></a>
						</div>
						<div class="information">
							<a class="like-photo dark " data-id="75415"
								href="javascript:void(0);"><div class="like-photo-container">
									<i class="fa fa-heart"></i><span data-counter="45">45</span>
								</div></a><a class="collect-photo dark " data-id="75415"
								href="javascript:void(0);"><i class="fa fa-star"></i><span
								data-counter="2">2</span></a><a class="tag dark"
								href="/photos/75415#tags-preview"><i class="fa fa-tag"></i>6</a><a
								class="comment " href="/photos/75415#comments"><i
								class="fa fa-comment"></i>0</a>
						</div>
					</div>
					<div class="photo" id="photo-74847">
						<a href="/photos/74847"><img
							alt="時尚穿搭：Miriam Mibao 2018-04-18的搭配" class="photo-image"
							src="https://images.dappei.com/uploads/photo/image/74847/medium_7a0d40f0a2ecc79b.jpg"></a><span
							class="hot-tag red">hot</span>
						<div class="face">
							<a href="/user/mibao"><img alt="Miriam Mibao的穿搭"
								src="https://images.dappei.com/uploads/user/face/16835/small_e6e7980d9eb611fb.jpg?timestamp=1571760358"></a>
						</div>
						<div class="information">
							<a class="like-photo dark " data-id="74847"
								href="javascript:void(0);"><div class="like-photo-container">
									<i class="fa fa-heart"></i><span data-counter="35">35</span>
								</div></a><a class="collect-photo dark " data-id="74847"
								href="javascript:void(0);"><i class="fa fa-star"></i><span
								data-counter="2">2</span></a><a class="tag "
								href="/photos/74847#tags-preview"><i class="fa fa-tag"></i>0</a><a
								class="comment " href="/photos/74847#comments"><i
								class="fa fa-comment"></i>0</a>
						</div>
					</div>
					<div class="photo" id="photo-74790">
						<a href="/photos/74790"><img alt="時尚穿搭：北海道春天穿搭"
							class="photo-image"
							src="https://images.dappei.com/uploads/photo/image/74790/medium_95860a919a22f939.jpg"></a><span
							class="hot-tag red">hot</span>
						<div class="face">
							<a href="/user/brother0711"><img alt="NICK的穿搭"
								src="https://images.dappei.com/uploads/user/face/7307/small_03df834d449856f6.jpg?timestamp=1573736818"></a>
						</div>
						<div class="information">
							<a class="like-photo dark " data-id="74790"
								href="javascript:void(0);"><div class="like-photo-container">
									<i class="fa fa-heart"></i><span data-counter="31">31</span>
								</div></a><a class="collect-photo  " data-id="74790"
								href="javascript:void(0);"><i class="fa fa-star"></i><span
								data-counter="0">0</span></a><a class="tag dark"
								href="/photos/74790#tags-preview"><i class="fa fa-tag"></i>9</a><a
								class="comment " href="/photos/74790#comments"><i
								class="fa fa-comment"></i>0</a>
						</div>
					</div>
					<div class="photo last" id="photo-74545">
						<a href="/photos/74545"><img alt="時尚穿搭：20180315"
							class="photo-image"
							src="https://images.dappei.com/uploads/photo/image/74545/medium_25ce8c43f627ff1d.jpg"></a><span
							class="hot-tag red">hot</span>
						<div class="face">
							<a href="/user/Chainloop"><img alt="圈入準的穿搭"
								src="https://images.dappei.com/uploads/user/face/1374/small_e88ff92196283ddd.jpg?timestamp=1573797366"></a>
						</div>
						<div class="information">
							<a class="like-photo dark " data-id="74545"
								href="javascript:void(0);"><div class="like-photo-container">
									<i class="fa fa-heart"></i><span data-counter="39">39</span>
								</div></a><a class="collect-photo dark " data-id="74545"
								href="javascript:void(0);"><i class="fa fa-star"></i><span
								data-counter="1">1</span></a><a class="tag dark"
								href="/photos/74545#tags-preview"><i class="fa fa-tag"></i>4</a><a
								class="comment dark" href="/photos/74545#comments"><i
								class="fa fa-comment"></i>1</a>
						</div>
					</div>
					<div class="photo" id="photo-74503">
						<a href="/photos/74503"><img alt="時尚穿搭：Suit Walk 2018"
							class="photo-image"
							src="https://images.dappei.com/uploads/photo/image/74503/medium_60e4fa814404cd0b.jpg"></a><span
							class="hot-tag orange">hot</span>
						<div class="face">
							<a href="/user/familybros"><img alt="唯家的穿搭"
								src="https://images.dappei.com/uploads/user/face/41/small_dac8d6cb404b4984.jpg?timestamp=1573835254"></a>
						</div>
						<div class="information">
							<a class="like-photo dark " data-id="74503"
								href="javascript:void(0);"><div class="like-photo-container">
									<i class="fa fa-heart"></i><span data-counter="50">50</span>
								</div></a><a class="collect-photo  " data-id="74503"
								href="javascript:void(0);"><i class="fa fa-star"></i><span
								data-counter="0">0</span></a><a class="tag dark"
								href="/photos/74503#tags-preview"><i class="fa fa-tag"></i>3</a><a
								class="comment dark" href="/photos/74503#comments"><i
								class="fa fa-comment"></i>1</a>
						</div>
					</div>
					<div class="photo" id="photo-74213">
						<a href="/photos/74213"><img alt="時尚穿搭：Great Combo"
							class="photo-image"
							src="https://images.dappei.com/uploads/photo/image/74213/medium_5deab7142c885906.jpg"></a><span
							class="hot-tag red">hot</span>
						<div class="face">
							<a href="/user/petrinahsieh"><img alt="Petrina Hsieh的穿搭"
								src="https://images.dappei.com/uploads/user/face/26338/small_8d948a952da2b7c0.jpg?timestamp=1573844021"></a>
						</div>
						<div class="information">
							<a class="like-photo dark " data-id="74213"
								href="javascript:void(0);"><div class="like-photo-container">
									<i class="fa fa-heart"></i><span data-counter="33">33</span>
								</div></a><a class="collect-photo dark " data-id="74213"
								href="javascript:void(0);"><i class="fa fa-star"></i><span
								data-counter="1">1</span></a><a class="tag "
								href="/photos/74213#tags-preview"><i class="fa fa-tag"></i>0</a><a
								class="comment " href="/photos/74213#comments"><i
								class="fa fa-comment"></i>0</a>
						</div>
					</div>
					<div class="photo" id="photo-74125">
						<a href="/photos/74125"><img alt="時尚穿搭：沉穩的紅！"
							class="photo-image"
							src="https://images.dappei.com/uploads/photo/image/74125/medium_acd9ec458fd9aff7.jpg"></a><span
							class="hot-tag red">hot</span>
						<div class="face">
							<a href="/user/eyes198877han"><img alt="77涵的穿搭"
								src="https://images.dappei.com/uploads/user/face/19/small_1784e91db6528e64.jpg?timestamp=1573797766"></a>
						</div>
						<div class="information">
							<a class="like-photo dark " data-id="74125"
								href="javascript:void(0);"><div class="like-photo-container">
									<i class="fa fa-heart"></i><span data-counter="42">42</span>
								</div></a><a class="collect-photo  " data-id="74125"
								href="javascript:void(0);"><i class="fa fa-star"></i><span
								data-counter="0">0</span></a><a class="tag dark"
								href="/photos/74125#tags-preview"><i class="fa fa-tag"></i>1</a><a
								class="comment " href="/photos/74125#comments"><i
								class="fa fa-comment"></i>0</a>
						</div>
					</div>
					<div class="photo last" id="photo-74091">
						<a href="/photos/74091"><img alt="時尚穿搭：首爾行"
							class="photo-image"
							src="https://images.dappei.com/uploads/photo/image/74091/medium_fd8a685a2d5abba4.jpg"></a><span
							class="hot-tag red">hot</span>
						<div class="face">
							<a href="/user/eyes198877han"><img alt="77涵的穿搭"
								src="https://images.dappei.com/uploads/user/face/19/small_1784e91db6528e64.jpg?timestamp=1573797766"></a>
						</div>
						<div class="information">
							<a class="like-photo dark " data-id="74091"
								href="javascript:void(0);"><div class="like-photo-container">
									<i class="fa fa-heart"></i><span data-counter="47">47</span>
								</div></a><a class="collect-photo dark " data-id="74091"
								href="javascript:void(0);"><i class="fa fa-star"></i><span
								data-counter="2">2</span></a><a class="tag dark"
								href="/photos/74091#tags-preview"><i class="fa fa-tag"></i>1</a><a
								class="comment " href="/photos/74091#comments"><i
								class="fa fa-comment"></i>0</a>
						</div>
					</div>
					<div class="photo" id="photo-74049">
						<a href="/photos/74049"><img alt="時尚穿搭：很久沒穿黑色窄褲"
							class="photo-image"
							src="https://images.dappei.com/uploads/photo/image/74049/medium_60405c4a8117f483.jpg"></a><span
							class="hot-tag red">hot</span>
						<div class="face">
							<a href="/user/chichie04"><img alt="李勤的穿搭"
								src="https://images.dappei.com/uploads/user/face/29436/small_ac5071901afebf1c.jpg?timestamp=1573406566"></a>
						</div>
						<div class="information">
							<a class="like-photo dark " data-id="74049"
								href="javascript:void(0);"><div class="like-photo-container">
									<i class="fa fa-heart"></i><span data-counter="46">46</span>
								</div></a><a class="collect-photo dark " data-id="74049"
								href="javascript:void(0);"><i class="fa fa-star"></i><span
								data-counter="3">3</span></a><a class="tag "
								href="/photos/74049#tags-preview"><i class="fa fa-tag"></i>0</a><a
								class="comment " href="/photos/74049#comments"><i
								class="fa fa-comment"></i>0</a>
						</div>
					</div>
					<div class="photo" id="photo-74028">
						<a href="/photos/74028"><img alt="時尚穿搭：張小丹style之休閒甜美LOOK"
							class="photo-image"
							src="https://images.dappei.com/uploads/photo/image/74028/medium_3586b8787fe62e0f.jpg"></a><span
							class="hot-tag orange">hot</span>
						<div class="face">
							<a href="/user/dan0913"><img alt="張小丹的穿搭"
								src="https://images.dappei.com/uploads/user/face/62957/small_97b12c82b4eb8249.jpg?timestamp=1566550271"></a>
						</div>
						<div class="information">
							<a class="like-photo dark " data-id="74028"
								href="javascript:void(0);"><div class="like-photo-container">
									<i class="fa fa-heart"></i><span data-counter="54">54</span>
								</div></a><a class="collect-photo dark " data-id="74028"
								href="javascript:void(0);"><i class="fa fa-star"></i><span
								data-counter="3">3</span></a><a class="tag dark"
								href="/photos/74028#tags-preview"><i class="fa fa-tag"></i>5</a><a
								class="comment " href="/photos/74028#comments"><i
								class="fa fa-comment"></i>0</a>
						</div>
					</div>
					<div class="photo" id="photo-73991">
						<a href="/photos/73991"><img alt="時尚穿搭：居然2018惹"
							class="photo-image"
							src="https://images.dappei.com/uploads/photo/image/73991/medium_eddb0b16af54b955.jpg"></a><span
							class="hot-tag yellow">hot</span>
						<div class="face">
							<a href="/user/YuLee"><img alt="李優的穿搭"
								src="https://images.dappei.com/uploads/user/face/13816/small_61aa623d6cb0e8d0.jpg?timestamp=1573751118"></a>
						</div>
						<div class="information">
							<a class="like-photo dark " data-id="73991"
								href="javascript:void(0);"><div class="like-photo-container">
									<i class="fa fa-heart"></i><span data-counter="83">83</span>
								</div></a><a class="collect-photo dark " data-id="73991"
								href="javascript:void(0);"><i class="fa fa-star"></i><span
								data-counter="3">3</span></a><a class="tag dark"
								href="/photos/73991#tags-preview"><i class="fa fa-tag"></i>1</a><a
								class="comment " href="/photos/73991#comments"><i
								class="fa fa-comment"></i>0</a>
						</div>
					</div>
					<div class="photo last" id="photo-73975">
						<a href="/photos/73975"><img alt="時尚穿搭：20180110"
							class="photo-image"
							src="https://images.dappei.com/uploads/photo/image/73975/medium_4f7c18cc0bf591f8.jpg"></a><span
							class="hot-tag orange">hot</span>
						<div class="face">
							<a href="/user/Chainloop"><img alt="圈入準的穿搭"
								src="https://images.dappei.com/uploads/user/face/1374/small_e88ff92196283ddd.jpg?timestamp=1573797366"></a>
						</div>
						<div class="information">
							<a class="like-photo dark " data-id="73975"
								href="javascript:void(0);"><div class="like-photo-container">
									<i class="fa fa-heart"></i><span data-counter="53">53</span>
								</div></a><a class="collect-photo dark " data-id="73975"
								href="javascript:void(0);"><i class="fa fa-star"></i><span
								data-counter="5">5</span></a><a class="tag dark"
								href="/photos/73975#tags-preview"><i class="fa fa-tag"></i>5</a><a
								class="comment " href="/photos/73975#comments"><i
								class="fa fa-comment"></i>0</a>
						</div>
					</div>
					<div class="photo" id="photo-73965">
						<a href="/photos/73965"><img alt="時尚穿搭：北海道室內穿搭"
							class="photo-image"
							src="https://images.dappei.com/uploads/photo/image/73965/medium_a9fce32386e65249.jpg"></a><span
							class="hot-tag red">hot</span>
						<div class="face">
							<a href="/user/brother0711"><img alt="NICK的穿搭"
								src="https://images.dappei.com/uploads/user/face/7307/small_03df834d449856f6.jpg?timestamp=1573736818"></a>
						</div>
						<div class="information">
							<a class="like-photo dark " data-id="73965"
								href="javascript:void(0);"><div class="like-photo-container">
									<i class="fa fa-heart"></i><span data-counter="36">36</span>
								</div></a><a class="collect-photo  " data-id="73965"
								href="javascript:void(0);"><i class="fa fa-star"></i><span
								data-counter="0">0</span></a><a class="tag "
								href="/photos/73965#tags-preview"><i class="fa fa-tag"></i>0</a><a
								class="comment " href="/photos/73965#comments"><i
								class="fa fa-comment"></i>0</a>
						</div>
					</div>
					<div class="photo" id="photo-73958">
						<a href="/photos/73958"><img alt="時尚穿搭：20180108"
							class="photo-image"
							src="https://images.dappei.com/uploads/photo/image/73958/medium_16e6e8c0ec30f78f.jpg"></a><span
							class="hot-tag red">hot</span>
						<div class="face">
							<a href="/user/Chainloop"><img alt="圈入準的穿搭"
								src="https://images.dappei.com/uploads/user/face/1374/small_e88ff92196283ddd.jpg?timestamp=1573797366"></a>
						</div>
						<div class="information">
							<a class="like-photo dark " data-id="73958"
								href="javascript:void(0);"><div class="like-photo-container">
									<i class="fa fa-heart"></i><span data-counter="47">47</span>
								</div></a><a class="collect-photo dark " data-id="73958"
								href="javascript:void(0);"><i class="fa fa-star"></i><span
								data-counter="2">2</span></a><a class="tag dark"
								href="/photos/73958#tags-preview"><i class="fa fa-tag"></i>5</a><a
								class="comment dark" href="/photos/73958#comments"><i
								class="fa fa-comment"></i>1</a>
						</div>
					</div>
					<div class="photo" id="photo-73953">
						<a href="/photos/73953"><img alt="時尚穿搭：燕麥牛奶 "
							class="photo-image"
							src="https://images.dappei.com/uploads/photo/image/73953/medium_479b21d686725a3d.jpg"></a><span
							class="hot-tag orange">hot</span>
						<div class="face">
							<a href="/user/aimeecaitw"><img alt="Aimee的穿搭"
								src="https://images.dappei.com/uploads/user/face/83969/small_c30503c96b481f6e.jpg?timestamp=1572838714"></a>
						</div>
						<div class="information">
							<a class="like-photo dark " data-id="73953"
								href="javascript:void(0);"><div class="like-photo-container">
									<i class="fa fa-heart"></i><span data-counter="63">63</span>
								</div></a><a class="collect-photo dark " data-id="73953"
								href="javascript:void(0);"><i class="fa fa-star"></i><span
								data-counter="3">3</span></a><a class="tag dark"
								href="/photos/73953#tags-preview"><i class="fa fa-tag"></i>2</a><a
								class="comment " href="/photos/73953#comments"><i
								class="fa fa-comment"></i>0</a>
						</div>
					</div>
					<div class="photo last" id="photo-73919">
						<a href="/photos/73919"><img alt="時尚穿搭：格紋西裝外套 I"
							class="photo-image"
							src="https://images.dappei.com/uploads/photo/image/73919/medium_e5c507ac11fccbad.jpg"></a><span
							class="hot-tag red">hot</span>
						<div class="face">
							<a href="/user/zhi319"><img alt="Zoe Lee的穿搭"
								src="https://images.dappei.com/uploads/user/face/20941/small_54f0fe0b118e870e.jpg?timestamp=1568824533"></a>
						</div>
						<div class="information">
							<a class="like-photo dark " data-id="73919"
								href="javascript:void(0);"><div class="like-photo-container">
									<i class="fa fa-heart"></i><span data-counter="41">41</span>
								</div></a><a class="collect-photo dark " data-id="73919"
								href="javascript:void(0);"><i class="fa fa-star"></i><span
								data-counter="2">2</span></a><a class="tag dark"
								href="/photos/73919#tags-preview"><i class="fa fa-tag"></i>2</a><a
								class="comment " href="/photos/73919#comments"><i
								class="fa fa-comment"></i>0</a> <br>

						</div>

					</div>

				</div>

			</div>
			<!-- <div id="photo-wall"> -->
		</div>
		<!-- <div class="row"> -->
	</div>
	<!-- <div class="container"> -->




	<jsp:include page="/WEB-INF/views/footer.jsp" />



</body>
</html>