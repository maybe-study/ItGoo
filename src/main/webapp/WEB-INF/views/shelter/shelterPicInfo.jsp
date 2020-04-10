<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="">


<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="">
<meta name="author" content="Dashboard">
<meta name="keyword"
	content="Dashboard, Bootstrap, Admin, Template, Theme, Responsive, Fluid, Retina">
<title>ITGOO - ITGOO Shelter</title>

<!-- Favicons -->
<link href="img/favicon.png" rel="icon">
<link href="img/apple-touch-icon.png" rel="apple-touch-icon">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<!-- Bootstrap core CSS -->
<link href="lib/bootstrap/css/bootstrap1.min.css" rel="stylesheet">
<!--external css-->
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
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
<!-- =======================================================
    Template Name: Dashio
    Template URL: https://templatemag.com/dashio-bootstrap-admin-template/
    Author: TemplateMag.com
    License: https://templatemag.com/license/
  ======================================================= -->

<style>


#reset {
	margin-left: 5%;
}

#yes, #reset {
	display: inline-block;
	font-weight: 400;
	text-align: center;
	white-space: nowrap;
	vertical-align: middle;
	touch-action: manipulation;
	cursor: pointer;
	background-image: none;
	border: 1px solid transparent;
	padding: 6px 12px;
	font-size: 14px;
	line-height: 1.42857143;
	border-radius: 4px;
	user-select: none;
	color: #fff;
	background-color: #31b0d5;
	border-color: #269abc;
	margin-top: 10px;
}

#show_profile {
	width: 40%;
	height: 40%;
}
</style>
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
			<a href="index.jsp" class="logo"><b>IT<span>GOO</span></b></a>
			<!--logo end-->
			<div class="nav notify-row" id="top_menu">
				<!--  notification start -->
				<ul class="nav top-menu">
					<!-- settings start -->
					<li class="dropdown"><a data-toggle="dropdown"
						class="dropdown-toggle" href="index.html#"> <i
							class="fa fa-tasks"></i> <span class="badge bg-theme"></span>
					</a>
						<ul class="dropdown-menu extended tasks-bar">
							<div class="notify-arrow notify-arrow-green"></div>

							<li class="external"><a href="#">See All Tasks</a></li>
						</ul></li>
					<!-- settings end -->
					<!-- inbox dropdown start-->
					<li id="header_inbox_bar" class="dropdown"><a
						data-toggle="dropdown" class="dropdown-toggle" href="index.html#">
							<i class="fa fa-envelope-o"></i> <span class="badge bg-theme"></span>
					</a>
						<ul class="dropdown-menu extended inbox">
							<div class="notify-arrow notify-arrow-green"></div>


							<li><a href="index.html#">See all messages</a></li>
						</ul></li>
					<!-- inbox dropdown end -->
					<!-- notification dropdown start-->
					<li id="header_notification_bar" class="dropdown"><a
						data-toggle="dropdown" class="dropdown-toggle" href="index.html#">
							<i class="fa fa-bell-o"></i> <span class="badge bg-warning"></span>
					</a>
						<ul class="dropdown-menu extended notification">
							<div class="notify-arrow notify-arrow-yellow"></div>

						</ul></li>
					<!-- notification dropdown end -->
				</ul>
				<!--  notification end -->
			</div>
			<div class="top-menu">
				<ul class="nav pull-right top-menu">
					<li><a class="logout" href="#"
						onclick="document.getElementById('logout-form').submit();">Logout</a>
						<form id="logout-form" action='logout' method="POST">
							<input name="${_csrf.parameterName}" type="hidden"
								value="${_csrf.token}" />
						</form></li>
				</ul>
			</div>
		</header>
		<!--header end-->
		<!-- **********************************************************************************************************************************************************
        MAIN SIDEBAR MENU
        *********************************************************************************************************************************************************** -->
		<!--sidebar start-->
		<aside>
			<div id="sidebar" class="nav-collapse ">
				<!-- sidebar menu start-->
				<ul class="sidebar-menu" id="nav-accordion">
					<p class="centered">
						<a href="sheltermyinfo"><img src="img/portfolio/itgoo2.PNG"
							class="img-circle" width="80"></a>
					</p>
					<h5 class="centered">SHELTER MANAGER</h5>
					<li class="mt"><a href="/ItGoo/"> <i
							class="fa fa-dashboard"></i> <span>홈으로 </span>
					</a></li>
					<li class="sub-menu"><a href="javascript:;">
							<i class="fa fa-desktop"></i> <span>정보보기</span>
					</a>
						<ul class="sub">
							<li><a href="sheltermyinfo">보호소 정보보기</a></li>
						</ul></li>



					<li class="sub-menu"><a href="javascript:;" class="active" > <i
							class="fa fa-book"></i> <span>보호소 사진</span>
					</a>
						<ul class="sub">
							<li><a href="sheltercard">사업자등록증</a></li>
							<li><a href="shelterpicinfo">시설사진</a></li>
						</ul>
					</li>


					<li class="sub-menu"><a href="javascript:;"> <i
							class="fa fa-th"></i> <span>입양 공고</span>
					</a>
						<ul class="sub">
							<li><a href="shelterregiste">등록</a></li>
							<li><a href="shelterdelete">삭제</a></li>
							<li><a href="aleadyadopt">입양 확정</a></li>
						</ul></li>
						
					<li class="sub-menu"><a href="javascript:;"> <i	class="fa fa-th"></i> <span>가상입양 관리</span>
					</a>
						<ul class="sub">
							<li><a href="virtualadoptlist?input=1">근황 입력</a></li>
							<li><a href="virtualadoptlist?input=0">근황 삭제</a></li>
						</ul></li>



					<li class=""><a href="javascript:;"><i
							class="fa fa-map-marker"></i> <span>보호소위치</span> </a>
						<ul class="sub">
							<li><a href="shelterlocationinfo">위치 및 수정</a></li>
						</ul></li>
					<!-- a href="google_maps.html"-->

				</ul>
					<!-- sidebar menu end-->
			</div>
		</aside>
		<!--sidebar end-->
		<!-- **********************************************************************************************************************************************************
        MAIN CONTENT
        *********************************************************************************************************************************************************** -->
		<!--main content start-->
<section id="main-content">
			<section class="wrapper">
				<h3>
					<i class="fa fa-angle-right"></i> 보호소 시설 사진 첨부
				</h3>
				<!-- BASIC FORM ELELEMNTS -->
				<form
					action="updatecompanylocpic?${_csrf.parameterName}=${_csrf.token}"
					name="uploadactivitylocpic" method="post" enctype="multipart/form-data">
					<div class="row mt">
						<div class="col-lg-6 col-md-6 col-sm-6">
							<section class="panel">
								<h3 class="title">첨부할 파일들을 선택해주세요</h3>
								<div id="message"></div>

								<div class="form-group" id="main-file-tag">
									<div class="main-file-tag">
										<form action="boardwrite" id="frm" method="post"
											enctype="multipart/form-data">
											<table class="file-table">

												<tr class="file-table">
													<td>파일첨부 :</td>
													<td><input class="box" type="file" name="files" multiple id="files" accept=".jpg,.jpeg,.png,.gif,.bmp">
														<input type="hidden" id="fileCheck" name="file_Check"
														value="0" /></td>
												</tr>
												<tr class="file-table">
													<td colspan="2" align="center"><input type="submit"
														id="yes" value="사진 변경" /> <input type="reset" id="reset"
														value="취소" />
												</tr>
											</table>
										</form>
									</div>
								</div>
							</section>
						</div>
						<!-- /row -->
					</div>
				</form>
				<!-- /row -->
			</section>
			<!-- /wrapper -->
		</section>
		<!-- /MAIN CONTENT -->
		<!--main content end-->
		<!--footer start-->
		<footer class="site-footer">
			<div class="text-center">
				<p>
					<a href="/ItGoo/"><img class="footerimg"
						src="img/mainlogo.png" alt="mainlogo" /></a>
				</p>
				<div class="credits">
					<!--
            You are NOT allowed to delete the credit link to TemplateMag with free version.
            You can delete the credit link only if you bought the pro version.
            Buy the pro version with working PHP/AJAX contact form: https://templatemag.com/dashio-bootstrap-admin-template/
            Licensing information: https://templatemag.com/license/
          -->
					@2020 ITGOO Korea Corporation All Rights Reserved.
				</div>
				<a href="advanced_form_components.html#" class="go-top"> <i
					class="fa fa-angle-up"></i>
				</a>
			</div>
		</footer>
		<!--footer end-->
	</section>
	<!-- js placed at the end of the document so the pages load faster -->
	<script src="lib/jquery/jquery.min.js"></script>
	<script src="lib/bootstrap/js/bootstrap.min.js"></script>
	<script class="include" type="text/javascript"
		src="lib/jquery.dcjqaccordion.2.7.js"></script>
	<script src="lib/jquery.scrollTo.min.js"></script>
	<script src="lib/jquery.nicescroll.js" type="text/javascript"></script>
	<!--common script for all pages-->
	<!--script for this page-->
	<script src="lib/jquery-ui-1.9.2.custom.min.js"></script>
	<script type="text/javascript"
		src="lib/bootstrap-fileupload/bootstrap-fileupload.js"></script>
	<script type="text/javascript"
		src="lib/bootstrap-datepicker/js/bootstrap-datepicker.js"></script>
	<script type="text/javascript"
		src="lib/bootstrap-daterangepicker/date.js"></script>
	<script type="text/javascript"
		src="lib/bootstrap-daterangepicker/daterangepicker.js"></script>
	<script type="text/javascript"
		src="lib/bootstrap-datetimepicker/js/bootstrap-datetimepicker.js"></script>
	<script type="text/javascript"
		src="lib/bootstrap-daterangepicker/moment.min.js"></script>
	<script type="text/javascript"
		src="lib/bootstrap-timepicker/js/bootstrap-timepicker.js"></script>
	<script src="lib/advanced-form-components.js"></script>
	<script src="lib/common-scripts.js"></script>
</body>

</html>
