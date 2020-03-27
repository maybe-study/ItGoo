<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="kr">

<head>

<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">
<meta name="viewport"
	content="width=device-width, initial-scale=1, minimum-scale=1, maximum-scale=1">
<title>ITGOO-Enjoy ITGOO</title>

<!-- Font Awesome Icons -->
<link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet"
	type="text/css">
<link rel="stylesheet" href="css/swiper.min.css">
<!-- Google Fonts -->
<link
	href="https://fonts.googleapis.com/css?family=Merriweather+Sans:400,700"
	rel="stylesheet">
<link
	href='https://fonts.googleapis.com/css?family=Merriweather:400,300,300italic,400italic,700,700italic'
	rel='stylesheet' type='text/css'>

<!-- Plugin CSS -->
<link href="vendor/magnific-popup/magnific-popup.css" rel="stylesheet">

<!-- Theme CSS - Includes Bootstrap -->
<link href="css/creative.min.css" rel="stylesheet">

</head>
<style>
#logout {
	border: 0px transparent solid;
	outline: 0;
	color: rgba(255, 255, 255, .7);
	background-color: transparent;
	font-weight: 700;
	font-size: .9rem;
}

html, body {
	position: relative;
	height: 100%;
}

body {
	background: #eee;
	font-family: Helvetica Neue, Helvetica, Arial, sans-serif;
	font-size: 14px;
	color: #000;
	margin: 0;
	padding: 0;
}

.swiper-container {
	width: 100%;
	height: 100%;
}

.swiper-slide {
	text-align: center;
	font-size: 18px;
	background: #fff;
	/* Center slide text vertically */
	display: -webkit-box;
	display: -ms-flexbox;
	display: -webkit-flex;
	display: flex;
	-webkit-box-pack: center;
	-ms-flex-pack: center;
	-webkit-justify-content: center;
	justify-content: center;
	-webkit-box-align: center;
	-ms-flex-align: center;
	-webkit-align-items: center;
	align-items: center;
}

.auction-title {
	height: 50px;
	display: -webkit-box;
	display: -ms-flexbox;
	display: -webkit-flex;
	display: flex;
	-webkit-box-pack: center;
	-ms-flex-pack: center;
	-webkit-justify-content: center;
	justify-content: center;
	-webkit-box-align: center;
	-ms-flex-align: center;
	-webkit-align-items: center;
	align-items: center;
}

.portfolio-box {
	height: 100%;
}

#nav {
	margin: 50px;
}
#li-id{
	color: #f4623a;
}
</style>
<body id="page-top">

	<!-- Navigation -->
	<nav class="navbar navbar-expand-lg navbar-light fixed-top py-3"
		id="mainNav">
		<div class="container">
			<a class="navbar-brand js-scroll-trigger" href="#page-top">Start
				ITGOO</a>
			<button class="navbar-toggler navbar-toggler-right" type="button"
				data-toggle="collapse" data-target="#navbarResponsive"
				aria-controls="navbarResponsive" aria-expanded="false"
				aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>
			<div class="collapse navbar-collapse" id="navbarResponsive">
				<ul class="navbar-nav ml-auto my-2 my-lg-0">
					<li class="nav-item"><a class="nav-link js-scroll-trigger"
						href="#" onclick="document.getElementById('logout').submit();">로그아웃</a>
						<form id="logout" action="logout" method="POST">
							<input name="${_csrf.parameterName}" type="hidden"
								value="${_csrf.token}" />
						</form></li>
				</ul>
			</div>
		</div>
	</nav>






	<!-- Masthead -->
	<header class="masthead">
		<div class="container h-100">
			<div
				class="row h-100 align-items-center justify-content-center text-center">
				<div class="col-lg-10 align-self-end">
					<h1 class="text-uppercase text-white font-weight-bold">강아지 소모임</h1>
					<h1 class="text-uppercase text-white font-weight-bold">(산책)</h1>
					<hr class="divider my-4">
				</div>
				<div class="col-lg-8 align-self-baseline">
					<p class="text-white-75 font-weight-light mb-5">강아지의 사회성을 기르고
						친구를 만들어주세요!</p>
					<!-- <a class="btn btn-primary btn-xl js-scroll-trigger" href="#about">둘러보기</a> -->
				</div>
			</div>
		</div>
	</header>





	<!-- Portfolio Section -->
	<section>
		<ul class="nav nav-pills nav-fill" id="nav">
			<li class="nav-item"></li>
			<li class="nav-item"></li>
			<li class="nav-item" id="li-id">소모임(단체산책)의 장점</li>
			<li class="nav-item"></li>
			<li class="nav-item"></li>
		</ul>
	</section>
	<section id="portfolio">
		<div class="container-fluid p-0">
			<div class="row no-gutters" id="aList">
				<div class="col-lg-4 col-sm-6">
					<a class="portfolio-box" href="img/portfolio/fullsize/1.jpg"> <img
						class="img-fluid" src="img/portfolio/thumbnails/1.jpg" alt="">
						<div class="portfolio-box-caption">
							<div class="project-category text-white-50">단체산책</div>
							<div class="project-name">단체산책으로 우리 강아지 사회성 기르기</div>
						</div>
					</a>
				</div>
				<div class="col-lg-4 col-sm-6">
					<a class="portfolio-box" href="img/portfolio/fullsize/2.jpg"> <img
						class="img-fluid" src="img/portfolio/thumbnails/2.jpg" alt="">
						<div class="portfolio-box-caption">
							<div class="project-category text-white-50">다이어트</div>
							<div class="project-name">산책으로 체중을 조절하세요</div>
						</div>
					</a>
				</div>
				<div class="col-lg-4 col-sm-6">
					<a class="portfolio-box" href="img/portfolio/fullsize/3.jpg"> <img
						class="img-fluid" src="img/portfolio/thumbnails/3.jpg" alt="">
						<div class="portfolio-box-caption">
							<div class="project-category text-white-50">스트레스완화</div>
							<div class="project-name">강아지는 산책을 하며 냄새를 맡고 스트레스를 풀 수 있어요
							</div>
						</div>
					</a>
				</div>
				<div class="col-lg-4 col-sm-6">
					<a class="portfolio-box" href="img/portfolio/fullsize/4.jpg"> <img
						class="img-fluid" src="img/portfolio/thumbnails/4.jpg" alt="">
						<div class="portfolio-box-caption">
							<div class="project-category text-white-50">무릎건강</div>
							<div class="project-name">무리하지 않은 산책은 우리강아지 무릎에 좋답니다.</div>
						</div>
					</a>
				</div>
				<div class="col-lg-4 col-sm-6">
					<a class="portfolio-box" href="img/portfolio/fullsize/5.jpg"> <img
						class="img-fluid" src="img/portfolio/thumbnails/5.jpg" alt="">
						<div class="portfolio-box-caption">
							<div class="project-category text-white-50">햇빛</div>
							<div class="project-name">강아지의 털을 햇살을 보면 윤기나고 건강해진답니다.</div>
						</div>
					</a>
				</div>
				<div class="col-lg-4 col-sm-6">
					<a class="portfolio-box" href="img/portfolio/fullsize/6.jpg"> <img class="img-fluid"
						src="img/portfolio/thumbnails/6.jpg" alt="">
						<div class="portfolio-box-caption p-3">
							<div class="project-category text-white-50">친구만들기</div>
							<div class="project-name">우리 강아지 친구 만들어주기</div>
						</div>
					</a>
				</div>
			</div>
		</div>
	</section>
<section class="page-section bg-dark text-white">
		<div class="container text-center">
			<h2 class="mb-4">강아지 소모임</h2>
			<a class="btn btn-light btn-xl" href="smalllist">강아지 소모임 리스트 확인</a>
			<a class="btn btn-light btn-xl" href="regipuppysmall">강아지 소모임 등록하기</a>
		</div>
	</section>

	<!-- Contact Section -->
	<section class="page-section" id="contact">
		<div class="container">
			<div class="row justify-content-center">
				<div class="col-lg-8 text-center">
					<h2 class="mt-0">문의사항</h2>
					<hr class="divider my-4">
					<p class="text-muted mb-5">문의사항은 연락주세요. 빠른시일내에 답변드리겠습니다.</p>
				</div>
			</div>
			<div class="row">
				<div class="col-lg-4 ml-auto text-center mb-5 mb-lg-0">
					<i class="fas fa-phone fa-3x mb-3 text-muted"></i>
					<div>+82 (010) -9027-4776</div>
				</div>
				<div class="col-lg-4 mr-auto text-center">
					<i class="fas fa-envelope fa-3x mb-3 text-muted"></i>
					<!-- Make sure to change the email address in anchor text AND the link below! -->
					<a class="d-block" href="mailto:contact@yourwebsite.com">adoptIt@Itgoo.com</a>
				</div>
			</div>
		</div>

	</section>

	<!-- Footer -->
	<footer class="bg-light py-5">
		<div class="container">
			<div class="small text-center text-muted">Copyright &copy; 2020
				- ITGOO</div>
		</div>
	</footer>

	<!-- Bootstrap core JavaScript -->
	<script src="vendor/jquery/jquery.min.js"></script>
	<script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

	<!-- Plugin JavaScript -->
	<script src="vendor/jquery-easing/jquery.easing.min.js"></script>
	<script src="vendor/magnific-popup/jquery.magnific-popup.min.js"></script>
	<script>

	</script>
	<script>
	//소켓 생성

	
	
	</script>
</body>

</html>
