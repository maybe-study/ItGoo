<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>
<!DOCTYPE html>
<html>
<head>
<title>Itgoo :: Home</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- CSS -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
<!-- JS -->
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
	integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
	crossorigin="anonymous"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"
	integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1"
	crossorigin="anonymous"></script>
<script
	src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"
	integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM"
	crossorigin="anonymous"></script>
<style>
#logout {
	border: 0;
	outline: 0;
	color: blue;
}

#logo {
	width: 350px;
	height: 200px;
}

.bg-dark {
	background-color: #0f9ce3;
}
</style>
</head>

<script>
	$('.carousel').carousel({
		interval : 600
	})
</script>
<body>
	<!-- header -->

	<div class="jumbotron text-center">
		<img alt="잇구로고" src="img/portfolio/itgoo1004.png" id="logo">
		<p>(주)ITGOO corporation</p>
		<div style="text-align: right;">
			<sec:authorize access="isAnonymous()">

				<a href="login" id="login">로그인</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				<a href="joinform">회원가입</a>
			</sec:authorize>

			<sec:authorize access="isAuthenticated()">
				<form method="post" action="logout">
					<input type="submit" value="로그아웃" id="logout"> <input
						type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
				</form>
			</sec:authorize>
		</div>
	</div>



	<nav class="navbar navbar-expand-sm navbar-dark bg-dark">
		<a href="index.jsp" class="navbar-brand">ITGOO</a>
		<!-- Toggle Button -->
		<button class="navbar-toggler" type="button" data-toggle="collapse"
			data-target="#collapsibleNavbar">
			<span class="navbar-toggler-icon"></span>
		</button>
		<div class="collapse navbar-collapse" id="collapsibleNavbar">
			<ul class="navbar-nav">
				<li class="nav-item"><a href="introduce.jsp" class="nav-link">ITGOO소개</a></li>
				<li class="nav-item"><a href="#" class="nav-link">경매</a></li>
				<li class="nav-item"><a href="#" class="nav-link">소모임</a></li>
				<li class="nav-item"><a href="#" class="nav-link">커뮤니티</a></li>
				<li class="nav-item"><a href="#" class="nav-link">입양공고</a></li>
				<li class="nav-item"><a href="#" class="nav-link">ITGOO_STAR</a></li>
			</ul>
		</div>
	</nav>
	<!-- content -->
	<div class="container pt-3">
		<div class="row" id="row">
			<!-- right content -->
			<div class="wrapper style2">
				<section class="container3">
					<div class="row no-collapse-1">
						<section class="4u">
							<h2 class='text'>ITGOO를 빛내준 스타</h2>

							<div id="demo" class="carousel slide" data-ride="carousel">
								<div class="carousel-inner">
									<!-- 슬라이드 쇼 -->

									<div class="carousel-item">
										<p>배우 남주혁님</p>
										<img class="recoimg" src="img/slidepic/namju.PNG"
											alt="Second slide">

									</div>

									<div class="carousel-item active">
										<p>가수 박진영님</p>
										<img class="recoimg" src="img/slidepic/jinyoung.PNG"
											alt="First slide">

									</div>
									<div class="carousel-item">
										<p>배우 김새론님</p>
										<img class="recoimg" src="img/slidepic/saerone.PNG"
											alt="Third slide">

									</div>

									<div class="carousel-item">
										<p>스타강아지 철수</p>
										<img class="recoimg" src="img/slidepic/chulsoo.PNG"
											alt="Forth slide">

									</div>

									<div class="carousel-item">
										<p>배우 박서준님</p>
										<img class="recoimg" src="img/slidepic/seojun.PNG"
											alt="Fifth slide">

									</div>
									<!-- / 슬라이드 쇼 끝 -->

									<!-- 왼쪽 오른쪽 화살표 버튼 -->
									<a class="carousel-control-prev" href="#demo" data-slide="prev">
										<span class="carousel-control-prev-icon" aria-hidden="true"></span>
										<!-- <span>Previous</span> -->
									</a> <a class="carousel-control-next" href="#demo"
										data-slide="next"> <span
										class="carousel-control-next-icon" aria-hidden="true"></span>
										<!-- <span>Next</span> -->
									</a>
									<!-- / 화살표 버튼 끝 -->

									<!-- 인디케이터 -->
									<ul class="carousel-indicators">
										<li data-target="#demo" data-slide-to="0" class="active"></li>
										<!--0번부터시작-->
										<li data-target="#demo" data-slide-to="1"></li>
										<li data-target="#demo" data-slide-to="2"></li>
										<li data-target="#demo" data-slide-to="3"></li>
										<li data-target="#demo" data-slide-to="4"></li>
									</ul>
									<!-- 인디케이터 끝 -->
								</div>
							</div>
						</section>
					</div>
				</section>
			</div>
		</div>
	</div>


	<!-- footer -->
	<div class="jumbotron text-center mt-5 mb-0">
		<h3 class="text-secondary">IT GOO corporation</h3>
		<p>
			IT GOO’s Homepage is powered by <span class="text-primary">itcia</span>
			/ Designed by <span class="text-primary">itcia</span>
		</p>
	</div>
</body>


</html>
