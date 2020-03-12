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
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
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
						href="#about">입양리스트</a></li>
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

	<!-- Header -->
	<header class="masthead">
		<div class="container d-flex h-100 align-items-center">
			<div class="mx-auto text-center">
				<h1 class="mx-auto my-0 text-uppercase">ADOPT LIST</h1>
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
					<h2 class="text-white mb-4">ITGOO의 입양</h2>
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

	<!-- Contact Section -->
	<section class="contact-section bg-black">
		<div class="container">

			<div class="row" id="dogList">

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
							<div class="small text-black-50"></div>


						</div>
					</div>
				</div>
			</div>

			<div id="modalBox" class="modal fade" id="myModal" tabindex="-1"
				role="dialog" aria-labelledby="myModalLabel">
				<div class="modal-dialog" role="document">
					<div class="modal-content">
						<div class="modal-header">
							<button type="button" class="close" data-dismiss="modal"
								aria-label="Close">
								<span aria-hidden="true">×</span>
							</button>
							<h4 class="modal-title" id="myModalLabel">모달 타이틀</h4>
						</div>
						<div class="modal-body">내용</div>
						<div class="modal-footer">
							<button type="button" class="btn btn-primary">확인</button>
							<button type="button" class="btn btn-default" id="closeModalBtn">취소</button>
						</div>
					</div>
				</div>
			</div>



			<!-- <div class="social d-flex justify-content-center">
				<a href="#" class="mx-2"> <i class="fab fa-twitter"></i>
				</a> <a href="#" class="mx-2"> <i class="fab fa-facebook-f"></i>
				</a> <a href="#" class="mx-2"> <i class="fab fa-github"></i>
				</a>
			</div>
 -->
		</div>
	</section>

	<!-- Footer -->
	<footer class="bg-black small text-center text-white-50">
		<div class="container">Copyright &copy; ITGOO 2020</div>
	</footer>
	<script>
		
		 
		 $.each(${dogList},function(idx,data){
			 var $dogList = $("#dogList");
			 var $img=$('<img id="openModalBtn" style="width:100%">').attr('src',data.dogpic);
			 $img[0].dataset.dogid=data.dogid;
			 //$img[0].dataset.
				var $div3 = $('<div class="card-body text-center">')
						.append($('<i class="fas fa-mobile-alt text-primary mb-2">'))
						.append($('<h4 class="text-uppercase m-0">').text(data.dogname))
						.append($('<hr class="my-4">')).append($img)
						.append($('<div class="small text-black-50">').text(data.dogage+" 살"))
						.append($('<div class="small text-black-50">').text("특이사항 : "+data.dogspecial))
						.append($('<div class="small text-black-50">').text("중성화 여부 : "+data.dogjungsung));
				console.log("인덱스는!!!"+idx);
				console.log(idx);
				var $div2 = $('<div class="card py-4 h-100">').append($div3);
				var $div1 = $('<div class="col-md-4 mb-3 mb-md-0">').append($div2);
				 $dogList.append($div1);
				 
		 });
		 
		 $('#openModalBtn').on('click', function(e){
			 //console.log(e.target.dataset.dogid);
			 var dogid=e.target.dataset.dogid;
			 console.log("클릭한 사진번호"+$(this).attr("name"))
			 $.ajaxSetup({
					beforeSend : function(xhr) {
						xhr.setRequestHeader("${_csrf.headerName}", "${_csrf.token}");
					}
				});//먼저 보냄
				$.ajax({ // 에이작스 열고
					type : 'post', //타입은 get 
					url : "adoptlistdetail", // restFul 방식
					data : dogid,
					dataType : "json",

					//서블릿이 성공하면 다시 돌아오는것
					success : function(data) {
						console.log(data);
					
					}

					,
					error : function(error) {
						console.log(error);
					}

				});
				$('#modalBox').modal('show'); 
			});
				// 모달 안의 취소 버튼에 이벤트를 건다.
				$('#closeModalBtn').on('click', function(){
				$('#modalBox').modal('hide');
		});
	</script>

	<!-- Bootstrap core JavaScript -->
	<script src="vendor/jquery/jquery.min.js"></script>
	<script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

	<!-- Plugin JavaScript -->
	<script src="vendor/jquery-easing/jquery.easing.min.js"></script>

	<!-- Custom scripts for this template -->
	<script src="js/grayscale.min.js"></script>



</body>

</html>
