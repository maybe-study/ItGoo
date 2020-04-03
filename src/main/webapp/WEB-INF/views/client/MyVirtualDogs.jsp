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
			<a href="/ItGoo/" class="logo"><b>IT<span>GOO</span></b></a>
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
		console.log(data);
		console.log("도그아이디"+data.dogid);
	if(data.status==0){
		var $div1 = $('<div class="col-md-4 mb-3 mb-md-0 ">').text("현재 가상입양 중인 강아지가 없습니다.");
		 $dogList.append($div1);
	}else if(data.status==1){
	      console.log("vavavava값",data);
	      console.log("va의 dogid값",data.dogid);
	        var $div4=$('<div class="card-body text-center"  style="height:15px;"></div>');
	        var $div3 = $('<div style="margin-top:10%; text-align:center;"><div>')
	                .append($('<i class="fas fa-mobile-alt text-primary mb-2">'))
	                .append($('<h4 class="text-uppercase m-0">').text("강아지이름 :"+data.dogname))
	                .append($('<h4 class="text-uppercase m-0">').text(data.dogage+" 살"))
	                .append($('<div class="text-uppercase m-0">').text(data.donation+" 원"))
	                .append($('<div class="text-uppercase m-0">').text("결제일 : "+data.payday))
	                .append($('<div class="text-uppercase m-0">').text("총 후원액 : "+data.totaldonation))
	                .append("<a href='./clentrecentdetail?dogid="+data.dogid+"'>근황보기</a><br>")
	                .append("<a href='./cancelvirtualadopt?dogid="+data.dogid+"'>가상입양 취소</a>");
				console.log("이제 나올 강아지 아이디",data.dogid);
	          var $div2 = $('<div class="card py-4 h-100">').append($div4);
	          $div2.append($div3);
	          
	          var $div1 = $('<div class="col-md-4 mb-3 mb-md-0 ">').append($div2);
	           $dogList.append($div1);
	           }
		else if(data.status==2){
			console.log("입양되어서 취소된 가상입양 나오는 것",data.dogname);
			 var $div4=$('<div class="card-body text-center"  style="height:15px;"></div>');
		        var $div3 = $('<div style="margin-top:10%; text-align:center;"><div>')
		                .append($('<i class="fas fa-mobile-alt text-primary mb-2">'))
		                .append($('<h4 class="text-uppercase m-0">').text(data.dogname+" 가상입양자님의 도움으로 새로운 가족품으로 입양되었습니다."))
					console.log("이제 나올 강아지 아이디",data.dogid);
		          var $div2 = $('<div class="card py-4 h-100">').append($div4);
		          $div2.append($div3);
		          
		          var $div1 = $('<div class="col-md-4 mb-3 mb-md-0 ">').append($div2);
		           $dogList.append($div1);
		}
	 });
	

	        	  
	        	  
   /*  function makeModalBtn($img){
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
        /*       }
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
     }); */
 
  </script>
</body>

</html>
