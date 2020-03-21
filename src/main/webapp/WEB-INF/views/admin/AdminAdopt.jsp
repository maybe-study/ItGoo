<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="kr">

<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="">
<meta name="author" content="Dashboard">
<meta name="keyword"
	content="Dashboard, Bootstrap, Admin, Template, Theme, Responsive, Fluid, Retina">
<title>Dashio - Admin Detail</title>

<!-- Favicons -->
<link href="img/favicon.png" rel="icon">
<link href="img/apple-touch-icon.png" rel="apple-touch-icon">
<!-- Bootstrap core CSS -->
<link href="lib/bootstrap/css/bootstrap.min.css" rel="stylesheet">
<!--external css-->
<link rel="stylesheet" type="text/css" href="css/zabuto_calendar.css">
<link rel="stylesheet" type="text/css"
	href="lib/gritter/css/jquery.gritter.css" />
<!-- Custom styles for this template -->
<link href="css/style.css" rel="stylesheet">
<link href="css/style-responsive.css" rel="stylesheet">
<script src="lib/chart-master/Chart.js"></script>
<script src="lib/jquery/jquery.min.js"></script>


<script src="main.js?ver"></script>
<script type="text/javascript"
	src="//dapi.kakao.com/v2/maps/sdk.js?appkey=04cfe5f1eb29416b59e4313a6acea9b8&libraries=services"></script>

<!-- =======================================================
    Template Name: Dashio
    Template URL: https://templatemag.com/dashio-bootstrap-admin-template/
    Author: TemplateMag.com
    License: https://templatemag.com/license/
  ======================================================= -->
<meta name="_csrf" th:content="${_csrf.token}" />
<meta name="_csrf_header" th:content="${_csrf.headerName}" />
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
			<a href="index.html" class="logo"><b>DASH<span>IO</span></b></a>
			<!--logo end-->

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
		<aside></aside>
		<!--sidebar end-->
		<!-- **********************************************************************************************************************************************************
        MAIN CONTENT
        *********************************************************************************************************************************************************** -->
        <!--main content start-->
        <section id="main-content">
      <section class="wrapper">
        <h3><i class="fa fa-angle-right"></i> 입양 신청 관리 </h3>
        <div class="row">
          
          <!-- /col-md-12 -->
          <div class="col-md-12 mt">
            <div class="content-panel">
              <table id="table1" class="table table-hover">
                <h4><i class="fa fa-angle-right"></i> 입양신청자 </h4>
                <hr>
                <thead>
                  <tr>
                    <th>no</th>
                    <th>회원이름</th>
                    <th>휴대폰 번호</th>
                    <th>상태</th>
                    <th>입양 신청한 강아지</th>
                    <th>이유</th>
                    <th>반려견을 키운 경력</th>
                    <th>신분증</th>
                    <th>테스트</th>
                    <th>관리</th>
                  </tr>
                </thead>
                <tbody id="adoptList">
                  
                </tbody>
              </table>
            </div>
          </div>
        </div>
        
        </section>
      </section>

		<!-- /row -->
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
				<a href="index.html#" class="go-top"> <i class="fa fa-angle-up"></i>
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
	<script src="lib/jquery.sparkline.js"></script>
	<!--common script for all pages-->
	<script src="lib/common-scripts.js"></script>
	<script type="text/javascript" src="lib/gritter/js/jquery.gritter.js"></script>
	<script type="text/javascript" src="lib/gritter-conf.js"></script>
	<!--script for this page-->
	<script src="lib/sparkline-chart.js"></script>
	<script src="lib/zabuto_calendar.js"></script>
	<script src="https://cdn.datatables.net/t/bs-3.3.6/jqc-1.12.0,dt-1.10.11/datatables.min.js"></script>
    <script>
        jQuery(function($){
            $("#table1").DataTable({info: false});
        });
        
    </script>
	<script>
		$.each(${adoptList}, function(idx, adopt){
  	  		console.log(adopt.idfile);
			var $adoptList=$("#adoptList");
  	  		var $tr=$("<tr>").appendTo($adoptList);
  	  		$("<td>").text(idx).appendTo($tr);
  	  		$("<td>").text(adopt.username).appendTo($tr);
  	  		$("<td>").text(adopt.phone).appendTo($tr);
  	  		$phaseTd=$("<td>").text(adopt.phase).appendTo($tr);
  	  		$("<td>").text(adopt.dogname).appendTo($tr);
  	  		$("<td>").text(adopt.why).appendTo($tr);
  	  		$("<td>").text(adopt.dogcareer).appendTo($tr);
  	  		$("<td>").append($('<img style="width:200px">').attr('src',adopt.idfile)).appendTo($tr);
  	  		var $btn=$('<button type="button" id="passBtn">').text("서류 합격");
  	  		var $btn2=$('<button type="button" id="nonPassBtn">').text("탈락");
  	  		$("<td>").append($btn).appendTo($tr);
  	  		$("<td>").append($btn2).appendTo($tr);
  	  		$btn.on("click",function(){
  	  			PassAjax(adopt.id,adopt.dogid,$phaseTd,$btn);
  	  		});
  	  		$btn2.on("click",function(){
  	  			nonPassAjax(adopt.id,adopt.dogid,$phaseTd,$btn2)
  	  		})
  	  		//btn 추가
		});
		function nonPassAjax(id,dogid,$phaseTd,$btn){
			$.ajaxSetup({
				beforeSend : function(xhr) {
					xhr.setRequestHeader("${_csrf.headerName}", "${_csrf.token}");
				}
			});//먼저 보냄
			$.ajax({ // 에이작스 열고
				type : 'post', //타입은 get 
				url : "adoptout", // restFul 방식
				data : {id:id, dogid:dogid},
				dataType:"json"
			}).done((data)=>{
				console.log(data);
				$phaseTd.text(data.status);
				$btn.attr('disabled','true')
				
			});
		}
		function PassAjax(id,dogid,$phaseTd,$btn){
			$.ajaxSetup({
				beforeSend : function(xhr) {
					xhr.setRequestHeader("${_csrf.headerName}", "${_csrf.token}");
				}
			});//먼저 보냄
			$.ajax({ // 에이작스 열고
				type : 'post', //타입은 get 
				url : "documentpass", // restFul 방식
				data : {id:id, dogid:dogid},
				dataType:"json"
			}).done((data)=>{
				console.log(data);
				$phaseTd.text(data.status);
				$btn.attr('disabled','true')
				
			});
		}
		
	</script>

</body>
</html>
