<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="">


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
  <link href="lib/bootstrap/css/bootstrap1.min.css" rel="stylesheet">
  <!--external css-->
  <link href="lib/font-awesome/css/font-awesome.css" rel="stylesheet" />
  <link rel="stylesheet" type="text/css" href="lib/bootstrap-fileupload/bootstrap-fileupload.css" />
  <link rel="stylesheet" type="text/css" href="lib/bootstrap-datepicker/css/datepicker.css" />
  <link rel="stylesheet" type="text/css" href="lib/bootstrap-daterangepicker/daterangepicker.css" />
  <link rel="stylesheet" type="text/css" href="lib/bootstrap-timepicker/compiled/timepicker.css" />
  <link rel="stylesheet" type="text/css" href="lib/bootstrap-datetimepicker/datertimepicker.css" />
  <!-- Custom styles for this template -->
  <link href="css/activitystyle/activitystyle.css" rel="stylesheet">
  <link href="css/style-responsive.css" rel="stylesheet">
  <link rel="stylesheet" href="//cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/toastr.min.css">
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
        <div class="fa fa-bars tooltips" data-placement="right" data-original-title="Toggle Navigation"></div>
      </div>
      <!--logo start-->
      <a href="/ItGoo/" class="logo"><b>IT<span>GOO</span></b></a>
      <!--logo end-->
      <div class="nav notify-row" id="top_menu">
        <!--  notification start -->
        <ul class="nav top-menu">
          <!-- settings start -->
          <li class="dropdown">
            <a data-toggle="dropdown" class="dropdown-toggle" href="/ItGoo/#">
              <i class="fa fa-tasks"></i>
              <span class="badge bg-theme"></span>
              </a>
            <ul class="dropdown-menu extended tasks-bar">
              <div class="notify-arrow notify-arrow-green"></div>
             
              <li class="external">
                <a href="#">See All Tasks</a>
              </li>
            </ul>
          </li>
          <!-- settings end -->
          <!-- inbox dropdown start-->
          <li id="header_inbox_bar" class="dropdown">
            <a data-toggle="dropdown" class="dropdown-toggle" href="/ItGoo/#">
              <i class="fa fa-envelope-o"></i>
              <span class="badge bg-theme"></span>
              </a>
            <ul class="dropdown-menu extended inbox">
              <div class="notify-arrow notify-arrow-green"></div>
              
              
              <li>
                <a href="/ItGoo/#">See all messages</a>
              </li>
            </ul>
          </li>
          <!-- inbox dropdown end -->
          <!-- notification dropdown start-->
          <li id="header_notification_bar" class="dropdown">
            <a data-toggle="dropdown" class="dropdown-toggle" href="/ItGoo/#">
              <i class="fa fa-bell-o"></i>
              <span class="badge bg-warning"></span>
              </a>
            <ul class="dropdown-menu extended notification">
              <div class="notify-arrow notify-arrow-yellow"></div>
              
            </ul>
          </li>
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
          <p class="centered"><a href="profile.html"><img src="img/portfolio/itgoo2.PNG" class="img-circle" width="80"></a></p>
          <h5 class="centered">ACTIVITY MANAGER</h5>
          <li class="mt">
            <a href="/ItGoo/">
              <i class="fa fa-dashboard"></i>
              <span>Dashboard</span>
              </a>
          </li>
          <li class="sub-menu">
            <a href="javascript:;">
              <i class="fa fa-desktop"></i>
              <span>UI Elements</span>
              </a>
            <ul class="sub">
              <li><a href="general.html">General</a></li>
              <li><a href="buttons.html">Buttons</a></li>
              <li><a href="panels.html">Panels</a></li>
              <li><a href="font_awesome.html">Font Awesome</a></li>
            </ul>
          </li>
          <li class="sub-menu">
            <a href="javascript:;">
              <i class="fa fa-cogs"></i>
              <span>Components</span>
              </a>
            <ul class="sub">
              <li><a href="grids.html">Grids</a></li>
              <li><a href="calendar.html">Calendar</a></li>
              <li><a href="gallery.html">Gallery</a></li>
              <li><a href="todo_list.html">Todo List</a></li>
              <li><a href="dropzone.html">Dropzone File Upload</a></li>
              <li><a href="inline_editor.html">Inline Editor</a></li>
              <li><a href="file_upload.html">Multiple File Upload</a></li>
            </ul>
          </li>
          <li class="sub-menu">
            <a href="javascript:;">
              <i class="fa fa-book"></i>
              <span>Extra Pages</span>
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
            </ul>
          </li>
          <li class="sub-menu">
            <a class="active" href="javascript:;">
              <i class="fa fa-tasks"></i>
              <span>업체</span>
              </a>
            <ul class="sub">
              <li class="active"><a href="activitymyinfo">업체정보</a></li>
              <li><a href="activitylocationinfo">업체 위치</a></li>
              <li><a href="activitypicinfo">업체 시설 첨부</a></li>
              <li><a href="activityregiste">액티비티 등록</a></li>
              <li><a href="activitydelete">액티비티 삭제</a></li>
            </ul>
          </li>
          <li class="sub-menu">
            <a href="javascript:;">
              <i class="fa fa-th"></i>
              <span>Data Tables</span>
              </a>
            <ul class="sub">
              <li><a href="basic_table.html">Basic Table</a></li>
              <li><a href="responsive_table.html">Responsive Table</a></li>
              <li><a href="advanced_table.html">Advanced Table</a></li>
            </ul>
          </li>
          <li>
            <a href="inbox.html">
              <i class="fa fa-envelope"></i>
              <span>Mail </span>
              <span class="label label-theme pull-right mail-info">2</span>
              </a>
          </li>
          <li class="sub-menu">
            <a href="javascript:;">
              <i class=" fa fa-bar-chart-o"></i>
              <span>Charts</span>
              </a>
            <ul class="sub">
              <li><a href="morris.html">Morris</a></li>
              <li><a href="chartjs.html">Chartjs</a></li>
              <li><a href="flot_chart.html">Flot Charts</a></li>
              <li><a href="xchart.html">xChart</a></li>
            </ul>
          </li>
          <li class="sub-menu">
            <a href="javascript:;">
              <i class="fa fa-comments-o"></i>
              <span>Chat Room</span>
              </a>
            <ul class="sub">
              <li><a href="lobby.html">Lobby</a></li>
              <li><a href="chat_room.html"> Chat Room</a></li>
            </ul>
          </li>
          <li>
            <a href="google_maps.html">
              <i class="fa fa-map-marker"></i>
              <span>Google Maps </span>
              </a>
          </li>
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
        <h3><i class="fa fa-angle-right"></i> 업체 정보</h3>
        <!-- BASIC FORM ELELEMNTS -->
        <div class="row mt">
          <div class="col-lg-6 col-md-6 col-sm-6">
           
            <h4 class="title">업체의 정보보호를 위해 최선을 다하겠습니다.</h4>
            <div id="message"></div>
            <form class="contact-form php-mail-form" role="form" action="contactform/contactform.php" method="POST">

              <div class="form-group">
              <div class="main-p-tag">
              <table>
              
               <tr id="companynamevalue">
               <td>업체명:</td>
               <%-- <td>${aList.companyname}</td>
               <td><a href="#" class="myButton">변경</a></td> --%>
               </tr>
               </table>
               </div>
              </div>
              <div class="form-group">
                <div class="main-p-tag">
              <table >
               <tr id="companybossvalue">
               <td>대표자:</td>
               
              <%--  <td>${aList.companyboss }</td>
               <td><a href="#" class="myButton">변경</a></td> --%>
               </tr>
               </table>
               </div>
              </div>
              <div class="form-group">
                <div class="main-p-tag">
              <table >
               <tr id="companyphonevalue">
               <td>휴대폰:</td>
               <%-- <td>${aList.companyphone }</td>
               <td><a href="#" class="myButton">변경</a></td> --%>
               </tr>
               </table>
               </div>
              </div>

              <div class="form-group">
                 <div class="main-p-tag">
              <table >
               <tr id="companyemailvalue">
               <td>이메일:</td>
              <%--  <td>${aList.companyemail }</td>
               <td><a href="#" class="myButton">변경</a></td> --%>
               </tr>
               </table>
               </div>
              </div>
            </form>
            
          </div>
        <!-- /row -->


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
         <a href="/ItGoo/"><img class="footerimg" src="img/mainlogo.png" alt="mainlogo" /></a>
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
        <a href="advanced_form_components.html#" class="go-top">
          <i class="fa fa-angle-up"></i>
          </a>
      </div>
    </footer>
    <!--footer end-->
  </section>
  <!-- js placed at the end of the document so the pages load faster -->
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
  <script src="https://cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/toastr.min.js"></script>
<script>
		let data= undefined;
	$.each(${aList},function(idx,data){
	var $trcn=$("#companynamevalue");
	var $trcb=$("#companybossvalue");
	var $trcp=$("#companyphonevalue");
	var $trem=$("#companyemailvalue");
	$("<input id='companynameval1' class='companynameval' >").val(data.companyname).appendTo($trcn);
	$("<td><input type='button' class='myButton' id='changename' value='업체명 번경'>").appendTo($trcn);
	$("<input id='companybossval1' class='companybossval' >").val(data.companyboss).appendTo($trcb);
	$("<td><input type='button' class='myButton' id='changeboss' value='대표자 번경'>").appendTo($trcb);
	$("<input id='companyphoneval1' class='companyphoneval' > ").val(data.companyphone).appendTo($trcp);
	$("<td><input type='button' class='myButton' id='changephone' value='휴대폰번호 번경'>").appendTo($trcp);
	$("<input id='companyemailval1' class='companyemailval' > ").val(data.companyemail).appendTo($trem);
	$("<td><input type='button' class='myButton' id='changeemail' value='이메일 번경'>").appendTo($trem);
	
	});
	var company123 = $("#companynameval1").val();
	$("#changename").on("click", function(data){
		var param={
				_method:"patch",
				companyname:$("#companynameval1").val(),
				
		}
		console.log("companyname=" ,company123);
		$.ajax({
			url: "updatecompanyname",
			method: "get",
			data:param,
			dataType: "JSON"
		}).done((result)=>{
			toastr.success("회사명을 변경하였습니다", '서버메시지');
			console.log("result=",result);
		
		
		} )
		
		.fail((xhr)=>{
			(xhr)=>printError(xhr, "회사명 변경에 실패하였습니다.")
			console.log("xhr=",xhr);
		});
		
	});
	$("#changeboss").on("click", function(data){
		var param={
				_method:"patch",
				companyboss:$("#companybossval1").val(),
				
		}
		$.ajax({
			url: "updatecompanyboss",
			method: "get",
			data:param,
			dataType: "JSON"
		}).done((result)=>{
			toastr.success("대표자를 변경하였습니다", '서버메시지');
			console.log("result=",result);
		
		
		} )
		
		.fail((xhr)=>{
			(xhr)=>printError(xhr, "대표자이름 변경에 실패하였습니다.")
			console.log("xhr=",xhr);
		});
		
	});
	$("#changephone").on("click", function(data){
		var param={
				_method:"patch",
				companyphone:$("#companyphoneval1").val(),
				
		}
		$.ajax({
			url: "updatecompanyphone",
			method: "get",
			data:param,
			dataType: "JSON"
		}).done((result)=>{
			toastr.success("휴대폰 번호를 변경하였습니다", '서버메시지');
			console.log("result=",result);
		
		
		} )
		
		.fail((xhr)=>{
			(xhr)=>printError(xhr, "휴대폰 번호 변경에 실패하였습니다.")
			console.log("xhr=",xhr);
		});
		
	});
	$("#changeemail").on("click", function(data){
		var param={
				_method:"patch",
				companyemail:$("#companyemailval1").val(),
				
		}
		$.ajax({
			url: "updatecompanyemail",
			method: "get",
			data:param,
			dataType: "JSON"
		}).done((result)=>{
			toastr.success("이메일 정보를 변경하였습니다", '서버메시지');
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
