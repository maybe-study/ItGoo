<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="kr">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="Dashboard">
    <meta name="keyword" content="Dashboard, Bootstrap, Admin, Template, Theme, Responsive, Fluid, Retina">
    <title>Dashio - Admin Detail</title>

    <!-- Favicons -->
    <link href="img/favicon.png" rel="icon">
    <link href="img/apple-touch-icon.png" rel="apple-touch-icon">

    <!-- Bootstrap core CSS -->
    <link href="lib/bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <!--external css-->
    <link href="lib/font-awesome/css/font-awesome.css" rel="stylesheet" />
    <link rel="stylesheet" type="text/css" href="css/zabuto_calendar.css">
    <link rel="stylesheet" type="text/css" href="lib/gritter/css/jquery.gritter.css" />
    <!-- Custom styles for this template -->
    <link href="css/style.css" rel="stylesheet">
    <link href="css/style-responsive.css" rel="stylesheet">
    <script src="lib/chart-master/Chart.js"></script>
    <script type="text/javascript"
		src="//dapi.kakao.com/v2/maps/sdk.js?appkey=04cfe5f1eb29416b59e4313a6acea9b8&libraries=services">
</script>

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
            <a href="index.html" class="logo"><b>DASH<span>IO</span></b></a>
            <!--logo end-->

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
            
        </aside>
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
                                        <h4>보호소 사진</h4>
                                    </li>
                                    <li>
                                        <img src="img/test.png" style="max-width: 100%">
                                    </li>
                                </ul>

                            </div>
                        </section>
                        <section class="panel">
                            <div class="panel-body">
                                <ul class="nav nav-pills nav-stacked labels-info ">
                                    <li>
                                        <h4>보호소 위치</h4>
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
                                        <h4><i class="fa fa-angle-right"></i> 보호소 이름 </h4>
                                                <hr>
                                            <table class="table table-hover">
                                                <tbody>
                                                    <tr>
                                                        <td>보호소 아이디</td>
                                                        <td id="companyid"></td>
                                                    </tr>
                                                    <tr>
                                                        <td>대표자</td>
                                                        <td id="companyboss"></td>
                                                    </tr>
                                                    <tr>
                                                        <td>보호소 전화번호</td>
                                                        <td id="companyphone"></td>
                                                    </tr>
                                                    <tr>
                                                        <td>보호소 이메일</td>
                                                        <td id="companyemail"></td>
                                                    </tr>
                                                    <tr>
                                                        <td>보호소 주소</td>
                                                        <td id="companylocation"></td>
                                                    </tr>
                                                    <tr>
                                                        <td>업체 등록증</td>
                                                        <td id="companycard"></td>
                                                    </tr>
                                                </tbody>
                                            </table>
                                        </div>
                                    </div>
                                </div>
                                <div class="compose-mail">
                                    <form role="form-horizontal" method="post">
                                        <div class="compose-btn">
                                            <button class="btn btn-theme btn-sm"><i class="fa fa-check"></i> 삭제</button>
                                        </div>
                                    </form>
                                </div>
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
                                        <h4><i class="fa fa-angle-right"></i> 등록된 강아지 </h4>
                                                <hr>
                                            <table class="table table-hover">
                                                
                                                <thead>
                                                  <tr>
                                                    <th>#</th>
                                                    <th>Name</th>
                                                    <th>나이</th>
                                                    <th>특이사항</th>
                                                    <th>중성화</th>
                                                    <th>성별</th>
                                                  </tr>
                                                </thead>
                                                <tbody id="dogs">
                                                    
                                                    
                                                </tbody>
                                            </table>
                                        </div>
                                    </div>
                                </div>
                                <div class="compose-mail">
                                    <form role="form-horizontal" method="post">
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
                <a href="index.html#" class="go-top">
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
    <script src="lib/jquery.sparkline.js"></script>
    <!--common script for all pages-->
    <script src="lib/common-scripts.js"></script>
    <script type="text/javascript" src="lib/gritter/js/jquery.gritter.js"></script>
    <script type="text/javascript" src="lib/gritter-conf.js"></script>
    <!--script for this page-->
    <script src="lib/sparkline-chart.js"></script>
    <script src="lib/zabuto_calendar.js"></script>
    <script src="common/main.js?ver"></script>
	<script>
		var data=${company}
  		$("#companyid").text(data.companyid);
  		$("#companyboss").text(data.companyboss);
  		$("#companyphone").text(data.companyphone);
  		$("#companyemail").text(data.companyemail);
  		$("#companylocation").text(data.companylocation);
  		$("#companycard").text("등록증 다운로드 링크였으면 참 좋을듯 data.companycard");
  		$.each(${dogs},function(idx,data){
  	  		var $wait=$("#dogs");
  	  		var $tr=$("<tr>").appendTo($wait);
  	  		$("<td>").text(idx).appendTo($tr);
  	  		$("<td>").append($("<a>").attr("href","./adminDogdetail?dogid="+data.dogid).text(data.dogname)).appendTo($tr);
  	  		$("<td>").text(data.dogage).appendTo($tr);
  	  		$("<td>").text(data.dogspecial).appendTo($tr);
  	  		$("<td>").text(data.dogjungsung).appendTo($tr);
  	  		$("<td>").text(data.sex).appendTo($tr);
  	  	});
	
	roadAddr="인천광역시 미추홀구 용정공원로 33";
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

</body></html>
