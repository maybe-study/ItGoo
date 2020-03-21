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

<!-- Favicons -->`
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
					<i class="fa fa-angle-right"></i> 마이페이지
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

										<tr id="usernamevalue">
											<td>이름:</td>
										</tr>
									</table>
								</div>
							</div>

							<div class="form-group">
								<div class="main-p-tag">
									<table>
										<tr id="useremailvalue">
											<td>이메일:</td>
										</tr>
									</table>
								</div>
							</div>


							<div class="form-group">
								<div class="main-p-tag">
									<table>
										<tr id="userphonevalue">
											<td>핸드폰:</td>
										</tr>
									</table>
								</div>
							</div>


							<div class="form-group">
								<div class="main-p-tag">
									<table>
										<tr id="userbirthdayvalue">
											<td>생일:</td>
										</tr>
									</table>
								</div>
							</div>


							<div class="form-group">
								<div class="main-p-tag">
									<table>
										<tr id="useraddressvalue">
											<td>주소:</td>

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
	<!-- js placed at the end of the document so the pages load faster -->

	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/toastr.min.js"></script>
	<script>
	let data= undefined;
	$.each(${mList},function(idx,data){
	var $trcn=$("#usernamevalue");
	var $trcb=$("#useremailvalue");
	var $trcp=$("#userphonevalue");
	var $trem=$("#userbirthdayvalue");
	var $trea=$("#useraddressvalue");
	$("<input id='usernameval1' class='companynameval' >").val(data.username).appendTo($trcn);
	$("<td><input type='button' class='myButton' id='changename' value='이름변경'>").appendTo($trcn);
	
	$("<input id='useremailval1' class='companybossval' >").val(data.useremail).appendTo($trcb);
	$("<td><input type='button' class='myButton' id='changeemail' value='이메일 변경'>").appendTo($trcb);
	
	$("<input id='userphoneval1' class='companyphoneval' > ").val(data.phone).appendTo($trcp);
	$("<td><input type='button' class='myButton' id='changephone' value='핸드폰 번호변경'>").appendTo($trcp);
	
	$("<input id='userbirthdayval1' class='companyemailval' > ").val(data.birthday).appendTo($trem);
	$("<td><input type='button' class='myButton' id='changebirth' value='생일변경'>").appendTo($trem);
	
	$("<input id='useraddrressval1' class='companyemailval' > ").val(data.useraddress).appendTo($trea);
	$("<td><input type='button' class='myButton' id='changeaddress' value='주소변경'>").appendTo($trea);
	
	});
  	 
	
	var usernamae = $("#usernameval1").val();
	$("#changename").on("click", function(data){
		var param={
				_method:"patch",
				username:$("#usernameval1").val(),
		}
		console.log("companyname=" ,usernamae);
		$.ajax({
			url: "updateusername",
			method: "get",
			data:param,
			dataType: "JSON"
		}).done((result)=>{
			toastr.success("이름변경에 성공했습니다.", '서버메시지');
			console.log("result=",result);
		
		
		} )
		
		.fail((xhr)=>{
			(xhr)=>printError(xhr, "회사명 변경에 실패하였습니다.")
			console.log("xhr=",xhr);
		});
		
	});
	
	var useremails = $("#useremailval1").val();
	$("#changeemail").on("click", function(data){
		var param={
				_method:"patch",
				useremail:$("#useremailval1").val(),
		}
		$.ajax({
			url: "updateuseremail",
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

	var userphone = $("#userphoneval1").val();
	$("#changephone").on("click", function(data){
		var param={
				_method:"patch",
				phone:$("#userphoneval1").val(),
		}
		$.ajax({
			url: "updateuserphone",
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
	
	
	var userphone = $("#userbirthdayval1").val();
	$("#changebirth").on("click", function(data){
		var param={
				_method:"patch",
				birthday:$("#userbirthdayval1").val(),
		}
		$.ajax({
			url: "updateuserbirth",
			method: "get",
			data:param,
			dataType: "JSON"
		}).done((result)=>{
			toastr.success("생일 변경에 성공했습니다.", '서버메시지');
			console.log("result=",result);
		
		
		} )
		
		.fail((xhr)=>{
			(xhr)=>printError(xhr, "생일 변경에 실패하였습니다.")
			console.log("xhr=",xhr);
		});
		
	});
	
	var useraddr = $("#useraddrressval1").val();
	$("#changeaddress").on("click", function(data){
		var param={
				_method:"patch",
				useraddress:$("#useraddrressval1").val(),
		}
		$.ajax({
			url: "updateuseraddress",
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
  </script>
</body>

</html>
