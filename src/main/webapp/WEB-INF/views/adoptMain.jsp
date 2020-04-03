<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>

<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">

<title>ITGOO-Don't buy it. Adopt it.</title>

<!-- Bootstrap core CSS -->
<link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

<!-- Custom fonts for this template -->
<link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet">
<link href="https://fonts.googleapis.com/css?family=Varela+Round"
	rel="stylesheet">
<link
	href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
	rel="stylesheet">

<!-- Custom styles for this template -->
<link href="css/grayscale.min.css" rel="stylesheet">

</head>
<style>
.masthead {
	position: relative;
	width: 100%;
	height: auto;
	min-height: 35rem;
	padding: 15rem 0;
	background: linear-gradient(to bottom, rgba(22, 22, 22, .3) 0,
		rgba(22, 22, 22, .7) 75%, 100%), url(../img/dog1.jpg);
	background-position: center;
	background-repeat: no-repeat;
	background-attachment: scroll;
	background-size: cover;
}

#logout {
	margin-top: 33px;
	border: 0px transparent solid;
	outline: 0;
	color: rgba(255, 255, 255, 0.5);
	transition: none 0s ease 0s;
	background-color: transparent;
	font-weight: 700;
	font-size: .9rem;
	border: 0px transparent solid;
}
</style>
<body id="page-top">

	<!-- Navigation -->
	<nav class="navbar navbar-expand-lg navbar-light fixed-top"
		id="mainNav">
		<div class="container">
			<a class="navbar-brand js-scroll-trigger" href="#page-top">Start
				ITGOO</a>
			<button class="navbar-toggler navbar-toggler-right" type="button"
				data-toggle="collapse" data-target="#navbarResponsive"
				aria-controls="navbarResponsive" aria-expanded="false"
				aria-label="Toggle navigation">
				Menu <i class="fas fa-bars"></i>
			</button>
			<div class="collapse navbar-collapse" id="navbarResponsive">
				<ul class="navbar-nav ml-auto">
					<li class="nav-item"><a class="nav-link js-scroll-trigger"
						href="#about">ITGOO의 차별점</a></li>
					<li class="nav-item"><a class="nav-link js-scroll-trigger"
						href="#projects">입양리스트</a></li>
					<li class="nav-item"><a class="nav-link js-scroll-trigger"
						href="#signup">contact</a></li>
					<li class="nav-item">
						 <a class="nav-link js-scroll-trigger" href="#" onclick="document.getElementById('logout').submit();">로그아웃</a>
						 <form id="logout" action="logout" method="POST">
							<input name="${_csrf.parameterName}" type="hidden" value="${_csrf.token}" />
						</form> 

					</li>
				</ul>
			</div>
		</div>
	</nav>

	<!-- Header -->
	<header class="masthead">
		<div class="container d-flex h-100 align-items-center">
			<div class="mx-auto text-center">
				<h1 class="mx-auto my-0 text-uppercase">ADOPT</h1>
				<h2 class="text-white-50 mx-auto mt-2 mb-5">Don't buy it. Adopt
					it.</h2>
				<a href="#about" class="btn btn-primary js-scroll-trigger">Get
					Started</a>
			</div>
		</div>
	</header>

	<!-- About Section -->
	<section id="about" class="about-section text-center">
		<div class="container">
			<div class="row">
				<div class="col-lg-8 mx-auto">
					<h2 class="text-white mb-4">ITGOO의 차별성</h2>
					<p class="text-white-50">
						ITGOO는 100% 유기견 입양사이트로 가상입양,액티비티 시스템 도입으로 재파양,재유기를 예방하는 시스템입니다. <a
							href="https://www.youtube.com/watch?v=lhC4T91BFNE">the
							preview page</a>. 사지마세요!입양하세요! Don't buy it. Adopt it.
					</p>
				</div>
			</div>
			<img src="img/ipad.png" class="img-fluid" alt="">
		</div>
	</section>

	<!-- Projects Section -->
	<section id="projects" class="projects-section bg-light">
		<div class="container">

			<!-- Featured Project Row -->
			<div class="row align-items-center no-gutters mb-4 mb-lg-5">
				<div class="col-xl-8 col-lg-7">
					<a href="adoptlist"><img class="img-fluid mb-3 mb-lg-0"
						src="img/dog1.jpg" alt="입양공고"></a>
				</div>
				<div class="col-xl-4 col-lg-5">
					<div class="featured-text text-center text-lg-left">
						<h4>입양하러가기</h4>
						<p class="text-black-50 mb-0">보호소가 세상의 전부인 아이들입니다. 넓은세상으로 이끌어주세요.
						아이들은 언제든 사랑하고 사랑받을 준비가 되어있습니다. 용기내어 이 아이들의 가족이 되어주세요.</p>
					</div>
				</div>
			</div>

			<!-- Project One Row -->
			<div class="row justify-content-center no-gutters mb-5 mb-lg-0">
				<div class="col-lg-6">
					<a href="adoptList"><img class="img-fluid"
						src="img/demo-image-01.jpg" alt="입양공고"></a>
				</div>
				<div class="col-lg-6">
					<div class="bg-black text-center h-100 project">
						<div class="d-flex h-100">
							<div class="project-text w-100 my-auto text-center text-lg-left">
								<h4 class="text-white">액티비티</h4>
								<p class="mb-0 text-white-50">일반인 입양자들이 입양후 닥치는 문제를 해결하기 힘들어 재파양, 재유기 등의 문제가 있어서 이를 
								해결하기 위해서 액티비티를 통해 유대감과 스트레스를 줄이고 입양자 집에서 빠르게 적응 할 수 있도록 도와줍니다.</p>
								<hr class="d-none d-lg-block mb-0 ml-0">
							</div>
						</div>
					</div>
				</div>
			</div>

			<!-- Project Two Row -->
			<div class="row justify-content-center no-gutters">
				<div class="col-lg-6">
					<a href="adoptList"><img class="img-fluid"
						src="img/demo-image-02.jpg" alt="입양공고"></a>
				</div>
				<div class="col-lg-6 order-lg-first">
					<div class="bg-black text-center h-100 project">
						<div class="d-flex h-100">
							<div class="project-text w-100 my-auto text-center text-lg-right">
								<h4 class="text-white">가상입양</h4>
								<p class="mb-0 text-white-50"> 가상입양 매칭을 통해 강아지의 근황과 후원금의 투명한 사용내역을 보여주는 ITGOO의 가상입양 시스템입니다.
								높은 입양의 벽으로 고민하신다면 가상입양을 통해 아이들을 도와주세요.</p>
								<hr class="d-none d-lg-block mb-0 mr-0">
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>

	<!-- Signup Section -->
	<section id="signup" class="signup-section">
		<div class="container">
			<div class="row">
				<div class="col-md-10 col-lg-8 mx-auto text-center">

					<i class="far fa-paper-plane fa-2x mb-2 text-white"></i>
					<h2 class="text-white mb-5">Subscribe to receive updates!</h2>

					<form class="form-inline d-flex">
						<input type="email"
							class="form-control flex-fill mr-0 mr-sm-2 mb-3 mb-sm-0"
							id="inputEmail" placeholder="Enter email address...">
						<button type="submit" class="btn btn-primary mx-auto">Subscribe</button>
					</form>

				</div>
			</div>
		</div>
	</section>

	<!-- Contact Section -->
	<section class="contact-section bg-black">
		<div class="container">

			<div class="row">

				<div class="col-md-4 mb-3 mb-md-0">
					<div class="card py-4 h-100">
						<div class="card-body text-center">
							<i class="fas fa-map-marked-alt text-primary mb-2"></i>
							<h4 class="text-uppercase m-0">Address</h4>
							<hr class="my-4">
							<div class="small text-black-50">4923 Market Street,
								Orlando FL</div>
						</div>
					</div>
				</div>

				<div class="col-md-4 mb-3 mb-md-0">
					<div class="card py-4 h-100">
						<div class="card-body text-center">
							<i class="fas fa-envelope text-primary mb-2"></i>
							<h4 class="text-uppercase m-0">Email</h4>
							<hr class="my-4">
							<div class="small text-black-50">
								<a href="#">hello@yourdomain.com</a>
							</div>
						</div>
					</div>
				</div>

				<div class="col-md-4 mb-3 mb-md-0">
					<div class="card py-4 h-100">
						<div class="card-body text-center">
							<i class="fas fa-mobile-alt text-primary mb-2"></i>
							<h4 class="text-uppercase m-0">Phone</h4>
							<hr class="my-4">
							<div class="small text-black-50">+1 (555) 902-8832</div>
						</div>
					</div>
				</div>
			</div>

			<div class="social d-flex justify-content-center">
				<a href="#" class="mx-2"> <i class="fab fa-twitter"></i>
				</a> <a href="#" class="mx-2"> <i class="fab fa-facebook-f"></i>
				</a> <a href="#" class="mx-2"> <i class="fab fa-github"></i>
				</a>
			</div>

		</div>
	</section>

	<!-- Footer -->
	<footer class="bg-black small text-center text-white-50">
		<div class="container">Copyright &copy; ITGOO 2020</div>
	</footer>

	<!-- Bootstrap core JavaScript -->
	<script src="vendor/jquery/jquery.min.js"></script>
	<script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

	<!-- Plugin JavaScript -->
	<script src="vendor/jquery-easing/jquery.easing.min.js"></script>

	<!-- Custom scripts for this template -->
	<script src="js/grayscale.min.js"></script>

</body>

</html>
