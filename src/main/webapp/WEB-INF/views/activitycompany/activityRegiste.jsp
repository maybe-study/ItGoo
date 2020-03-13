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
			<a href="/ItGoo/" class="logo"><b>IT<span>GOO</span></b></a>
			<!--logo end-->
			<div class="nav notify-row" id="top_menu">
				<!--  notification start -->
				<ul class="nav top-menu">
					<!-- settings start -->
					<li class="dropdown"><a data-toggle="dropdown"
						class="dropdown-toggle" href="/ItGoo/#"> <i
							class="fa fa-tasks"></i> <span class="badge bg-theme"></span>
					</a>
						<ul class="dropdown-menu extended tasks-bar">
							<div class="notify-arrow notify-arrow-green"></div>

							<li class="external"><a href="#">See All Tasks</a></li>
						</ul></li>
					<!-- settings end -->
					<!-- inbox dropdown start-->
					<li id="header_inbox_bar" class="dropdown"><a
						data-toggle="dropdown" class="dropdown-toggle" href="/ItGoo/#">
							<i class="fa fa-envelope-o"></i> <span class="badge bg-theme"></span>
					</a>
						<ul class="dropdown-menu extended inbox">
							<div class="notify-arrow notify-arrow-green"></div>


							<li><a href="/ItGoo/#">See all messages</a></li>
						</ul></li>
					<!-- inbox dropdown end -->
					<!-- notification dropdown start-->
					<li id="header_notification_bar" class="dropdown"><a
						data-toggle="dropdown" class="dropdown-toggle" href="/ItGoo/#">
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
			<div id="sidebar" class="nav-collapse ">
				<!-- sidebar menu start-->
				<ul class="sidebar-menu" id="nav-accordion">
					<p class="centered">
						<a href="profile.html"><img src="img/portfolio/itgoo2.PNG"
							class="img-circle" width="80"></a>
					</p>
					<h5 class="centered">ACTIVITY MANAGER</h5>
					<li class="mt"><a href="/ItGoo/"> <i
							class="fa fa-dashboard"></i> <span>Dashboard</span>
					</a></li>
					<li class="sub-menu"><a href="javascript:;"> <i
							class="fa fa-desktop"></i> <span>UI Elements</span>
					</a>
						<ul class="sub">
							<li><a href="general.html">General</a></li>
							<li><a href="buttons.html">Buttons</a></li>
							<li><a href="panels.html">Panels</a></li>
							<li><a href="font_awesome.html">Font Awesome</a></li>
						</ul></li>
					<li class="sub-menu"><a href="javascript:;"> <i
							class="fa fa-cogs"></i> <span>Components</span>
					</a>
						<ul class="sub">
							<li><a href="grids.html">Grids</a></li>
							<li><a href="calendar.html">Calendar</a></li>
							<li><a href="gallery.html">Gallery</a></li>
							<li><a href="todo_list.html">Todo List</a></li>
							<li><a href="dropzone.html">Dropzone File Upload</a></li>
							<li><a href="inline_editor.html">Inline Editor</a></li>
							<li><a href="file_upload.html">Multiple File Upload</a></li>
						</ul></li>
					<li class="sub-menu"><a href="javascript:;"> <i
							class="fa fa-book"></i> <span>Extra Pages</span>
					</a>
						<ul class="sub">
							<li><a href="blank.html">Blank Page</a></li>
							<li><a href="login.html">Login</a></li>
							<li><a href="lock_screen.html">Lock Screen</a></li>
							<li><a href="profile.html">Profile</a></li>
							<li><a href="invoice.html">Invoice</a></li>
							<li><a href="pricing_table.html">Pricing Table</a></li>
							<li><a href="faq.html">FAQ</a></li>
							<li><a href="404.html">404 Error</a></li>
							<li><a href="500.html">500 Error</a></li>
						</ul></li>
					<li class="sub-menu"><a class="active" href="javascript:;">
							<i class="fa fa-tasks"></i> <span>업체</span>
					</a>
						<ul class="sub">
							<li><a href="activitymyinfo">업체정보</a></li>
							<li><a href="activitylocationinfo">업체 위치</a></li>
							<li><a href="activitypicinfo">업체 시설 첨부</a></li>
							<li class="active"><a href="activityregiste">액티비티 등록</a></li>
							<li><a href="activitydelete">액티비티 삭제</a></li>
						</ul></li>
					<li class="sub-menu"><a href="javascript:;"> <i
							class="fa fa-th"></i> <span>Data Tables</span>
					</a>
						<ul class="sub">
							<li><a href="basic_table.html">Basic Table</a></li>
							<li><a href="responsive_table.html">Responsive Table</a></li>
							<li><a href="advanced_table.html">Advanced Table</a></li>
						</ul></li>
					<li><a href="inbox.html"> <i class="fa fa-envelope"></i> <span>Mail
						</span> <span class="label label-theme pull-right mail-info">2</span>
					</a></li>
					<li class="sub-menu"><a href="javascript:;"> <i
							class=" fa fa-bar-chart-o"></i> <span>Charts</span>
					</a>
						<ul class="sub">
							<li><a href="morris.html">Morris</a></li>
							<li><a href="chartjs.html">Chartjs</a></li>
							<li><a href="flot_chart.html">Flot Charts</a></li>
							<li><a href="xchart.html">xChart</a></li>
						</ul></li>
					<li class="sub-menu"><a href="javascript:;"> <i
							class="fa fa-comments-o"></i> <span>Chat Room</span>
					</a>
						<ul class="sub">
							<li><a href="lobby.html">Lobby</a></li>
							<li><a href="chat_room.html"> Chat Room</a></li>
						</ul></li>
					<li><a href="google_maps.html"> <i
							class="fa fa-map-marker"></i> <span>Google Maps </span>
					</a></li>
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
					<i class="fa fa-angle-right"></i> 액티비티 등록
				</h3>
				<!-- BASIC FORM ELELEMNTS -->
				<div class="row mt">
					<form action="regiactivity?${_csrf.parameterName}=${_csrf.token}"
						name=frm id="frm" method="post" enctype="multipart/form-data">
						<div class="col-lg-6 col-md-6 col-sm-6">
							<section class="panel">
								<h4 class="title"></h4>
								<div id="message"></div>
								<form class="contact-form php-mail-form" role="form"
									action="contactform/contactform.php" method="POST">

									<div class="form-group">
										<div class="main-p-tag">
											<table>
												<tr>
													<td>액티비티 이름:</td>
													<td><input type="text" id="activityname"
														class="activityname" name="activityname" /></td>
												</tr>
											</table>
										</div>
									</div>
									<div class="form-group">
										<div class="main-p-tag">
											<table>
												<tr>
													<td>액티비티 설명:</td>
													<td><textarea cols="35" rows="2" id="activitytextarea"
															class="activitytextarea" name="activityexplanation"></textarea></td>
												</tr>
											</table>
										</div>
									</div>
									<div class="form-group">
										<div class="main-p-tag">
											<table>
												<tr>
													<td>액티비티</td>
													<td>날짜:<input type="text" id="datepicker"
														class="datepicker" name="activitydate" /></td>
													<td>-시간:<input type="text" id="timepicker"
														class="timepicker" name="activitystart" /></td>
												</tr>
											</table>
										</div>
									</div>
									<div class="form-group">
										<div class="main-p-tag">
											<table>
												<tr>
													<td>액티비티</td>
													<td><select name="activitytime" id="activitytime"
														class="activitytime" name="activitytime">
															<option value="시간 선택">시간 선택</option>
															<option value="1">1</option>
															<option value="2">2</option>
															<option value="3">3</option>
															<option value="4">4</option>
															<option value="5">5</option>
															<option value="6">6</option>
													</select></td>
												</tr>
											</table>
										</div>

									</div>
									<div class="form-group">
										<div class="main-p-tag">
											<table>
												<tr>
													<td>최대 참여가능 마릿수:</td>
													<td><select name="activitydogcnt"
														id="activity-dog-cnt" class="activity-dog-cnt">
															<option value="마릿수 선택">마릿수 선택</option>
															<option value="1">1</option>
															<option value="2">2</option>
															<option value="3">3</option>
															<option value="4">4</option>
															<option value="5">5</option>
															<option value="6">6</option>
													</select></td>
												</tr>
											</table>
										</div>

									</div>

									<div class="form-group">
										<div class="main-p-tag">
											<table>
												<tr>
													<td>액티비티 가격:</td>
													<td><input type="text" id="activity" class="activity"
														name="activityprice" /></td>
												</tr>
											</table>
										</div>
									</div>
									<div class="form-group">
										<div class="main-p-tag">
											<table>
												<tr>
													<td>액티비티 사진:&nbsp;</td>
													<td><input class="box" type="file" name="files"
														multiple id="files" accept=".jpg,.jpeg,.png,.gif,.bmp">
														<input type="hidden" id="fileCheck" name="file_Check"
														value="0" /></td>
												</tr>
											</table>
										</div>
									</div>
									<div class="btn-div">
										<input type="submit" id="insertactivitybtn"
											class="insertactivitybtn" value="액티비티 등록" /> <input
											type="button" id="cancelactivitybtn"
											class="cancelactivitybtn" value="취소" />
									</div>
								</form>
							</section>
						</div>

					</form>
				</div>

				<!-- /row -->
				<div id="articleView_layer">
					<div id="bg_layer"></div>
					<div id="contents_layer"></div>
				</div>


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
	<script src="lib/common-scripts.js"></script>
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
	<script src="//code.jquery.com/ui/1.11.4/jquery-ui.js"></script>
	<script src="lib/time-select/timepicker-addon.js"></script>
	<script>
		$(function() {
			//모든 datepicker에 대한 공통 옵션 설정
			$.datepicker
					.setDefaults({
						dateFormat : 'yy-mm-dd' //Input Display Format 변경
						,
						showOtherMonths : true //빈 공간에 현재월의 앞뒤월의 날짜를 표시
						,
						showMonthAfterYear : true //년도 먼저 나오고, 뒤에 월 표시
						,
						changeYear : true //콤보박스에서 년 선택 가능
						,
						changeMonth : true //콤보박스에서 월 선택 가능                
						,
						showOn : "both" //button:버튼을 표시하고,버튼을 눌러야만 달력 표시 ^ both:버튼을 표시하고,버튼을 누르거나 input을 클릭하면 달력 표시  
						,
						buttonImage : "http://jqueryui.com/resources/demos/datepicker/images/calendar.gif" //버튼 이미지 경로
						,
						buttonImageOnly : true //기본 버튼의 회색 부분을 없애고, 이미지만 보이게 함
						,
						buttonText : "선택" //버튼에 마우스 갖다 댔을 때 표시되는 텍스트                
						,
						yearSuffix : "년" //달력의 년도 부분 뒤에 붙는 텍스트
						,
						monthNamesShort : [ '1', '2', '3', '4', '5', '6', '7',
								'8', '9', '10', '11', '12' ] //달력의 월 부분 텍스트
						,
						monthNames : [ '1월', '2월', '3월', '4월', '5월', '6월',
								'7월', '8월', '9월', '10월', '11월', '12월' ] //달력의 월 부분 Tooltip 텍스트
						,
						dayNamesMin : [ '일', '월', '화', '수', '목', '금', '토' ] //달력의 요일 부분 텍스트
						,
						dayNames : [ '일요일', '월요일', '화요일', '수요일', '목요일', '금요일',
								'토요일' ] //달력의 요일 부분 Tooltip 텍스트
						,
						minDate : "-1M" //최소 선택일자(-1D:하루전, -1M:한달전, -1Y:일년전)
						,
						maxDate : "+1Y" //최대 선택일자(+1D:하루후, -1M:한달후, -1Y:일년후)                    
						,
						defualtDate : "String"
					});
			$.timepicker.setDefaults({
				// timepicker 설정
				timeFormat : 'HH:mm:ss',
				controlType : 'select',
				oneLine : true,
			});
			$("#timepicker").timepicker();
			$("#timepicker").timepicker('setTime', new Date());

			//input을 datepicker로 선언
			$("#datepicker").datepicker();

			//From의 초기값을 오늘 날짜로 설정
			$('#datepicker').datepicker('setDate', 'today'); //(-1D:하루전, -1M:한달전, -1Y:일년전), (+1D:하루후, -1M:한달후, -1Y:일년후)
		});
	</script>
</body>

</html>
