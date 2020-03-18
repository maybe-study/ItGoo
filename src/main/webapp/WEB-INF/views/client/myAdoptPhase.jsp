<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>

<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta name="description" content="">
  <meta name="author" content="Dashboard">
  <meta name="keyword" content="Dashboard, Bootstrap, Admin, Template, Theme, Responsive, Fluid, Retina">
  <title>Dashio - Bootstrap Admin Template</title>

  <!-- Favicons -->
  <link href="img/favicon.png" rel="icon">
  <link href="img/apple-touch-icon.png" rel="apple-touch-icon">

  <!-- Bootstrap core CSS -->
  <link href="lib/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <!--external css-->
  <link href="lib/font-awesome/css/font-awesome.css" rel="stylesheet" />
  <link rel="stylesheet" type="text/css" href="lib/bootstrap-fileupload/bootstrap-fileupload.css" />
  <link rel="stylesheet" type="text/css" href="lib/bootstrap-datepicker/css/datepicker.css" />
  <link rel="stylesheet" type="text/css" href="lib/bootstrap-daterangepicker/daterangepicker.css" />
  <link rel="stylesheet" type="text/css" href="lib/bootstrap-timepicker/compiled/timepicker.css" />
  <link rel="stylesheet" type="text/css" href="lib/bootstrap-datetimepicker/datertimepicker.css" />
  <!-- Custom styles for this template -->
  <link href="css/style.css" rel="stylesheet">
  <link href="css/style-responsive.css" rel="stylesheet">

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
					<i class="fa fa-angle-right"></i> 나의입양 진행상황
				</h3>
				<form action="testpapersubmit?${_csrf.parameterName}=${_csrf.token}"
					onsubmit="return makeTestJson()" name=frm id="frm" method="post">
					<input type="hidden" name="test" value="0">
					<!-- /row -->
					<!-- INPUT MESSAGES -->
					<div class="row mt">
						<div class="col-lg-10">
							<div class="row mt" id="addogList"></div>
							
						</div>
					</div>

					<!-- modal  -->
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
										<div class="carousel-inner"></div>
										<!-- Left and right controls -->
										<a class="carousel-control-prev" href="#demo"
											data-slide="prev"> <span
											class="carousel-control-prev-icon"></span>
										</a> <a class="carousel-control-next" href="#demo"
											data-slide="next"> <span
											class="carousel-control-next-icon"></span>
										</a>
									</div>
								</div>
								<div class="modal-footer">
									<button type="button" class="btn btn-primary" id="adoptBtn">입양</button>
									<button type="button" class="btn btn-default"
										id="closeModalBtn">뒤로가기</button>
								</div>
							</div>
						</div>
					</div>
					<!-- /row -->
				</form>
			</section>
			<!-- /wrapper -->
  
  <script src="lib/jquery/jquery.min.js"></script>
  <script src="lib/bootstrap/js/bootstrap.min.js"></script>
  <script class="include" type="text/javascript" src="lib/jquery.dcjqaccordion.2.7.js"></script>
  <script src="lib/jquery.scrollTo.min.js"></script>
  <script src="lib/jquery.nicescroll.js" type="text/javascript"></script>
  <!--common script for all pages-->
  <script src="lib/common-scripts.js"></script>
  <!--script for this page-->
  <script src="lib/jquery-ui-1.9.2.custom.min.js"></script>
  <script type="text/javascript" src="lib/bootstrap-fileupload/bootstrap-fileupload.js"></script>
  <script type="text/javascript" src="lib/bootstrap-datepicker/js/bootstrap-datepicker.js"></script>
  <script type="text/javascript" src="lib/bootstrap-daterangepicker/date.js"></script>
  <script type="text/javascript" src="lib/bootstrap-daterangepicker/daterangepicker.js"></script>
  <script type="text/javascript" src="lib/bootstrap-datetimepicker/js/bootstrap-datetimepicker.js"></script>
  <script type="text/javascript" src="lib/bootstrap-daterangepicker/moment.min.js"></script>
  <script type="text/javascript" src="lib/bootstrap-timepicker/js/bootstrap-timepicker.js"></script>
  <script src="lib/advanced-form-components.js"></script>
    <script src="main2.js?ver"></script>
  
<script>
	
/* 	 $.each(${phase},function(idx,data){
		 var $phaselist = $("$phaselist");
		 var $div1=$('<div>').append(data.phase);
		 $phaselist.append($div1);
	
	 }); */
	 $.each(${aList},function(idx,data){
		 console.log("피리스트 만드는중");
		 console.log("data값은 ",data);
		 var $qList = $("#addogList");
		 var $img=$('<img id="openModalBtn" style="width:100%">').attr('src',data.thum);
		  $img[0].dataset.dogid=data.dogid;
		var $div1 = $('<div class="col-lg-4">')
		var $div2=$('<div class="form-panel">');
		var $h4=$('<h4 class="mb">').append($('<i class="fa fa-angle-right">'))
		var $div3 = $('<div class="card-body text-center">')
                .append($('<i class="fas fa-mobile-alt text-primary mb-2">'))
                .append($('<h4 class="text-uppercase m-0">').text(data.dogname))
                .append($('<div class="small text-black-50">').text(data.dogage))
                .append($('<div class="small text-black-50">').text(data.dogspecial));
		 
		
		 $div3.append($img);
		 $h4.append($div3);
		 $div2.append($h4);
		 $div1.append($div2);
		 $qList.append($div1);
	 });
	 
	 $('#openModalBtn').on('click', function(e){
		 $('#modalBox').modal('show'); 
	 });
		 //console.log(e.target.dataset.dogid);
		/*  var dogid=e.target.dataset.dogid;
		
		 console.log("dogid:",dogid);
		 $.ajaxSetup({
				beforeSend : function(xhr) {
					xhr.setRequestHeader("${_csrf.headerName}", "${_csrf.token}");
				} */
			//});//먼저 보냄
			/* $.ajax({ // 에이작스 열고
				type : 'post', //타입은 get 
				url : "adoptlistdetail", // restFul 방식
				data : {dogid:dogid},
				dataType : "json",

				//서블릿이 성공하면 다시 돌아오는것
				success : function(data) {
					
					console.log("data",data);
					var $uls=$('.carousel-indicators').empty();
					var $items=$('.carousel-inner').empty();
					//사진 리스트
					$.each(data.dogpics,function(idx,pic){
						if(idx==0){
							$('<li data-target="#demo" data-slide-to="0" class="active">').appendTo($uls);
							var $div=$('<div class="carousel-item active">').appendTo($items);
							$('<img class="dog">').attr('src',pic).appendTo($div);
						}else{
							var $li=$('<li data-target="#demo">').appendTo($uls);
							$li[0].dataset.slideTo=idx;
							var $div=$('<div class="carousel-item">').appendTo($items);
							$('<img class="dog">').attr('src',pic).appendTo($div);
						}
						 */
					//});
	/*  var dList=${dogList}
	 $.each(dList,function(idx,data){
		 console.log("디리스트 만드는중");
		 var $qList = $("#addogList");
		 var $div1 = $('<div class="col-lg-4">')
		 var $div2=$('<div class="form-panel">');
		 var $h4=$('<h4 class="mb">').append('<i class="fa fa-angle-right">').append("나의 입양단계는  "+pList[0].phase +"  단계")
		 $div2.append($h4);
		 $div1.append($div2);
		 $qList.append($div1);
	 }); */
	 
	
  </script>
</body>



</html>
