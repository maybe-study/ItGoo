<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
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
  <!-- Custom styles for this template -->
  <link href="css/style.css" rel="stylesheet">
  <link href="css/style-responsive.css" rel="stylesheet">
<link rel="stylesheet"
   href="//cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/toastr.min.css">
   <script src="lib/jquery/jquery.min.js"></script>
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
		<!--header start-->
		<header class="header black-bg">
			<div class="sidebar-toggle-box">
				<div class="fa fa-bars tooltips" data-placement="right" data-original-title="Toggle Navigation"></div>
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
		<!--main content start-->
    <section id="main-content">
      <section class="wrapper">
        <h3><i class="fa fa-angle-right"></i> 경매 </h3>
        <div class="row">
          
          <!-- /col-md-12 -->
          <div class="col-md-12 mt">
            <div class="content-panel">
            <h4><i class="fa fa-angle-right"></i> 참여한 경매 </h4>
                <hr>
              <table id="table2" class="table table-hover">
              
                
                <thead>
                  <tr>
                    <th>경매 번호</th>
                    <th>경매 이름</th>
                    <th>등록 금액</th>
                    <th>경매 시작 일시</th>
                  </tr>
                </thead>
                <tbody id="attendedList">
                </tbody>
              </table>
            </div>
          </div>
          <!-- /col-md-12 -->
          <div class="col-md-12 mt">
            <div class="content-panel">
            <h4><i class="fa fa-angle-right"></i> 등록한 경매 </h4>
                <hr>
              <table id="table1" class="table table-hover">
                
                <thead>
                  <tr>
                    <th>경매 번호</th>
                    <th>경매 이름</th>
                    <th>썸네일</th>
                    <th>시작가</th>
                    <th>시작 일시</th>
                    <th>종료 일시</th>
                  </tr>
                </thead>
                <tbody id="myauctionList">
                  
                </tbody>
              </table>
            </div>
          </div>
        </div>
        <!-- row -->
        </section>
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
		<!-- js placed at the end of the document so the pages load faster -->
  <script src="lib/jquery/jquery.min.js"></script>
  <script src="https://cdn.datatables.net/t/bs-3.3.6/jqc-1.12.0,dt-1.10.11/datatables.min.js"></script>
  <script src="lib/bootstrap/js/bootstrap.min.js"></script>
  <script class="include" type="text/javascript" src="lib/jquery.dcjqaccordion.2.7.js"></script>
  <script src="lib/jquery.scrollTo.min.js"></script>
  <script src="lib/jquery.nicescroll.js" type="text/javascript"></script>
  <!--common script for all pages-->
  <script src="lib/common-scripts.js"></script>
    
	<script>
	
	console.log("attendedList",${attendedList});
	console.log("myauctionList",${myauctionList});
	
	$.each(${attendedList},function(idx,data){
		var $tr=$('<tr>')
		$('<td>').append(data.auctionnum).appendTo($tr);
		$('<td>').append(data.auctionname).appendTo($tr);
		$('<td>').append(data.currentprice).appendTo($tr);
		$('<td>').append(data.auctionstart).appendTo($tr);
		$('#attendedList').append($tr);
	});
	$.each(${myauctionList},function(idx,data){
		var $tr=$('<tr>')
		$('<td>').append(data.auctionnum).appendTo($tr);
		$('<td>').append(data.auctionname).appendTo($tr);
		$('<td>').append($('<img>').attr('src',data.auctionpic).css('width','200px')).appendTo($tr);
		$('<td>').append(data.lowprice).appendTo($tr);
		$('<td>').append(data.auctionstart).appendTo($tr);
		$('<td>').append(data.auctionend).appendTo($tr);
		$('#myauctionList').append($tr);
	});
	
	
	
  </script>
  <script>
        jQuery(function($){
            $("#table1").DataTable({info: false});
        });
        jQuery(function($){
            $("#table2").DataTable({info: false});
        });
    </script>
</body>

</html>
