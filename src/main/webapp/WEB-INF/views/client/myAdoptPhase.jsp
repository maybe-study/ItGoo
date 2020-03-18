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
<title>Dashio - Bootstrap Admin Template</title>

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
					<li><a class="logout" href="login.html" name="${_csrf.parameterName}" value="${_csrf.token}">Logout</a></li>
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
        <h3><i class="fa fa-angle-right"></i> 나의입양 진행상황 </h3>
        <form action="testpapersubmit?${_csrf.parameterName}=${_csrf.token}"
						onsubmit="return makeTestJson()" name=frm id="frm" method="post" >
						<input type="hidden" name="test" value="0">
        <!-- /row -->
        <!-- INPUT MESSAGES -->
        <div class="row mt">
          <div class="col-lg-10">
          <div class="row mt" id="questionList">
          				<div class="col-lg-5">
				            <div class="form-panel">
				              <h4 class="mb"><i class="fa fa-angle-right"></i> 나의 입양 단계</h4>
				              
				              <div class="radio">
				                  <div id="myPhase"></div>
				                  		
				              </div>
				          </div>
		  				</div>
		  				
		  				
				          <div class="col-lg-5">
				            <div class="form-panel">
				              <h4 class="mb"><i class="fa fa-angle-right"></i> 1. 멍청이</h4>
				              
				              <div class="radio">
				                <label>
				                  <input type="radio" name="optionsRadios" id="optionsRadios1" value="option1" checked>
				                  	
				                  </label>
				              </div>
				              <div class="radio">
				                <label>
				                  <input type="radio" name="optionsRadios" id="optionsRadios2" value="option2">
				                 		
				                  </label>
				              </div>
				          </div>
				       </div>
				          
          </div>
          <div class="row mt">
               <div class="col-lg-12">
               <br>
               		<div class="form-group" style="text-align: center">
                       <button class="btn btn-theme" type="submit" >제출</button>
                   </div>
               </div>
        </div>
        </div>
        </div>
        <!-- /row -->
        </form>
      </section>
      <!-- /wrapper -->
    </section>
	<!-- js placed at the end of the document so the pages load faster -->

	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/toastr.min.js"></script>
	<script>
	console.log(${phase}[0].phase);
	$("#myPhase").append(${phase}[0].phase+"단계");
  </script>
</body>

</html>
