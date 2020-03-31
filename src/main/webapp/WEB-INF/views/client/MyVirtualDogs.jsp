<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

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
<link href="css/style.css" rel="stylesheet">
<link href="css/style-responsive.css" rel="stylesheet">

<!-- =======================================================
    Template Name: Dashio
    Template URL: https://templatemag.com/dashio-bootstrap-admin-template/
    Author: TemplateMag.com
    License: https://templatemag.com/license/
  ======================================================= -->
</head>

<body>
	
		<section id="container">
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
					<li><a class="logout" href="login.html"
						name="${_csrf.parameterName}" value="${_csrf.token}">Logout</a></li>
				</ul>
			</div>
		</header>
		</section>

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
				<i class="fa fa-angle-right"></i> 나의가상입양
			</h3>
			<form action="testpapersubmit?${_csrf.parameterName}=${_csrf.token}"
				onsubmit="return makeTestJson()" name=frm id="frm" method="post">
				<input type="hidden" name="test" value="0">
				<!-- /row -->
				<!-- INPUT MESSAGES -->
				<div class="row mt">
					<div class="col-lg-10">
						<div class="row mt" id="addogList"></div>

					</div>
				</div>

				<!-- modal  -->
				<div id="modalBox" class="modal fade" id="myModal" tabindex="-1"
					role="dialog" aria-labelledby="myModalLabel">
					<div class="modal-dialog modal-lg" role="document">
						<div class="modal-content">
							<div class="modal-header">
								<h4 class="modal-title" id="myModalLabel">입양을 기다려요</h4>
								<button type="button" class="close" data-dismiss="modal"
									aria-label="Close">
									<span aria-hidden="true">×</span>
								</button>

							</div>
							<div class="modal-body">
								<div id="productCarousel" class="carousel slide"
									data-ride="carousel" style="display: flex;">
									<ol class="carousel-indicators">
									</ol>
									<div>
										<div class="carousel-inner" role="listbox"></div>
									</div>
									<div style="margin-top: 100px; margin-left: 30px;">
										<table style="margin: auto">
											<tr>
												<td>이름:</td>
												<td id="name"></td>
											</tr>
											<tr>
												<td>나이:</td>
												<td id="age"></td>
											</tr>
											<tr>
												<td>성별:</td>
												<td id="sex"></td>
											</tr>
											<tr>
												<td>특이사항:</td>
												<td id="special"></td>
											</tr>
										</table>
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
							<div class="modal-footer">
								<button type="button" class="btn btn-primary" id="adoptBtn"></button>
								<button type="button" class="btn btn-default" id="closeModalBtn">뒤로가기</button>
							</div>
						</div>
					</div>
				</div>
				<!-- /row -->
			</form>

		</section>
	</section>
	<!-- /wrapper -->

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
	<script src="main2.js?ver"></script>

	<script>
	 var $dogList = $("#addogList");
	$.each(${va},function(idx,data){
	      console.log("vavavava값",data);
	        var $img=$('<img style="width:100%">').attr('src',data.recentpic);
	        makeModalBtn($img);
	        $img[0].dataset.dogid=data.dogid; 
	        //$img[0].dataset.
	          var $div3 = $('<div class="card-body text-center">')
	                .append($('<i class="fas fa-mobile-alt text-primary mb-2">'))
	                .append($('<h4 class="text-uppercase m-0">').text(data.tltle))
	                .append($('<hr class="my-4">')).append($img)
	                .append($('<div class="small text-black-50">').text(data.donation+" 원"))
	                .append($('<div class="small text-black-50">').text("결제일 : "+data.payday))
	                .append($('<div class="small text-black-50">').text("총 후원액 : "+data.totaldonation));
	          console.log("인덱스는!!!"+idx);
	          console.log(idx);
	          var $div2 = $('<div class="card py-4 h-100">').append($div3);
	          var $div1 = $('<div class="col-md-4 mb-3 mb-md-0">').append($div2);
	           $dogList.append($div1);
	           
	     });
	
    function makeModalBtn($img){
   	 $img.on('click', function(e){
         //console.log(e.target.dataset.dogid);
         var dogid=e.target.dataset.dogid;
         console.log("dogid:dddd",dogid);
         $.ajaxSetup({
              beforeSend : function(xhr) {
                 xhr.setRequestHeader("${_csrf.headerName}", "${_csrf.token}");
              }
           });//먼저 보냄
           console.log(dogid);
           $.ajax({ // 에이작스 열고
              type : 'post', //타입은 get 
              url : "adoptlistdetail", // restFul 방식
              data : {"dogid":dogid},
              dataType : "json",
              //서블릿이 성공하면 다시 돌아오는것
              success : function(data) {
                 
                 console.log("data",data);
                 var $uls=$('.carousel-indicators').empty();
                 var $items=$('.carousel-inner').empty();
                 //사진 리스트
                 $.each(data.dogpics,function(idx,pic){
                    if(idx==0){
                       $('<li data-target="#demo" data-slide-to="0" class="active">').appendTo($uls);
                       var $div=$('<div class="carousel-item active">').appendTo($items);
                       $('<img class="dog">').attr('src',pic).appendTo($div);
                    }else{
                       var $li=$('<li data-target="#demo">').appendTo($uls);
                       $li[0].dataset.slideTo=idx;
                       var $div=$('<div class="carousel-item">').appendTo($items);
                       $('<img class="dog">').attr('src',pic).appendTo($div);
                    }
                    
                 });
                 //강아지 정보
                 $('#name').text(data.dogname);
                 $('#age').text(data.dogage+" 살");
                 $('#dogjungsung').text(data.dogjungsung==0?"O":"X");
                 $('#sex').text(data.sex==0?"남":"여");
                 $('#special').text(data.dogspecial);
                 
                   
                 
                 $("#adoptBtn").on("click",function(){
                    location.href="./applyAdopt?dogid="+data.dogid
                 })
                
                 $("#VirtualadoptBtn").on("click",function(){
                    location.href="./virtualadopt?dogid="+data.dogid
                 })
              /* var swiper = new Swiper('.swiper-container', {
                    navigation: {
                      nextEl: '.swiper-button-next',
                      prevEl: '.swiper-button-prev',
                    },
                  }); */
              }
              ,
              error : function(error) {
                 console.log(error);
                 var $uls=$('.carousel-indicators').empty();
                 var $items=$('.carousel-inner').empty();
              }
           });
           $('#modalBox').modal('show'); 
        });
      }
           // 모달 안의 취소 버튼에 이벤트를 건다.
           $('#closeModalBtn').on('click', function(){
           $('#modalBox').modal('hide');
     });

  </script>
</body>

</html>
