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
                <!-- page start-->
                <div class="row mt">
                    <div class="col-sm-3">
                        <section class="panel">
                            <div class="panel-body">
                                <ul class="nav nav-pills nav-stacked labels-info ">
                                    <li>
                                        <h4>업체 사진</h4>
                                    </li>
                                    <li>
                                    <div>
                                        <div id="productCarousel" class="carousel slide"
										data-ride="carousel" style="display: flex;">
										<ol class="carousel-indicators">
										</ol>
										<div>
											<div class="carousel-inner" role="listbox"></div>
										</div>
										</div>
										<a class="left carousel-control" href="#productCarousel"
											role="button" data-slide="prev"> <span
											class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
											<span class="sr-only">Previous</span>
										</a> <a class="right carousel-control" href="#productCarousel"
											role="button" data-slide="next"> <span
											class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
											<span class="sr-only">Next</span>
										</a>
										</div>
                                    </li>
                                </ul>
							</div>
						</section>
						<section class="panel">
                            <div class="panel-body">
                                <ul class="nav nav-pills nav-stacked labels-info ">
                                    <li>
                                        <h4>업체 위치</h4>
                                    </li>
                                    <li>
                                        <span id="guide" style="color: #999; display: none"></span>
										<div id="map" style="width:100%;height:350px;"></div>
                                    </li>
                                </ul>

                            </div>
                        </section>
					</div>
					<div class="col-sm-9">
						<section class="panel">
							<div class="panel-body">
								<div class="row">
									<!-- /col-md-12 -->
									<div class="col-md-12 mt">
										<div class="content-panel">
											<h4>
												<i class="fa fa-angle-right"></i> 업체명
											</h4>
											<hr>
											<table class="table table-hover">
												<tbody>
													<tr>
														<td>업체 아이디</td>
														<td id="companyid"></td>
													</tr>
													<tr>
														<td>대표자</td>
														<td id="companyboss"></td>
													</tr>
													<tr>
														<td>휴대폰</td>
														<td id="companyphone"></td>
													</tr>
													<tr>
														<td>이메일</td>
														<td id="companyemail"></td>
													</tr>
													<tr>
														<td>주소</td>
														<td id="companylocation"></td>
													</tr>
													<tr>
														<td>등록증</td>
														<td id="companycard"></td>
													</tr>
												</tbody>
											</table>
										</div>
									</div>
								</div>
								<div class="compose-mail">
									<form action="adminupdatecompany" role="form-horizontal"
										method="get" name="frm" id="frm">
										<div class="compose-btn">
											<button name="select" class="btn btn-theme btn-sm" value="ok">
												<i class="fa fa-check"></i> 등록
											</button>
											<button name="select" class="btn btn-theme btn-sm" value="no">
												<i class="fa fa-check"></i> 거절
											</button>
										</div>
									</form>
								</div>
							</div>


						</section>
					</div>

				</div>
			</section>
			<!-- /wrapper -->
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
	<script>
	//회사 정보 출력
	var data=${company}
	console.log("data:",data);
	$("#companyid").text(data.companyid);
	$("#companyboss").text(data.companyboss);
	$("#companyphone").text(data.companyphone);
	$("#companyemail").text(data.companyemail);
	$("#companylocation").text(data.companylocation);
	var $img=$('<img>').attr('src',data.companycard);
	console.log("companycard:",data.companycard)
	$("#companycard").text(data.companycard).append($img);
	//히든으로 companyid companykind 저장
  	$("<input>").attr("type",'hidden').attr("name","companyid").attr("value",data.companyid).appendTo("#frm");
  	$("<input>").attr("type",'hidden').attr("name","companykind").attr("value",data.companykind).appendTo("#frm");
  	//업체 사진 띄우기
  	var pList=${pList};
  	console.log(pList);
  	var $uls=$('.carousel-indicators').empty();
	var $items=$('.carousel-inner').empty();
	$.each(pList,function(idx,pic){
		if(idx==0){
			$('<li data-target="#productCarousel" data-slide-to="0" class="active">').appendTo($uls);
			var $div=$('<div class="item active">').appendTo($items);
			$('<img style="width: 450px;height:300px">').attr('src',pic).appendTo($div);
		}else{
			var $li=$('<li data-target="#productCarousel">').appendTo($uls);
			$li[0].dataset.slideTo=idx;
			var $div=$('<div class="item">').appendTo($items);
			$('<img style="width: 450px;height:300px">').attr('src',pic).appendTo($div);
		}

	});
  	
  	
  	
	//지도 표시
	roadAddr=data.companylocation;
	var mapContainer = document.getElementById('map'), // 지도를 표시할 div
    mapOption = {
        center: new kakao.maps.LatLng(33.450701, 126.570667), // 지도의 중심좌표
        level: 3 // 지도의 확대 레벨
    };
	// 지도를 생성합니다
	var map = new kakao.maps.Map(mapContainer, mapOption);
	// 주소-좌표 변환 객체를 생성합니다
	var geocoder = new kakao.maps.services.Geocoder();
	// 주소로 좌표를 검색합니다
	geocoder.addressSearch(roadAddr, function(result, status) {
	    // 정상적으로 검색이 완료됐으면
	     if (status === kakao.maps.services.Status.OK) {
	        var coords = new kakao.maps.LatLng(result[0].y, result[0].x);
	        // 결과값으로 받은 위치를 마커로 표시합니다
	        var marker = new kakao.maps.Marker({
	            map: map,
	            position: coords
	        });
	        // 인포윈도우로 장소에 대한 설명을 표시합니다
	        var infowindow = new kakao.maps.InfoWindow({
	            content: '<div style="width:150px;text-align:center;padding:6px 0;">'+roadAddr+'</div>'
	        });
	        infowindow.open(map, marker);
	        // 지도의 중심을 결과값으로 받은 위치로 이동시킵니다
	        map.setCenter(coords);
	    }
	});

	</script>

</body>
</html>
