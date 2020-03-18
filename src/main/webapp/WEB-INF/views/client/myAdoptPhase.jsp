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
          				
		  				
		  				
				         
				          
          </div>
          <div class="row mt" id="addogList">
          
          
          
          
          
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
        <div id="modalBox" class="modal fade" id="myModal" tabindex="-1"
				role="dialog" aria-labelledby="myModalLabel">
				<div class="modal-dialog" role="document">
					<div class="modal-content">
						<div class="modal-header">
							<h4 class="modal-title" id="myModalLabel">입양을 기다려요</h4>
							<button type="button" class="close" data-dismiss="modal"
								aria-label="Close">
								<span aria-hidden="true">×</span>
							</button>

						</div>
						<div class="modal-body">
							<table style="margin: auto">
								<tr>
									<td>이름</td>
									<td id="name"></td>
								</tr>
								<tr>
									<td>나이</td>
									<td id="age"></td>
								</tr>
								<tr>
									<td>중성화 여부</td>
									<td id="dogjungsung"></td>
								</tr>
								<tr>
									<td>성별</td>
									<td id="sex"></td>
								</tr>
								<tr>
									<td>특이사항</td>
									<td id="special"></td>
								</tr>
							</table>
							<div id="demo" class="carousel slide" data-ride="carousel">
								<ul class="carousel-indicators">
								</ul>
								<!-- The slideshow -->
								<div class="carousel-inner">
								</div>
								<!-- Left and right controls -->
								<a class="carousel-control-prev" href="#demo" data-slide="prev">
									<span class="carousel-control-prev-icon"></span>
								</a> <a class="carousel-control-next" href="#demo" data-slide="next">
									<span class="carousel-control-next-icon"></span>
								</a>
							</div>
						</div>
						<div class="modal-footer">
							<button type="button" class="btn btn-primary" id="adoptBtn">입양</button>
							<button type="button" class="btn btn-default" id="closeModalBtn">뒤로가기</button>
						</div>
					</div>
				</div>
			</div>
        <!-- /row -->
        </form>
      </section>
      <!-- /wrapper -->
    </section>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/toastr.min.js"></script>
		 <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

</body>
	
	<script>
	
/* 	 $.each(${phase},function(idx,data){
		 var $phaselist = $("$phaselist");
		 var $div1=$('<div>').append(data.phase);
		 $phaselist.append($div1);
	
	 }); */
	 var pList=${phaseList}
	 $.each(pList,function(idx,data){
		 console.log("피리스트 만드는중");
		 var $qList = $("#questionList");
		 var $div1 = $('<div class="col-lg-4">')
		 var $div2=$('<div class="form-panel">');
		 var $h4=$('<h4 class="mb">').append('<i class="fa fa-angle-right">').append("나의 입양단계는  "+pList[0].phase +"  단계");
		 $div2.append($h4);
		 $div1.append($div2);
		 $qList.append($div1);
	 });
	 
	
	 var dList=${dogList}
	 $.each(dList,function(idx,data){
		 console.log("디리스트 만드는중");
		 var $qList = $("#addogList");
		 var $div1 = $('<div class="col-lg-4">')
		 var $div2=$('<div class="form-panel">');
		 var $h4=$('<h4 class="mb">').append('<i class="fa fa-angle-right">').append("나의 입양단계는  "+pList[0].phase +"  단계")
		 $div2.append($h4);
		 $div1.append($div2);
		 $qList.append($div1);
	 });
	 
	
  </script>

</html>
