<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>
<html lang="kr">

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
<link href="css/style.css" rel="stylesheet">
<link href="css/style-responsive.css" rel="stylesheet">
<!-- datetimepicker -->
<link rel="stylesheet"
	href="bower_components/eonasdan-bootstrap-datetimepicker/build/css/bootstrap-datetimepicker.min.css" />


<!-- =======================================================
    Template Name: Dashio
    Template URL: https://templatemag.com/dashio-bootstrap-admin-template/
    Author: TemplateMag.com
    License: https://templatemag.com/license/
  ======================================================= -->
</head>

<body>
	<script src="ckeditor/ckeditor.js"></script>
	<section id="container">
		<!-- **********************************************************************************************************************************************************
        TOP BAR CONTENT & NOTIFICATIONS
        *********************************************************************************************************************************************************** -->
		<header class="header black-bg">
			<div class="sidebar-toggle-box">
				<div class="fa fa-bars tooltips" data-placement="right"
					data-original-title="Toggle Navigation"></div>
			</div>
			<!--logo start-->
			<a href="index.jsp" class="logo"><b>DASH<span>IO</span></b></a>
			<!--logo end-->

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
					<i class="fa fa-angle-right"></i>강아지 용품 경매
				</h3>
				<!-- BASIC FORM ELELEMNTS -->
				<div class="row mt">
					<div class="col-lg-11">
						<div class="form-panel">
							<h4 class="mb">
								<i class="fa fa-angle-right"></i> 등록 물품
							</h4>
							<form class="form-horizontal style-form" method="post"
								action="addauction?${_csrf.parameterName}=${_csrf.token}"
								enctype="multipart/form-data" onsubmit="return check()"
								name="auctionfrm">
								<input type="hidden" name="srcJson">
								<div class="form-group">
									<label class="col-sm-2  control-label">경매 이름</label>
									<div class="col-sm-10">
										<input type="text" class="form-control" name="auctionname"
											required> <span class="help-block">등록할 경매 이름을
											입력하세요</span>
									</div>
								</div>
								<div class="form-group">
									<label class="col-sm-2  control-label">최저가</label>
									<div class="col-sm-6">
										<input type="number" class="form-control" name="lowprice">
									</div>
									<label class="col-sm-2  control-label">원</label>
								</div>


								<div class="form-group">
									<label class="col-sm-2  control-label">경매 시작</label>
									<div class='col-sm-6'>
										<div class='input-group date' id='datetimepicker6'>
											<input type='text' class="form-control" name="auctionstart" />
											<span class="input-group-addon"> <span
												class="glyphicon glyphicon-calendar"></span>
											</span>
										</div>
									</div>
								</div>
								<div class="form-group">
									<label class="col-sm-2  control-label">경매 종료</label>
									<div class='col-sm-6'>
										<div class='input-group date' id='datetimepicker7'>
											<input type='text' class="form-control" name="auctionend" />
											<span class="input-group-addon"> <span
												class="glyphicon glyphicon-calendar"></span>
											</span>
										</div>
									</div>
								</div>
								<div class="form-group">
									<label class="col-sm-2  control-label">썸네일</label>
									<div class="col-sm-10">
										<input type="file" class="box" name="f"
											accept=".jpg,.jpeg,.png,.gif,.bmp" required>
									</div>
								</div>
								<div class="form-group">
									<label class="col-sm-2  control-label">상품 상세</label>
									<div class="col-sm-10">
										<textarea id="editor" name="auctionexplain">
                      
                  </textarea>
									</div>
								</div>
								<div class="form-group" style="text-align: center">
									<button class="btn btn-theme" type="submit">경매 등록</button>
								</div>
								<div class="form-group" style="text-align: center">
									<button class="btn btn-theme" type="button" onclick="demo()">테스트</button>
								</div>
							</form>
						</div>
					</div>
					<!-- col-lg-12-->
				</div>
				<div></div>
			</section>
			<!-- /wrapper -->
		</section>
		<!-- /MAIN CONTENT -->
		<!--main content end-->
		<!--footer start-->
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
					Created with Dashio template by <a href="https://templatemag.com/">TemplateMag</a>
				</div>
				<a href="form_component.html#" class="go-top"> <i
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
	<!--custom switch-->
	<script src="lib/bootstrap-switch.js"></script>
	<!--custom tagsinput-->
	<script src="lib/jquery.tagsinput.js"></script>
	<script src="main2.js"></script>

	<script type="text/javascript"
		src="bower_components/moment/min/moment.min.js"></script>
	<script type="text/javascript"
		src="bower_components/eonasdan-bootstrap-datetimepicker/build/js/bootstrap-datetimepicker.min.js"></script>


	<script type="text/javascript">
    $(function () {
        $('#datetimepicker6').datetimepicker({
        	format:'MM/DD/YYYY h:mm:00 A',
        	minDate: moment().add(1,'h')
        });
        $('#datetimepicker7').datetimepicker({
            useCurrent: false, //Important! See issue #1075
            format:'MM/DD/YYYY h:mm:00 A',
            defaultDate:moment().add(2,'h'),
        	minDate: moment().add(2,'h')
        });
        $("#datetimepicker6").on("dp.change", function (e) {
            $('#datetimepicker7').data("DateTimePicker").minDate(e.date);
        });
        $("#datetimepicker7").on("dp.change", function (e) {
            $('#datetimepicker6').data("DateTimePicker").maxDate(e.date);
        });
    });
</script>
	<!-- <script type="text/javascript">
    $(function () {
        $('#datetimepicker1').datetimepicker({
        	format:'MM/DD/YYYY h:00 A',
        	minDate: moment().add(1,'h')
        });
        
    });
</script> -->
	<script>
//전역변수
let myeditor
ClassicEditor
    .create( document.querySelector( '#editor' ),{
        ckfinder: {
            uploadUrl: './ck/upload?${_csrf.parameterName}=${_csrf.token}' // 내가 지정한 업로드 url (post로 요청감)
            
    		
        }
    } )
    .then( editor => {
    	//대입
    	myeditor=editor;
        console.log( editor );
    } )
    .catch( error => {
        console.error( error );
    } );
    
  
  function check(){
	  const data = myeditor.getData();
	  //디비에 저장할 이미지 리스트
	  var imgList=[];
	  console.log(data);
	  $(data).find('img').each(function(){
	  	  imgList.push($(this).attr('src'));
	  });

	  var frm=document.auctionfrm
	  
	  frm.srcJson.value=JSON.stringify(imgList);
	  console.log(JSON.stringify(imgList));
	  return true;
  }
  function demo(){
	  console.log("데모");
	  const data = myeditor.getData();
	  //디비에 저장할 이미지 리스트
	  var imgList=[];
	  console.log(data);
	  $(data).find('img').each(function(){
	  	  imgList.push($(this).attr('src'));
	  });

	  var frm=document.auctionfrm
	  
	  frm.srcJson.value=JSON.stringify(imgList);
	  frm.auctionstart.value=moment().add(10,'s').format('MM/DD/YYYY h:mm:ss A')
	  frm.auctionend.value=moment().add(70,'s').format('MM/DD/YYYY h:mm:ss A')
	  
	  console.log(frm.auctionstart.value);
	  
	  console.log(JSON.stringify(imgList));
	  return true;
  }
</script>
</body>

</html>
