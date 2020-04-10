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
<title>ITGOO - ITGOO Admin </title>

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
<script src="https://kit.fontawesome.com/c9422a165f.js"
	crossorigin="anonymous"></script>

<script src="main.js?ver"></script>

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

		<section id="main-content">
			<section class="wrapper">
				<h3>
					<i class="fa fa-angle-right"></i> 설문지 문항 추가
				</h3>
				<!-- BASIC FORM VALIDATION -->
				<!-- FORM VALIDATION -->
				<form class="cmxform form-horizontal style-form" id="addCareFrm" name="addCareFrm"
					method="get" action="updatecaresheet" onsubmit="return addCareSheetSubmit()">
					<div class="row mt">
						<div class="col-lg-12">
							<h4>
								<i class="fa fa-angle-right"></i> 설문 입력
							</h4>
							<div class="form-panel">
								<div class=" form" id="cList">
									<div class="form-group ">
										<div class="col-lg-2">
											질문 : 
										</div>
										<div class="col-lg-10">

											<input class=" form-control" id="question" name="question"
												minlength="2" type="text" required />

										</div>
									</div>
									
								</div>
								<div class="form-group">
									<div class="col-lg-offset-2 col-lg-10">
										<button class="btn btn-theme" type="button" id="addBtn">
											<i class="fas fa-plus"></i>
										</button>
									</div>

								</div>
								<script>
                                
                                document.getElementById("addBtn").onclick=function(){
                                	let $formGroup=$('<div class="form-group ">');
                                	let $label=$('<div class="col-lg-2">').append("질문 : ").appendTo($formGroup);
                                	let $div=$('<div class="col-lg-10">').appendTo($formGroup);
                                    let $input =$('<input class=" form-control" id="question" name="question" minlength="2" type="text" required >');
                                    
                                    $div.append($input);
                                    $('#cList').append($formGroup);
                                   
                                }
                            </script>
							</div>
							<!-- /form-panel -->
						</div>
						<!-- /col-lg-12 -->
					</div>
					
					<div class="row mt">
						<div class="col-lg-12">
							<br>
							<div class="form-group" style="text-align: center">
								<button class="btn btn-theme" type="submit" id="submitBtn">Save</button>
								<button class="btn btn-theme04" type="button" id="cBtn">Cancel</button>
							</div>
						</div>
					</div>
				</form>
			</section>
			<!-- /wrapper -->
		</section>
		
	</section>
	<!-- js placed at the end of the document so the pages load faster -->

	<script>
	//전역 변수
	var cList=${cList};
	//추가된 질문마다 질문 번호 추가
	$.each(cList, function(idx,c){
		console.log(c);
		if(idx==0) {
			$('#question').val(c.question);
			$('#question')[0].dataset.questionnum=c.questionnum;
		}
		else{
			let $formGroup=$('<div class="form-group ">');
        	let $label=$('<div class="col-lg-2">').append("질문 : ").appendTo($formGroup);
        	let $div=$('<div class="col-lg-10">').appendTo($formGroup);
            let $input =$('<input class=" form-control" id="question" name="question" minlength="2" type="text" required >');
            $input[0].dataset.questionnum=c.questionnum;
            $div.append($input.val(c.question));
            $('#cList').append($formGroup);
		}
	});
	
	function addCareSheetSubmit(){
		var careArr= new Array();
		//console.log(typeof document.addCareFrm.question.value);
		if(!(document.addCareFrm.question  instanceof RadioNodeList)){
			var sheet=new Object();
			sheet.question=document.addCareFrm.question.value;
			sheet.questionnum=document.addCareFrm.question.dataset.questionnum;
			careArr.push(sheet);
		}else{
			$.each(document.addCareFrm.question,function(idx, c){
				console.log(c);
				var sheet=new Object();
				sheet.question=c.value;
				sheet.questionnum=c.dataset.questionnum;
				careArr.push(sheet);
			})
		}
		//폼에 히든 영역 추가
		var careJson=JSON.stringify(careArr);
		console.log(careJson);
		var h_input=document.createElement("input");
		h_input.type = "hidden";
		h_input.name = "careJson";
		h_input.value= careJson;
		document.addCareFrm.appendChild(h_input);
		console.dir(document.addCareFrm);
		return true;
	}
		
		
	</script>

</body>

</html>
