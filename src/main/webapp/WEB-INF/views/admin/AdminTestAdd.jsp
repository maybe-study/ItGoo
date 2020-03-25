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
					<i class="fa fa-angle-right"></i> 적격성 평가 문제
				</h3>
				<!-- BASIC FORM VALIDATION -->
				<!-- FORM VALIDATION -->
				<form class="cmxform form-horizontal style-form" id="addTestFrm" name="addTestFrm"
					method="get" action="addtest" onsubmit="return testSubmit()">
					<div class="row mt">
						<div class="col-lg-12">
							<h4>
								<i class="fa fa-angle-right"></i> 문제 입력
							</h4>
							<div class="form-panel">
								<div class=" form">
									<div class="form-group ">
									<input type="hidden" name="questionnum" value=0>
										<div class="col-lg-2">
											점수 : <input class=" form-control" id="point" name="point"
												minlength="2" type="text" required />
										</div>
										<div class="col-lg-10">

											문제 : <input class=" form-control" id="question" name="question"
												minlength="2" type="text" required />

										</div>
									</div>
								</div>
							</div>
							<!-- /form-panel -->
						</div>
						<!-- /col-lg-12 -->
					</div>
					<!-- /row -->
					<div class="row mt">
						<div class="col-lg-12">
							<h4>
								<i class="fa fa-angle-right"></i> 보기 입력
							</h4>
							<div class="form-panel">
								<div class="form" id="exList">
									<div class="form-group ">
										<label for="ex" class="control-label col-lg-2"> <input
											type="radio" name="correct" value="1" required>&nbsp;1)
										</label>
										<div class="col-lg-10">
											<input class=" form-control" name="exs" type="text" data-exnum="1"/>
										</div>
										
									</div>
									<div class="form-group ">
										<label for="ex" class="control-label col-lg-2"> <input
											type="radio" name="correct" value="2" required>&nbsp;2)
										</label>
										<div class="col-lg-10">
											<input class=" form-control" name="exs" type="text" data-exnum="2"/>
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
							</div>
							<script>
                                
                                document.getElementById("addBtn").onclick=function(){
                                    let $radio=$('<input>').attr('type','radio').attr('name','correct').attr('value',++cnt);
                                    let $label=$('<label>').attr('for','ex').attr('class','control-label col-lg-2').append($radio).append(' '+cnt+') ');
                                    let $input =$('<input>').attr('class',' form-control').attr('name','exs').attr('type','text');
                                    $input[0].dataset.exnum=cnt;
                                    let $div=$('<div>').attr('class','col-lg-10').append($input);
                                    $('<div>').attr('class','form-group ').append($label).append($div).appendTo($('#exList'));
                                }
                            </script>
							<!-- /form-panel -->
						</div>

						<!-- /col-lg-12 -->
					</div>
					<!-- /row -->
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

	<script>
	//전역 변수
	cnt=2;
	//addtest인 경우 question=0
	var question=${question};
	//modify인 경우
 	if(question!=0){
 		//폼태그 액션 바꿈
 		document.addTestFrm.questionnum.value=question.questionnum;
 		document.addTestFrm.action="modifyquestion";
 		document.querySelector("#point").value=question.point;
 		document.querySelector("#question").value=question.question;
 		//보기가 두개 이상이면 보기 추가
 		var ex=${exList};
 		if(ex.length>2){
 			for(var i=2;i<ex.length;i++){
	 			let $radio=$('<input>').attr('type','radio').attr('name','correct').attr('value',++cnt);
	 	        let $label=$('<label>').attr('for','ex').attr('class','control-label col-lg-2').append($radio).append(' '+cnt+') ');
	 	        let $input =$('<input>').attr('class',' form-control').attr('name','exs').attr('type','text');
	 	        $input[0].dataset.exnum=cnt;
	 	        let $div=$('<div>').attr('class','col-lg-10').append($input);
	 	        $('<div>').attr('class','form-group ').append($label).append($div).appendTo($('#exList'));
 			}
 		}
        //폼에 데이터 채워넣음
 		$.each(document.addTestFrm.exs,function(idx, e){
			console.log(e);
			e.value=ex[idx].excontent;
			console.log(e.dataset.exnum);
		})
        
 		$("input:radio[name='correct']:radio[value='"+question.correct+"']").prop('checked', true); // 선택하기
 		$('#submitBtn').text('수정');
 		
 	}
	function testSubmit(){
		var exArr= new Array();
		$.each(document.addTestFrm.exs,function(idx, e){
			console.log(e);
			console.log(e.value);
			console.log(e.dataset.exnum);
			
			var ex=new Object();
			ex.exnum=e.dataset.exnum;
			ex.excontent=e.value;
			ex.questionnum=0;
			exArr.push(ex);
		})
		//폼에 히든 영역 추가
		var exJson=JSON.stringify(exArr);
		
		var h_input=document.createElement("input");
		h_input.type = "hidden";
		h_input.name = "exJson";
		h_input.value= exJson;
		document.addTestFrm.appendChild(h_input);
		console.dir(document.addTestFrm);
		return true;
	}
		
		
	</script>

</body>

</html>
