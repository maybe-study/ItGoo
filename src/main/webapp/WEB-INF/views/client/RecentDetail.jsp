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
<title>ITGOO - CLIENT MYPAGE</title>
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
  <style>
	.content-panel{
		height:auto;
	}
	.dataTables_wrapper{
		margin-left:10px;
	}

  </style>
</head>

<body>
	<section id="container">
		<!-- **********************************************************************************************************************************************************
        TOP BAR CONTENT & NOTIFICATIONS
        *********************************************************************************************************************************************************** -->
		<!--         header start-->
		<header class="header black-bg">
			<div class="sidebar-toggle-box">
				<div class="fa fa-bars tooltips" data-placement="right"
					data-original-title="Toggle Navigation"></div>
			</div>
			<!--logo start-->
			<a href="index.jsp" class="logo"><b>IT<span>GOO</span></b></a>
			<!--logo end-->

			<div class="top-menu">
				<ul class="nav pull-right top-menu">
					<li><a class="logout" href="#"
						onclick="document.getElementById('logout').submit();"> Logout</a>
						<form id="logout" action="logout" method="POST">
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
		</aside>
		<!--sidebar end-->
		<!-- **********************************************************************************************************************************************************
        MAIN CONTENT
        *********************************************************************************************************************************************************** -->
		<!--main content start-->
		<section id="main-content">
      <section class="wrapper">
        <h3><i class="fa fa-angle-right" id="title"></i> 가상입양 근황 </h3>
        <div class="row">
          
          <!-- /col-md-12 -->
          <div class="col-md-12 mt">
            <div class="content-panel">
            <h4><i class="fa fa-angle-right"></i> 가상입양 근황 리스트 </h4>
                <hr>
              <table id="table2" class="table table-hover">
                <thead>
                  <tr>
                    <th>근황 번호</th>
                    <th>근황 제목</th>
                    <th>후원금</th>
                  </tr>
                </thead>
                <tbody id="recentList">
                </tbody>
              </table>
            </div>
          </div>
        </div>
        <!-- row -->
        </section>
      </section>
		<!--footer start-->
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
	<script src="https://cdn.datatables.net/t/bs-3.3.6/jqc-1.12.0,dt-1.10.11/datatables.min.js"></script>
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
		console.log(${cdList});
		var cdList=${cdList};
		var $contents=$("#contents");
		var flag=0;
		$.each(cdList,function(idx,data){
			console.log
			var url="./recentvirtualdetail?recentid="+data.recentid;
			var $tr=$('<tr>').css('cursor','pointer').click(function(){location.href=url});
			$('<td>').append(data.recentid).appendTo($tr);
			$('<td>').append(data.title).appendTo($tr);
			$('<td>').append(data.donation+"원").appendTo($tr);
			
			$('#recentList').append($tr);
		});
	
		
        jQuery(function($){
            $("#table1").DataTable({info: false});
        });
        jQuery(function($){
            $("#table2").DataTable({info: false});
        });
		
		 if(flag==0){
				console.log("이게 지금 배열이 비어있다!!")
				var $div4=$('<div class="card-body text-center"  style="height:15px;"></div>');
		        var $div3 = $('<div style="margin-top:10%; text-align:center;"><div>')
		                .append($('<i class="fas fa-mobile-alt text-primary mb-2">'))
		                .append($('<h4 class="text-uppercase m-0">').text("현재 진행중인 입양이 없습니다."))
		          var $div2 = $('<div class="card py-4 h-100">').append($div4);
		          $div2.append($div3);
		          var $div1 = $('<div class="col-md-4 mb-3 mb-md-0 ">').append($div2);
		           $qList.append($div1);
			};

		
    </script>

</body>

</html>
