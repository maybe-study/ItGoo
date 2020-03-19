<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="UTF-8">

<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="">
<meta name="author" content="Dashboard">
<meta name="keyword"
	content="Dashboard, Bootstrap, Admin, Template, Theme, Responsive, Fluid, Retina">
<title>Dashio - Bootstrap Admin Template</title>

<!-- Favicons -->
<link href="img/favicon.png" rel="icon">
<link href="img/apple-touch-icon.png" rel="apple-touch-icon">

<!-- Bootstrap core CSS -->
<link href="lib/bootstrap/css/bootstrap.min.css" rel="stylesheet">
<!--external css-->
<link href="lib/font-awesome/css/font-awesome.css" rel="stylesheet" />
<!-- Custom styles for this template -->
<link href="css/activitystyle/activitystyle.css" rel="stylesheet">
<link href="css/style-responsive.css" rel="stylesheet">
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<link rel="stylesheet"
	href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<link rel="stylesheet" href="css/activitystyle/timepicker-addon.css" />
<link rel="stylesheet"
	href="//code.jquery.com/ui/1.11.4/themes/smoothness/jquery-ui.css" />

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
					<li><a class="logout" href="login.html">Logout</a></li>
				</ul>
			</div>
		</header>
		<!--header end-->
		<!-- **********************************************************************************************************************************************************
        MAIN SIDEBAR MENU
        *********************************************************************************************************************************************************** -->
		<!--sidebar start-->
		<aside>
			<!-- 여기부분 접어둠 -->
			<div id="sidebar" class="nav-collapse ">
				<!-- sidebar menu start-->
				<ul class="sidebar-menu" id="nav-accordion">
					<p class="centered">
						<a href="shelterMyInfo"><img src="img/portfolio/itgoo2.PNG"
							class="img-circle" width="80"></a>
					</p>
					<h5 class="centered">SHELTER MANAGER</h5>
					<li class="mt"><a href="index.html"> <i
							class="fa fa-dashboard"></i> <span>홈으로 </span>
					</a></li>
					<li class="sub-menu"><a href="javascript:;"> <i
							class="fa fa-desktop"></i> <span>정보보기</span>
					</a>
						<ul class="sub">
							<li><a href="shelterMyInfo">보호소 정보보기</a></li>
						</ul></li>


					<li class="sub-menu"><a href="javascript:;"> <i
							class="fa fa-cogs"></i> <span>정보 수정</span>
					</a>
						<ul class="sub">
							<li><a href="">보호소정보 수정</a></li>
						</ul></li>

					<li class="sub-menu"><a href="javascript:;"> <i
							class="fa fa-book"></i> <span>보호소 사진</span>
					</a>
						<ul class="sub">
							<li><a href="shelterPicInfo.jsp">사업자등록증</a></li>
							<li><a href="shelterPicInfo2.jsp">시설사진</a></li>
						</ul></li>


					<li class="sub-menu"><a href="javascript:;"> <i
							class="fa fa-th"></i> <span>입양 공고</span>
					</a>
						<ul class="sub">
							<li><a href="shelterRegiste">등록</a></li>
							<li><a href="shelterDelete">삭제</a></li>
						</ul></li>




					<li class=""><a href="javascript:;"><i
							class="fa fa-map-marker"></i> <span>보호소위치</span> </a>
						<ul class="sub">
							<li><a href="">위치 및 수정</a></li>
						</ul></li>
					<!-- a href="google_maps.html"-->


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
					<i class="fa fa-angle-right"></i> 리스트삭제
				</h3>
				<div class="row">

					<!-- /col-md-12 -->
					<div class="col-md-12 mt">
						<div class="content-panel">
							<table class="table table-hover">
								<h4>
									<i class="fa fa-angle-right"></i> 현재 등록되어있는 강아지 목록
								</h4>
								<hr>
								<thead>
									<tr>
										<th>사진</th>
										<th>고유번호</th>
										<th>이름</th>
										<th>나이</th>
										<th>성별</th>
										<th>중성화
										<th>특이사항</th>
										<th>삭제</th>
									</tr>
								</thead>
								<tbody id="shelterlist">

								</tbody>
							</table>
						</div>
						   <div class="pagingdiv"></div>
					</div>
					<!-- /col-md-12 -->
				</div>
				<!-- row -->

				<!-- /row -->
			</section>
		</section>
		<!-- /MAIN CONTENT -->
		<!--main content end-->
		<!--footer start-->
		<footer class="site-footer">
			<div class="text-center">
				<p>
					<a href="index.html"><img class="footerimg"
						src="img/mainlogo.png" alt="mainlogo" /></a>
				</p>
				<div class="credits">

					<div id="articleView_layer">
						<div id="bg_layer"></div>
						<div id="contents_layer"></div>
					</div>
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
	<script src="//code.jquery.com/ui/1.11.4/jquery-ui.js"></script>
	<script src="lib/time-select/timepicker-addon.js"></script>
	<script src="lib/jquery/jquery.min.js"></script>
	<script src="lib/bootstrap/js/bootstrap.min.js"></script>
	<script class="include" type="text/javascript"
		src="lib/jquery.dcjqaccordion.2.7.js"></script>
	<script src="lib/jquery.scrollTo.min.js"></script>
	<script src="lib/jquery.nicescroll.js" type="text/javascript"></script>
	<!--common script for all pages-->
	<script src="lib/common-scripts.js"></script>
	<!--script for this page-->

	<script>
	$.each(${adList},function(idx,data){
		var $picdiv= $("#acitvitypics");
		var $tran = $("#activitynametr");
		var $trap = $("#activitypricetr");
		var $trad = $("#activitydatetr");
		var $tras = $("#activitystarttr");
		console.log("activitypic="+data.activitypic);
		$("<img>").attr("src",data.activitypic).attr("alt",data.activitypic).appendTo($picdiv);

		$("<td>").text(data.activityname).appendTo($tran);
		$("<td>").text(data.activityprice).appendTo($trap);
		$("<td>").text(data.activitydate).appendTo($trad);
		$("<td>").text(data.activitystart).appendTo($tras);
	});
	
	</script>
</body>

</html>
