<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>

<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="">
<meta name="author" content="Dashboard">
<meta name="keyword"
	content="Dashboard, Bootstrap, Admin, Template, Theme, Responsive, Fluid, Retina">
<title>ITGOO - MYACTIVITY</title>

<!-- Favicons -->
<link href="img/favicon.png" rel="icon">
<link href="img/apple-touch-icon.png" rel="apple-touch-icon">
<!-- Bootstrap core CSS -->
<link href="lib/bootstrap/css/bootstrap.min.css" rel="stylesheet">
<!--external css-->
<link href="lib/font-awesome/css/font-awesome.css" rel="stylesheet" />
<link rel="stylesheet" type="text/css" href="css/zabuto_calendar.css">
<link rel="stylesheet" type="text/css"
	href="lib/gritter/css/jquery.gritter.css" />
<!-- Custom styles for this template -->
<link href="css/style.css" rel="stylesheet">
<link href="css/style-responsive.css" rel="stylesheet">
<script src="lib/chart-master/Chart.js"></script>
<script src="lib/jquery/jquery.min.js"></script>

<link href="lib/bootstrap/css/bootstrap1.min.css" rel="stylesheet">
<!--external css-->
<link href="lib/font-awesome/css/font-awesome.css" rel="stylesheet" />
<link rel="stylesheet" type="text/css"
	href="lib/bootstrap-fileupload/bootstrap-fileupload.css" />
<link rel="stylesheet" type="text/css"
	href="lib/bootstrap-datepicker/css/datepicker.css" />
<link rel="stylesheet" type="text/css"
	href="lib/bootstrap-daterangepicker/daterangepicker.css" />
<link rel="stylesheet" type="text/css"
	href="lib/bootstrap-timepicker/compiled/timepicker.css" />
<link rel="stylesheet" type="text/css"
	href="lib/bootstrap-datetimepicker/datertimepicker.css" />
<!-- Custom styles for this template -->
<link href="css/activitystyle/activitystyle.css" rel="stylesheet">
<link href="css/style-responsive.css" rel="stylesheet">
<link rel="stylesheet"
	href="//cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/toastr.min.css">
<script src="main2.js?ver"></script>
<script>
	
</script>
<!--script for this page-->
<!-- =======================================================
    Template Name: Dashio
    Template URL: https://templatemag.com/dashio-bootstrap-admin-template/
    Author: TemplateMag.com
    License: https://templatemag.com/license/
  ======================================================= -->
</head>

<body>
	<section id="container">
		<!-- **********************************************************************************************************************************************************
        TOP BAR CONTENT & NOTIFICATIONS
        *********************************************************************************************************************************************************** -->
		<!--header start-->
		<header class="header black-bg">
			<div class="sidebar-toggle-box">
				<div class="fa fa-bars tooltips" data-placement="right"
					data-original-title="Toggle Navigation"></div>
			</div>
			<!--logo start-->
			<a href="index.html" class="logo"><b>IT<span>GOO</span></b></a>
			<!--logo end-->

			<div class="top-menu">
				<ul class="nav pull-right top-menu">
					<li><a class="logout" href="login.html"
						name="${_csrf.parameterName}" value="${_csrf.token}">Logout</a></li>
				</ul>
			</div>
		</header>
		<!--header end-->
		<!-- **********************************************************************************************************************************************************
        MAIN SIDEBAR MENU
        *********************************************************************************************************************************************************** -->
		<!--sidebar start-->
		<aside></aside>
		<!--sidebar end-->
		<!-- **********************************************************************************************************************************************************
        MAIN CONTENT
        *********************************************************************************************************************************************************** -->
		<!--main content start-->
		<section id="main-content">
			<section class="wrapper">
				<h3>
					<i class="fa fa-angle-right"></i> 나의 가상입양
				</h3>
				<!-- BASIC FORM ELELEMNTS -->
				<div class="row mt">
					<div class="col-lg-6 col-md-6 col-sm-6">

						<h4 class="title">회원님들의 개인정보 보호에 힘쓰겠습니다.</h4>
						<form action="showmyvirtualdog?"${_csrf.parameterName}=${_csrf.token}>
						 <input type="hidden" name="dogid" value="${dogid}">
							<div id="message"></div>
						</form>
					</div>
					<!-- /row -->
				</div>
				<!-- /row -->
			</section>
			<!-- /wrapper -->
		</section>
		<footer class="site-footer">
			<div class="text-center">
				<p>
					&copy; Copyrights <strong>Dashio</strong>. All Rights Reserved
				</p>
				<div class="credits">
					Created with Dashio template by <a href="index.jsp">ITGOO</a>
				</div>
				<a href="index.html#" class="go-top"> <i class="fa fa-angle-up"></i>
				</a>
			</div>
		</footer>
		<!--footer end-->
	</section>
	<script>
		var vaList = ${vaList};
		$.each(vaList, function(idx, data) {
			console.log("가상입양 스트 만드는중");
			console.log("data값은 ", data);
			var $vaList = $("#message");
			var $div1 = $('<div class="col-lg-4">')
			var $div2 = $('<div class="form-panel">');
			var $h4 = $('<h4 class="mb">').append(
					$('<i class="fa fa-angle-right">'));
			var money;
			if (data.donation == 30000) {
				money = "3만원"
			}
			if (data.donation == 60000) {
				money = "6만원"
			}
			if (data.donation == 110000) {
				money = "11만원"
			}
			var $div3 = $('<div class="form-panel">').append(
					$('<i class="fas fa-mobile-alt text-primary mb-2">'))
					.append($('<h4 class="text-uppercase m-0" name="id">').text("사용자아이디 : " + data.id))
					.append($('<h4 class="text-uppercase m-0" name="dogid">').text("강아지이름 : " + data.dogname))
					.append($('<h4 class="text-uppercase m-0">').text("나이 : " + data.dogage))
					.append($('<h4 class="text-uppercase m-0">').text("특이사항 : " + data.dogspecial))
					.append($('<h4 class="text-uppercase m-0">').text("성별 : " + data.sex == 0 ?+"남" : "여"))
					.append($('<h4 class="small text-black-50 id="donation"">').text("기부금액 :  " + money))
					.append($('<h4 class="small text-black-50">').text("후원결재일 :  " + data.payday + "일"))
					.append($('<button type="submit">').text("근항보러가기"));

			$h4.append($div3);
			$div2.append($h4);
			$div1.append($div2);
			$vaList.append($div1);
		});
	</script>
</body>
</html>
