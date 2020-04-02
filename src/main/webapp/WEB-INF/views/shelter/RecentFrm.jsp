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
<title>Dashio - Bootstrap Admin Template</title>

<!-- Favicons -->
<link href="img/favicon.png" rel="icon">
<link href="img/apple-touch-icon.png" rel="apple-touch-icon">

<!-- Bootstrap core CSS -->
<link href="lib/bootstrap/css/bootstrap1.min.css" rel="stylesheet">
<!--external css-->
<link href="lib/font-awesome/css/font-awesome.css" rel="stylesheet" />
<link rel="stylesheet" type="text/css"
	href="lib/bootstrap-fileupload/bootstrap-fileupload.css" />

<!-- Custom styles for this template -->
<link href="css/activitystyle/activitystyle.css" rel="stylesheet">
<link href="css/style-responsive.css" rel="stylesheet">
<link rel="stylesheet"
	href="//cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/toastr.min.css">
<!-- =======================================================
    Template Name: Dashio
    Template URL: https://templatemag.com/dashio-bootstrap-admin-template/
    Author: TemplateMag.com
    License: https://templatemag.com/license/
  ======================================================= -->
  <style>
	.content-panel{
		height:auto;
	}
	.dataTables_wrapper{
		margin-left:10px;
	}
	.ck-editor{
    	min-height: 600px;
	}

	
  	
  </style>
</head>

<body>
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
			<div class="nav notify-row" id="top_menu">
				<!--  notification start -->
				<ul class="nav top-menu">
					<!-- settings start -->
					<li class="dropdown"><a data-toggle="dropdown"
						class="dropdown-toggle" href="index.html#"> <i
							class="fa fa-tasks"></i> <span class="badge bg-theme"></span>
					</a>
						<ul class="dropdown-menu extended tasks-bar">
							<div class="notify-arrow notify-arrow-green"></div>

							<li class="external"><a href="#">See All Tasks</a></li>
						</ul></li>
					<!-- settings end -->
					<!-- inbox dropdown start-->
					<li id="header_inbox_bar" class="dropdown"><a
						data-toggle="dropdown" class="dropdown-toggle" href="index.html#">
							<i class="fa fa-envelope-o"></i> <span class="badge bg-theme"></span>
					</a>
						<ul class="dropdown-menu extended inbox">
							<div class="notify-arrow notify-arrow-green"></div>


							<li><a href="index.html#">See all messages</a></li>
						</ul></li>
					<!-- inbox dropdown end -->
					<!-- notification dropdown start-->
					<li id="header_notification_bar" class="dropdown"><a
						data-toggle="dropdown" class="dropdown-toggle" href="index.html#">
							<i class="fa fa-bell-o"></i> <span class="badge bg-warning"></span>
					</a>
						<ul class="dropdown-menu extended notification">
							<div class="notify-arrow notify-arrow-yellow"></div>

						</ul></li>
					<!-- notification dropdown end -->
				</ul>
				<!--  notification end -->
			</div>
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
		<!--header end-->
		<!-- **********************************************************************************************************************************************************
        MAIN SIDEBAR MENU
        *********************************************************************************************************************************************************** -->
		<!--sidebar start-->
		<aside>
		<div id="sidebar" class="nav-collapse ">
				<!-- sidebar menu start-->
				<ul class="sidebar-menu" id="nav-accordion">
					<p class="centered">
						<a href="sheltermyinfo"><img src="img/portfolio/itgoo2.PNG"
							class="img-circle" width="80"></a>
					</p>
					<h5 class="centered">SHELTER MANAGER</h5>
					<li class="mt"><a href="/ItGoo/"> <i
							class="fa fa-dashboard"></i> <span>홈으로 </span>
					</a></li>
					<li class="sub-menu"><a href="javascript:;">
							<i class="fa fa-desktop"></i> <span>정보보기</span>
					</a>
						<ul class="sub">
							<li><a href="sheltermyinfo">보호소 정보보기</a></li>
						</ul></li>



					<li class="sub-menu"><a href="javascript:;"> <i
							class="fa fa-book"></i> <span>보호소 사진</span>
					</a>
						<ul class="sub">
							<li><a href="sheltercard">사업자등록증</a></li>
							<li><a href="shelterpicinfo">시설사진</a></li>
						</ul>
					</li>


					<li class="sub-menu"><a href="javascript:;"> <i
							class="fa fa-th"></i> <span>입양 공고</span>
					</a>
						<ul class="sub">
							<li><a href="shelterregiste">등록</a></li>
							<li><a href="shelterdelete">삭제</a></li>
						</ul></li>
						
					<li class="sub-menu"><a class="active" href="javascript:;"> <i	class="fa fa-th"></i> <span>가상입양 관리</span>
					</a>
						<ul class="sub">
							<li><a href="virtualadoptlist?input=1">근황 입력</a></li>
							<li><a href="virtualadoptlist?input=0">근황 삭제</a></li>
						</ul></li>



					<li class=""><a href="javascript:;"><i
							class="fa fa-map-marker"></i> <span>보호소위치</span> </a>
						<ul class="sub">
							<li><a href="shelterlocationinfo">위치 및 수정</a></li>
						</ul></li>
				</ul>
			</div>	
		</aside>
		<!--sidebar end-->
		<!-- **********************************************************************************************************************************************************
        MAIN CONTENT
        *********************************************************************************************************************************************************** -->
		<!--main content start-->
		<section id="main-content">
      <section class="wrapper">
        <h3><i class="fa fa-angle-right"></i>강아지 근황</h3>
        <!-- BASIC FORM ELELEMNTS -->
        <div class="row mt">
          <div class="col-lg-11">
            <div class="form-panel">
              <h4 class="mb"><i class="fa fa-angle-right"></i> 근황 입력</h4>
              <form class="form-horizontal style-form" method="post" 
              action="insertrecent?${_csrf.parameterName}=${_csrf.token}" enctype="multipart/form-data"
              onsubmit="return check()" name="auctionfrm">
                <input type="hidden" name="srcJson">
                <input type="hidden" name="dogid">
                <input type="hidden" name="id">
                <div class="form-group">
                  <label class="col-sm-2  control-label">근황 이름</label>
                  <div class="col-sm-10">
                    <input type="text" class="form-control" name="title" required>
                    <span class="help-block">등록할 근황 이름을 입력하세요</span>
                  </div>
                </div>
                
                <div class="form-group">
                  <label class="col-sm-2  control-label" >강아지 근황</label>
                  <div class="col-sm-10">
                    <textarea id="editor" name="message">
                      
                  </textarea>
                  </div>
              </div>
                <div class="form-group" style="text-align: center">
                    <button class="btn btn-theme" type="submit">근황 등록</button>
                </div>
                
              </form>
            </div>
          </div>
          <!-- col-lg-12-->
        </div>
      <div>
      
      </div>
      </section>
      <!-- /wrapper -->
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
	<script src="ckeditor/ckeditor.js"></script>

	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/toastr.min.js"></script>
	<script>
	var va=${virtualAdopt};
	console.log(va);
	frm=document.auctionfrm;
	frm.dogid.value=va.dogid;
	frm.id.value=va.id;
	let myeditor
	ClassicEditor
	    .create( document.querySelector( '#editor' ),{
	        ckfinder: {
	            uploadUrl: './ck/upload?${_csrf.parameterName}=${_csrf.token}', // 내가 지정한 업로드 url (post로 요청감)
	            
	    	
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
       
    </script>

</body>

</html>
