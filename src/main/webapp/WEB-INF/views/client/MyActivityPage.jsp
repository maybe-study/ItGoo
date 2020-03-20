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
					<li><a class="logout" href="login.html"name="${_csrf.parameterName}" value="${_csrf.token}">Logout</a></li>
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
					<i class="fa fa-angle-right"></i> 나의 액티비티
				</h3>
				<!-- BASIC FORM ELELEMNTS -->
				<div class="row mt">
					<div class="col-lg-6 col-md-6 col-sm-6">

						<h4 class="title">회원님들의 개인정보 보호에 힘쓰겠습니다.</h4>
						<div id="message"></div>
						<form class="contact-form php-mail-form" role="form"
							action="contactform/contactform.php" method="POST">

							<div class="form-group">
								<div class="main-p-tag">
									<table>

										<tr>
											<td>견주:</td>
											<td id="adopter"></td>
										</tr>
									</table>
								</div>
							</div>

							<div class="form-group">
								<div class="main-p-tag">
									<table>
										<tr >
											<td>강아지:</td>
											<td id="dog"></td>
										</tr>
									</table>
								</div>
							</div>


							<div class="form-group">
								<div class="main-p-tag">
									<table>
										<tr>
											<td>액티비티 이름:</td>
											<td id="activityname"></td>
										</tr>
									</table>
								</div>
							</div>


							<div class="form-group">
								<div class="main-p-tag">
									<table>
										<tr>
											<td>액티비티 설명:</td>
											<td id="activityexplanin"></td>
										</tr>
									</table>
								</div>
							</div>


							<div class="form-group">
								<div class="main-p-tag">
									<table>
										<tr >
											<td>액티비티 가격:</td>
											<td id="price"></td>
										</tr>
									</table>
								</div>
							</div>

							<div class="form-group">
								<div class="main-p-tag">
									<table>
										<tr >
											<td>날짜:</td>
											<td id="startdate"></td>
										</tr>
									</table>
								</div>
							</div>

							<div class="form-group">
								<div class="main-p-tag">
									<table>
										<tr >
											<td>시작시간:</td>
											<td id="starttime"></td>
										</tr>
									</table>
								</div>
							</div>

							<div class="form-group">
								<div class="main-p-tag">
									<table>
										<tr >
											<td>소요시간:</td>
											<td id="howlong"></td>
										</tr>
									</table>
								</div>
							</div>
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
					<!--
            You are NOT allowed to delete the credit link to TemplateMag with free version.
            You can delete the credit link only if you bought the pro version.
            Buy the pro version with working PHP/AJAX contact form: https://templatemag.com/dashio-bootstrap-admin-template/
            Licensing information: https://templatemag.com/license/
          -->
					Created with Dashio template by <a href="index.jsp">ITGOO</a>
				</div>
				<a href="index.html#" class="go-top"> <i class="fa fa-angle-up"></i>
				</a>
			</div>
		</footer>
		<!--footer end-->
	</section>
	<script>
	 $.each(${rsList},function(idx,data){
		$('#adopter').text(data.username);
		$('#dog').text(data.dogname);
		$('#activityname').text(data.activityname);
		$('#activityexplanin').text(data.activityexplanation);
		$('#price').text(data.activityprice);
		$('#startdate').text(data.activitydate);
		$('#starttime').text(data.activitystart);
		$('#howlong').text(data.activitytime+"시간 소요");
	 });
	
	
	
	</script>
	</body>
	
</html>