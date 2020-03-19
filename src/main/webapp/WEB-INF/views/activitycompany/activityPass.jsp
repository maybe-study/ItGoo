<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="UTF-8">

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
  <link href="css/activitystyle/activitystyle.css" rel="stylesheet">
  <link href="css/style-responsive.css" rel="stylesheet">
  <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<link rel="stylesheet" href="css/activitystyle/timepicker-addon.css" />
<link rel="stylesheet" href="//code.jquery.com/ui/1.11.4/themes/smoothness/jquery-ui.css" />
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/paginationjs/2.1.4/pagination.css"/>   
  
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
    <div id="articleView_layer">
	<div id="bg_layer"></div>
	<div id="contents_layer"></div>
</div>
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
          <li class="mt"><a href="/ItGoo/"> <i
							class="fa fa-dashboard"></i> <span>메인 페이지로</span>
					</a></li>
					<li class="sub-menu"><a href="javascript:;">
							<i class="fa fa-tasks"></i> <span>업체정보</span>
					</a>
						<ul class="sub">
							<li><a href="activitymyinfo">업체정보</a></li>
						</ul></li>
					<li class="sub-menu"><a href="javascript:;"> <i
							class="fa fa-book"></i> <span>정보변경</span>
					</a>
						<ul class="sub">
							<li ><a href="activitylocationinfo">업체 위치
									변경</a></li>
							<li><a href="activitypicinfo">업체 시설 첨부</a></li>
						</ul>
					<li class="sub-menu"><a href="javascript:;"> <i
							class="fa fa-book"></i> <span>액티비티 등록 및 삭제</span>
					</a>
						<ul class="sub">
							<li><a href="activityregiste">액티비티 등록</a></li>
							<li><a href="activitydelete">등록된 액티비티 리스트</a></li>
						</ul></li>
					<li class="sub-menu"><a class="active" href="javascript:;"> <i
							class="fa fa-book"></i> <span>진행상황 </span>
					</a>
						<ul class="sub">
							<li class="active"><a href="activitypass">합격 및 불합격 선택</a></li>
						</ul></li>
				</ul>
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
        <h3><i class="fa fa-angle-right"></i> 현재 진행중인 액티비티 목록</h3>
        <div class="row">
          
          <!-- /col-md-12 -->
          <div class="col-md-12 mt">
            <div class="content-panel">
              <table class="table table-hover">
                <h4><i class="fa fa-angle-right"></i> 평가할 액티비티 목록을 선택해주세요</h4>
                <hr>
                <thead>
                  <tr>
                    <th>업체 명</th>
                    <th>액티비티 활동</th>
                    <th>액티비티 시작 날짜 </th>
                    <th>액티비티 시작 시간</th>
                    <th>액티비티 진행 및 활동 시간</th>
                    <th>참여가능한 최대 마릿 수</th>
                    </tr>
                </thead>
                <tbody id="activitydelbody">
                  
                </tbody>
              </table>
              
            </div>
            <div class="pagingdiv"></div>
          </div>
          <!-- /col-md-12 -->
        </div>
        <!-- row -->
      
        <!-- /row -->
      </section>
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
   <script src="//code.jquery.com/ui/1.11.4/jquery-ui.js"></script>
<script src="lib/time-select/timepicker-addon.js"></script>
  <script src="lib/jquery/jquery.min.js"></script>
  <script src="lib/bootstrap/js/bootstrap.min.js"></script>
  <script class="include" type="text/javascript" src="lib/jquery.dcjqaccordion.2.7.js"></script>
  <script src="lib/jquery.scrollTo.min.js"></script>
  <script src="lib/jquery.nicescroll.js" type="text/javascript"></script>
  <!--common script for all pages-->
  <script src="lib/common-scripts.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/paginationjs/2.1.4/pagination.min.js"></script>
  <!--script for this page-->
	<script>
	let container = $('.pagingdiv');
    container.pagination({
      
        dataSource:${apList} , //받아온 데이터
        pageSize: 10,
        callback: function (data, pagination) { //데이터 찍어주는 부분
           console.log("data=",data);
           temp=data;
           $("#activitydelbody").empty();
           $.each(data,function(idx, data){
        		var $body = $("#activitydelbody");
        		
        		var $tr = $("<tr>").appendTo($body);
        		$("<td>").text(data.companyname).appendTo($tr);
        		$("<td>").append($("<a>").attr("href","#").attr("onclick",'articleView('+data.activitynum+')').text(data.activityname)).appendTo($tr);
        		$("<td>").text(data.activitydate).appendTo($tr);
        		$("<td>").text(data.activitystart).appendTo($tr);
        		$("<td>").text(data.activitytime).appendTo($tr);
        		$("<td>").text(data.activitydogcnt).appendTo($tr);
        		
        		});
        }
    
    })
	
	function articleView(activitynum){
		var detail= ${detail}
		$("#articleView_layer").addClass('open');
		
		$.ajax({
			type:'get',
			url:"passdetail",
			data:{activitynum:activitynum},
			dataType:'html',
			success:function(data){
			
				$("#contents_layer").html(data);
			},
			error:function(error){
				console.log(error);
			}
			})
	}
	var $layerWindow=$("#articleView_layer");
	$layerWindow.find('#bg_layer').on('mousedown',function(event){
		console.log(event);
		$layerWindow.removeClass('open');
	});
	$(document).keydown(function(event){
		console.log(event);
		if(event.keyCode!=27)
			return;
		else if($layerWindow.hasClass('open'))
			$layerWindow.removeClass('open');
	});
	
	
	</script>  
</body>

</html>
