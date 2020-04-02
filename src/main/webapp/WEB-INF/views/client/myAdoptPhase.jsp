<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

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
				<i class="fa fa-angle-right"></i> 나의입양 진행상황
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
						<div class="modal-content" style="width: 1000px;">
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
										<table style="margin: auto; float:left; display: flex;" >
											<tr>
												<td id="1" style="width:30px;">이름:</td>
												<td id="name" style="display: flex;"></td>
											</tr>
											
											<tr>
												<td id="2" style="width:30px;">나이:</td>
												<td id="age"></td>
											</tr>
											<tr>
												<td id="3" style="width:30px;">성별:</td>
												<td id="sex"></td>
											</tr>
											
											<tr>
												<td id="4" style="width:60px;">특이사항:</td>
											</tr>
											
											<tr id="another" style="margin: auto; float:left; display: flex;">
												<td id="special" style="width:200px;"></td>
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
								<!-- <div id="demo" class="carousel slide" data-ride="carousel">
										<ul class="carousel-indicators">
										</ul>
										The slideshow
										<div class="carousel-inner"></div>
										Left and right controls
										<a class="carousel-control-prev" href="#demo"
											data-slide="prev"> <span
											class="carousel-control-prev-icon"></span>
										</a> <a class="carousel-control-next" href="#demo"
											data-slide="next"> <span
											class="carousel-control-next-icon"></span>
										</a>
									</div> -->
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

/* 	 $.each(${phase},function(idx,data){
		 var $phaselist = $("$phaselist");
		 var $div1=$('<div>').append(data.phase);
		 $phaselist.append($div1);

	 }); */
	 $.each(${aList},function(idx,data){
		 console.log("피리스트 만드는중");
		 console.log("data값은 ",data);
		 var $qList = $("#addogList");
		 var $img=$('<img id="openModalBtn" style="width:100%">').attr('src',data.thum);
		  $img[0].dataset.dogid=data.dogid;
		var $div1 = $('<div class="col-lg-4">')
		var $div2=$('<div class="form-panel">');
		var $h4=$('<h4 class="mb">').append($('<i class="fa fa-angle-right">'))
		var $div3 = $('<div class="card-body text-center">')
                .append($('<i class="fas fa-mobile-alt text-primary mb-2">'))
                .append($('<h4 class="text-uppercase m-0">').text("이름 : "+data.dogname))
                .append($('<h4 class="small text-black-50">').text("나이 : "+data.dogage))
                .append($('<h4 class="text-uppercase m-0">').append("특이사항 :  "+data.dogspecial))
                .append($('<h4 class="small text-black-50">').text("진행상황 :  "+data.phase+" 단계"));
		
		 $div3.append($img);
		 $h4.append($div3);
		 $div2.append($h4);
		 $div1.append($div2);
		 $qList.append($div1);
		 
		});

	
		/* if(data.phase==0){
        	var $p0=$('#adoptBtn').text("입양");
        	$p0.on("click", function(){
        		location.href="./adoptList";
        	})
        }else if(data.phase==1){
        	var $p1=$('#adoptBtn').text("서류심사 대기")
        	$p1.on("click",function(){
        		location.href="#"
        	})
        }else if(data.phase==2){
        	var $p2=$('#adoptBtn').text("테스트 시작")
        	$p2.on("click",function(){
        		location.href="./testpaper?dogid="+data.dogid
        	})
        }else if(data.phase==3){
        	var $p3=$('#adoptBtn').text("액티비티")
        	$p3.on("click",function(){
        		location.href="./"
        	})
        }  if(data.phase==4){
        	var $p4=$('#adoptBtn').text("액티비티 예약확인")
        	$p4.on("click".function(){
        		$p4.on("click",function(){
        		}
            		location.href="./showmyactivity?dogid="+data.dogid
        	})
        }  else if(data.phase==5){
        	var $p4=$('#adoptBtn').text("숙려기간")
        	$p5.on("click".function(){
        		$p5.on("click",function(){
            		location.href="./"
        	})
        }else if(data.phase==6){
        	var $p6=$('#adoptBtn').text("설문지 작성")
        	$p6.on("click".function(){
            		location.href="./"
        	})
        }else(data.phase==7){
        	var $p7=$('#adoptBtn').text("입양 감사합니다.")
        	$p7.on("click".function(){
            		location.href="./"
        	})
         };
	  */
	  function empty() {
		  $('#name').empty();
			$('#age').empty();
			$('#dogjungsung').empty();
			$('#sex').empty();
			$('#special').empty();
	}
	  
	 $(document).on('click','#openModalBtn', function(e){
		 $('#modalBox').modal('show');
	 console.log(e.target.dataset);
		  var dogid=e.target.dataset.dogid;
		  var phase=e.target.dataset.phase;
		 console.log("클릭한 모달의 dogid:"+dogid);
		 console.log("클릭한 모달의 phase:"+phase);
		 $.ajaxSetup({
				beforeSend : function(xhr) {
					xhr.setRequestHeader("${_csrf.headerName}", "${_csrf.token}");
				}
			});//먼저 보냄
			$.ajax({ // 에이작스 열고
				type : 'post', //타입은 get
				url : "myadoptlistdetail", // restFul 방식
				data : {dogid:dogid},
				dataType : "json",

				//서블릿이 성공하면 다시 돌아오는것
				success : function(data) {
					console.log("모달에 나올 data",data);
					empty();
					 if(data.phase==1){
						 var $p1=$('#adoptBtn').text("신청서 검토중")
						 $p1.on("click",function(){
				        	 console.log("1단계"+data.phase);
				              location.href="./testpaper?dogid="+data.dogid
						 })
					 }else if(data.phase==2){   //시험 시작
				         var $p2=$('#adoptBtn').text("적격성 평가 시작")
				         $p2.on("click",function(){
				        	 console.log("2단계"+data.phase);
				              location.href="./testpaper?dogid="+data.dogid
				          })   
				      }else if(data.phase==3){   //액티비티 예약
				         var $p3=$('#adoptBtn').text("액티비티 예약")
				         console.log("3단계"+data.phase);
				         $p3.on("click",function(){
				              location.href="./activitylist?dogid="+data.dogid
				          })   
				      }else if(data.phase==4){
				         var $p4=$('#adoptBtn').text("액티비티 예약확인")
				         console.log("4단계"+data.phase);
				          $p4.on("click",function(){
				              location.href="./showmyactivity?dogid="+data.dogid
				       })
				    }else if(data.phase==5){
				    var $p5=$('#adoptBtn').text("숙려기간")
				    console.log("페이즈페이지에서 아이디"+data.dogid);
				    $p5.on("click",function(){
				              location.href="./finalsook?dogid="+data.dogid
				   		 })
				    }else if(data.phase==6){
				    var $p6=$('#adoptBtn').text("설문지작성")
				    console.log("6단계"+data.dogid);
				    $p6.on("click",function(){
				              location.href="./finalcaresheet?dogid="+data.dogid
				   		 })
				    }
					
					var $uls=$('.carousel-indicators').empty();
					var $items=$('.carousel-inner').empty();
					$.each(data.dogpics,function(idx,pic){
						if(idx==0){
							$('<li data-target="#productCarousel" data-slide-to="0" class="active">').appendTo($uls);
							var $div=$('<div class="item active">').appendTo($items);
							$('<img class="dog" style="width: 700px">').attr('src',pic).appendTo($div);
						}else{
							var $li=$('<li data-target="#productCarousel">').appendTo($uls);
							$li[0].dataset.slideTo=idx;
							var $div=$('<div class="item">').appendTo($items);
							$('<img class="dog" style="width: 450px">').attr('src',pic).appendTo($div);
						}
					});
					$('#name').text(data.dogname);
					$('#age').text(data.dogage+" 살");
					$('#dogjungsung').text(data.dogjungsung==0?"O":"X");
					$('#sex').text(data.sex==0?"남":"여");
					$('#special').append(data.dogspecial);

				} , error : function(error) {
					console.log(error);
				}
			});
	 });
	 $('#closeModalBtn').on('click', function(e){
			 $('#modalBox').modal('hide');
	});
  </script>
</body>

</html>
