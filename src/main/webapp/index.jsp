<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>
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
<style>
	#logout{ 
		border: 0;
		outline: 0;
		color: blue;
	}
</style>
</head>
<body>
	<!-- header -->

	<div class="jumbotron text-center">
		<h1>Itgoo Homepage</h1>
		<p>(주)Itgoo 소속 유기견 보호 관리 사이트</p>
		<div style="text-align: right;">
		<sec:authorize access="isAnonymous()">
			
				<a href="login" id="login">로그인</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				<a href="joinform">회원가입</a>
		</sec:authorize>

		<sec:authorize access="isAuthenticated()">
			<form method="post" action="logout">
				<input type="submit" value="로그아웃" id="logout">
				<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
			</form>
		</sec:authorize>
		</div>
		</div>
	


	<nav class="navbar navbar-expand-sm navbar-dark bg-dark">
		<a href="#" class="navbar-brand">Itgoo</a>
		<!-- Toggle Button -->
		<button class="navbar-toggler" type="button" data-toggle="collapse"
			data-target="#collapsibleNavbar">
			<span class="navbar-toggler-icon"></span>
		</button>
		<div class="collapse navbar-collapse" id="collapsibleNavbar">
			<ul class="navbar-nav">
				<li class="nav-item"><a href="#" class="nav-link">itgoo소개</a></li>
				<li class="nav-item"><a href="#" class="nav-link">경매</a></li>
				<li class="nav-item"><a href="#" class="nav-link">소모임</a></li>
				<li class="nav-item"><a href="#" class="nav-link">커뮤니티</a></li>
				<li class="nav-item"><a href="#" class="nav-link">입양공고</a></li>
				<li class="nav-item"><a href="#" class="nav-link">가상입양</a></li>
			</ul>
		</div>
	</nav>
	<!-- content -->
	<div class="container pt-3">
		<div class="row">
			<!-- left content -->
			<div class="col-md-6">
				<h2>About itgoo</h2>
				<p>경매와 소모임 커뮤니티가 모여 있는 잇구</p>
				<a href="/itgoo1"><img id="itgoo1"
					src="img/portfolio/itgoo1.png" class="img-fluid"></a>
			</div>
			
			<!-- right content -->
			<div class="col-md-6">
				<h2>About ItGoo</h2>
				<p>유기견 입양 It Goo</p>
				<a href="/ibyang"><img id="ibyang"
					src="img/portfolio/ibyang.png" class="img-fluid"></a>
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
<script>
	
</script>

</html>

