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
	href="lib/gritter/css/jquery.gritter.css" />
<!-- Custom styles for this template -->
<link href="css/client/clientstyle.css" rel="stylesheet">
<link href="css/style-responsive.css" rel="stylesheet">
<script src="lib/chart-master/Chart.js"></script>
<script src="lib/jquery/jquery.min.js"></script>

<link href="lib/bootstrap/css/bootstrap1.min.css" rel="stylesheet">
<!--external css-->
<link href="lib/font-awesome/css/font-awesome.css" rel="stylesheet" />
<link rel="stylesheet" type="text/css"
	href="lib/bootstrap-fileupload/bootstrap-fileupload.css" />
<!-- Custom styles for this template -->
<link href="css/client/clientstyle.css" rel="stylesheet">
<link href="css/style-responsive.css" rel="stylesheet">
<link rel="stylesheet"
	href="//cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/toastr.min.css">
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/paginationjs/2.1.4/pagination.css"/>  
<script src="main2.js?ver"></script>
<!--script for this page-->
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
		<aside></aside>
		<!--sidebar end-->
		<!-- **********************************************************************************************************************************************************
        MAIN CONTENT
        *********************************************************************************************************************************************************** -->
		<!--main content start-->
		<section id="main-content">
      <section class="wrapper">
        <h3><i class="fa fa-angle-right"></i> 내가 모집하는 소모임</h3>
        <div class="row">
          
          <!-- /col-md-12 -->
          <div class="col-md-12 mt">
            <div class="content-panel">
              <table class="table table-hover">
                <h4><i class="fa fa-angle-right"></i> 내가 모집하는 소모임 목록입니다.</h4>
                <hr>
                <thead>
                  <tr>
                    <th>그룹 이름</th>
                    <th>주최자</th>
                    <th>소모임 위치 </th>
                    <th>현재 총 강아지 마릿 수</th>
                    <th>소모임 시작 날짜</th>
                    <th>소모임 시작 시간</th>
                    <th>소모임 진행상황</th>
                    </tr>
                </thead>
                <tbody id="myrecruitsmall">
                  
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
		<div id="articleView_layer">
	<div id="bg_layer"></div>
	<div id="contents_layer"></div>
</div>
		<!--footer end-->
	</section>
	<!-- js placed at the end of the document so the pages load faster -->
<script src="//code.jquery.com/ui/1.11.4/jquery-ui.js"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/toastr.min.js"></script>
		<script src="https://cdnjs.cloudflare.com/ajax/libs/paginationjs/2.1.4/pagination.min.js"></script>
		
	<script>
	let container = $('.pagingdiv');
    container.pagination({
      
        dataSource:${rsList} ,  //받아온 데이터
        pageSize: 10,
        callback: function (data, pagination) { //데이터 찍어주는 부분
           console.log("data=",data);
           temp=data;
           $("#myrecruitsmall").empty();
           $.each(data,function(idx, data){
        		var $body = $("#myrecruitsmall");
        		
        		var $tr = $("<tr>").appendTo($body);
        		$("<td>").append($("<a>").attr("href","#").attr("onclick",'articleView('+data.smallnumber+')').text(data.meetingname)).appendTo($tr);
        		$("<td>").text(data.id).appendTo($tr);
        		$("<td>").text(data.smalllocation).appendTo($tr);
        		$("<td>").text(data.meetparticipatecnt).appendTo($tr);
        		$("<td>").text(data.meetingdate).appendTo($tr);
        		$("<td>").text(data.time).appendTo($tr);
        		if(data.status == 0){
        			$("<td>").text("시작 전").appendTo($tr);
        		}else if(data.status == 1){
        			$("<td>").text("완료 후 해산").appendTo($tr);
        		}else{
        			$("<td>").text("소모임 취소").appendTo($tr);
        		}
        		});
        }
    
    });
    function articleView(smallnumber){
		var esdetail= ${esdetail}
		$("#articleView_layer").addClass('open');
		
		$.ajax({
			type:'get',
			url:"myenrollsmalldetail",
			data:{smallnumber:smallnumber},
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
