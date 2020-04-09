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
<title>Dashio - Bootstrap Admin Template</title>

<!-- Favicons -->
<link href="img/favicon.png" rel="icon">
<link href="img/apple-touch-icon.png" rel="apple-touch-icon">

<!-- Bootstrap core CSS -->
<link href="lib/bootstrap/css/bootstrap1.min.css" rel="stylesheet">
<!--external css-->
<link href="lib/font-awesome/css/font-awesome.css" rel="stylesheet" />
<link rel="stylesheet" type="text/css"
	href="lib/bootstrap-fileupload/bootstrap-fileupload.css" />

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
#text {
	background-color: red;
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
					<li>
					<a class="logout" href="#" onclick="document.getElementById('logout-form').submit();">Logout</a>
		           <form id="logout-form" action='logout' method="POST">
					   <input name="${_csrf.parameterName}" type="hidden" value="${_csrf.token}"/>
					</form>
					
					</li>
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



					<li class="sub-menu"><a href="javascript:;"> <i
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
						
					<li class="sub-menu"><a href="javascript:;" class="active" > <i	class="fa fa-th"></i> <span>가상입양 관리</span>
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
					<i class="fa fa-angle-right"></i> 마이페이지
				</h3>
				<!-- BASIC FORM ELELEMNTS -->
				<div class="row mt">
					<div class="col-lg-6 col-md-6 col-sm-6">

						<h4 class="title">회원님들의 개인정보 보호에 힘쓰겠습니다.</h4>
						<div id="message"></div>
						<form class="contact-form php-mail-form" role="form"
							action="shelterinfochange" method="POST">

							<div class="form-group">
								<div class="main-p-tag">
									<table>

										<tr id="sheltername">
											<td>업체명:</td>
										</tr>
									</table>
								</div>
							</div>


							<div class="form-group">
								<div class="main-p-tag">
									<table>

										<tr id="shelterboss">
											<td>대표자:</td>
										</tr>
									</table>
								</div>
							</div>



							<div class="form-group">
								<div class="main-p-tag">
									<table>
										<tr id="shelterphone">
											<td>핸드폰:</td>
										</tr>
									</table>
								</div>
							</div>

							
							<div class="form-group">
								<div class="main-p-tag">
									<table>
										<tr id="shelteraddr">
											<td>주소:</td>
										</tr>
									</table>
								</div>
							</div>



							<div class="form-group">
								<div class="main-p-tag">
									<table>
										<tr id="shelteremail">
											<td>이메일:</td>
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
					<a href="index.html"><img class="footerimg"
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
	<script src="lib/common-scripts.js"></script>
	<!--script for this page-->
	<script src="lib/jquery-ui-1.9.2.custom.min.js"></script>


	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/toastr.min.js"></script>
	<script>
	//리스트 보기
	var shelter = ${shelter}
	console.log(shelter);
	$('#sheltername').text(shelter.companyname);
	$('#shelterboss').text(shelter.companyboss);
	$('#shelterphone').text(shelter.companyphone);
	$('#shelteraddr').text(shelter.companylocation);
	$('#shelteremail').text(shelter.companyemail);
	
	
//리스트 수정
	let data= undefined;
	$.each(${mList},function(idx,data){
	var $trcn=$("#sheltername");
	var $trcb=$("#shelterboss");
	var $trcp=$("#shelterphone");
	var $trem=$("#shelteremail");
	var $trea=$("#shelteraddr");
	$("<input id='sheltername1' class='companynameval' >").val(data.sheltername).appendTo($trcn);
	$("<td><input type='button' class='myButton' id='shname' value='업체이름변경'>").appendTo($trcn);
	
	$("<input id='shelterboss1' class='companybossval' >").val(data.shelterboss).appendTo($trcb);
	$("<td><input type='button' class='myButton' id='shboss' value='대표자이름변경'>").appendTo($trcb);
	
	$("<input id='shelterphone1' class='companyphoneval' > ").val(data.shelterphone).appendTo($trcp);
	$("<td><input type='button' class='myButton' id='shphone' value='핸드폰 번호변경'>").appendTo($trcp);
	
	$("<input id='shelteraddr1' class='companyemailval' > ").val(data.shelteraddr).appendTo($trea);
	$("<td><input type='button' class='myButton' id='shaddr' value='주소변경'>").appendTo($trea);
	
	$("<input id='shelteremail1' class='companyemailval' > ").val(data.shelteremail).appendTo($trem);
	$("<td><input type='button' class='myButton' id='shemail' value='이메일변경'>").appendTo($trem);
	});
	
	
	//업체이름 변경
	var sheltername = $("#sheltername1").val();
	$("#shname").on("click", function(data){
		var param={
				_method:"patch",
				sheltername:$("#sheltername1").val(),
		}
		console.log("shletername=" ,sheltername);
		$.ajax({
			url: "updatesheltername",
			method: "get",
			data:param,
			dataType: "JSON"
		}).done((result)=>{
			toastr.success("업체명변경에 성공했습니다.", '서버메시지');
			console.log("result=",result);
		
		
		} )
		
		.fail((xhr)=>{
			(xhr)=>printError(xhr, "회사명 변경에 실패하였습니다.")
			console.log("xhr=",xhr);
		});
		
	});
	
	
	//업체대표이름변경
	var shelterboss = $("#shleterboss1").val();
	$("#shboss").on("click",function(data){
		var param={
				_method:"patch",
				shelterboss:&("#shelterboss1").val(),
		}
		console.log("shelterboss=",shelterboss);
		&.ajax({
			url:"updateshelterboss",
			method:"get",
			data:param,
			dataType:"JSON"
		}).don((result)=>{
			toastr.success("이름변경에 성공했습니다.",'서버 메세지');
			console.log("result=",result);
			
		} )
		.fail((xhr)=>{
			(xhr)=>printError(xhr, "이름변경에 실패하였습니다.")
			console.log("xhr=",xhr);
		} );
		
	} );
	
	
	//보호소 전화번호 변경

	var shelterphone = $("#shelterphone1").val();
	$("#shphone").on("click", function(data){
		var param={
				_method:"patch",
				phone:$("#shelterphone1").val(),
		}
		$.ajax({
			url: "updateshelterphone",
			method: "get",
			data:param,
			dataType: "JSON"
		}).done((result)=>{
			toastr.success("전화번호 변경에 성공했습니다.", '서버메시지');
			console.log("result=",result);
		
		
		} )
		
		.fail((xhr)=>{
			(xhr)=>printError(xhr, "전화번호 변경에 실패하였습니다.")
			console.log("xhr=",xhr);
		});
		
	});
	
	
	
	//보호소 주소 변경
	var shelteraddr = $("#shelteraddr1").val();
	$("#shaddr").on("click", function(data){
		var param={
				_method:"patch",
				useraddress:$("#shelteraddr1").val(),
		}
		$.ajax({
			url: "updateshelteraddr",
			method: "get",
			data:param,
			dataType: "JSON"
		}).done((result)=>{
			toastr.success("주소 변경에 성공했습니다.", '서버메시지');
			console.log("result=",result);
		
		
		} )
		
		.fail((xhr)=>{
			(xhr)=>printError(xhr, "주소 변경에 실패하였습니다.")
			console.log("xhr=",xhr);
		});
		
	});

	//보호소 이메일 변경
    var shelteremails = $("#shelteremail1").val();
	$("#shemail").on("click", function(data){
		var param={
				_method:"patch",
				shelteremail:$("#shelteremail1").val(),
		}
		$.ajax({
			url: "updateshelteremail",
			method: "get",
			data:param,
			dataType: "JSON"
		}).done((result)=>{
			toastr.success("이메일 변경에 성공했습니다.", '서버메시지');
			console.log("result=",result);
		
		} )
		
		.fail((xhr)=>{
			(xhr)=>printError(xhr, "이메일 변경에 실패하였습니다.")
			console.log("xhr=",xhr);
		});
		
	});



	
		
	</script>
</body>

</html>
