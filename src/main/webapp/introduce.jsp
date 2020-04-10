<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>
<!DOCTYPE html>
<html>
<head>
<title>ITGOO :: Home</title>
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
#logout {
   border: 0;
   outline: 0;
   color: #007bff;
   
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
		<p>(주)ITGOO 소속 유기견 보호 관리 사이트</p>
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
			<a href="index2.jsp" class="navbar-brand">ITGOO</a>
			<!-- Toggle Button -->
			<button class="navbar-toggler" type="button" data-toggle="collapse"
				data-target="#collapsibleNavbar">
				<span class="navbar-toggler-icon"></span>
			</button>
      <div class="collapse navbar-collapse" id="collapsibleNavbar">
         <ul class="navbar-nav">
            <li class="nav-item"><a href="introduce.jsp" class="nav-link">ITGOO소개</a></li>
            <li class="nav-item"><a href="companyjoinform.jsp" class="nav-link">업체 회원가입</a></li>
            <li class="nav-item"><a href="auctionlist" class="nav-link">커뮤니티</a></li>
            <li class="nav-item"><a href="adoptlist" class="nav-link">입양공고</a></li>
            <li class="nav-item"><a href="ItGoostar.jsp" class="nav-link">ITGOO_STAR</a></li>
            <li class="nav-item"><a href="dogkind.html" class="nav-link">강아지 백과사전</a></li>
            <li class="nav-item"><a href="article.jsp" class="nav-link">ITGOO Article</a></li>
         </ul>
      </div>
		</nav>
	<!-- content -->
	<div class="container pt-3">
		<div class="row">
			<!-- left content -->
			<div class="col-md-6">
				<h2>About ITGOO</h2>
				
				<p>ITGOO 프로젝트는 2020년 시작된 유기견 입양 프로젝트</p>
				
				<p>
					ITGOO는 동물보호 200년 역사를 가진 독일의 선진사례 분석을 통해 기획된 시스템으로 한국의 유기견 실태를 고치고, 입양을 받는 문화를 사회적으로 정착시키고자 기획되었습니다.
				</p>
				
				<p>
					현재 ITGOO는 사회적 프로젝트로 유기견 문제에 초점을 맞추고 있으며 
					<br> <strong>100% 유기견</strong> 입양 시스템과 <strong>액티비티,가상입양</strong>을 도입해 재파양,재유기등의 문제를 줄이는데 힘쓰고 있습니다.
					<br> ITGOO는 사회적 프로젝트로서 100% 유기견 입양을 원칙으로 하고 있습니다.
				</p>

				<p>
					ITGOO는 두가지의 테마로 되어있습니다.
					<br> 첫번째 테마는 경매,소모임등의 기능이 들어있는 테마입니다.
					<br> 두번째 테마는 입양을 지원하는 테마입니다.
				</p>
				
				<p>
					반려견을 키우는 인구가 천만명을 넘었습니다. 이제 유기견의 문제를 외면하지 않고 직시해야할 시기입니다.
					<br> Don't buy adopt!
					<br> With ITGOO
					<br> ITGOO는 반려동물을 입양으로 맞이하는 사회가 되길 바랍니다.
				</p>

			</div>


			<!-- right content -->
			<div class="wrapper style2">
				<section class="container3">
					<div class="row no-collapse-1">
						<section class="4u">
							<h2 class='text'>Itgoo company</h2>

							<div id="demo" class="carousel slide" data-ride="carousel">
								<div class="carousel-inner">
									<!-- 슬라이드 쇼 -->
									<div class="carousel-item active">
										<!--가로-->
										<img style="height:600px; width: 500px;" class="recoimg" src="img/portfolio/itgooint.png"
											alt="First slide">
									</div>
									
									<div class="carousel-item">
										<img  style="height:600px; width: 500px;" class="recoimg" src="img/portfolio/introduce1.jpg"
											alt="Second slide">
									</div>
									
									<div class="carousel-item">
										<img  style="height:600px; width: 500px;" class="recoimg" src="img/portfolio/introduce2.jpg"
											alt="Third slide">
									</div>

									<div class="carousel-item">
										<img style="height:600px; width: 500px;" class="recoimg" src="img/portfolio/itgoo1004.png"
											alt="Forth slide">
									</div>

									<div class="carousel-item">
										<img style="height:150px; width: 150px;" class="recoimg" src="img/portfolio/dontbuy.jpg"
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

