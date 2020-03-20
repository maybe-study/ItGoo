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
  <title>적격성 평가 문항</title>

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
        <div class="fa fa-bars tooltips" data-placement="right" data-original-title="Toggle Navigation"></div>
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
    <aside>
      
    </aside>
    <!--sidebar end-->
    <!-- **********************************************************************************************************************************************************
        MAIN CONTENT
        *********************************************************************************************************************************************************** -->
    <!--main content start-->
    <section id="main-content">
      <section class="wrapper">
        <h3><i class="fa fa-angle-right"></i> 적격성 평가 문항 관리 </h3>
        <div class="row">
          
          <!-- /col-md-12 -->
          <div class="col-md-12 mt">
            <div class="content-panel">
              <table class="table table-hover">
                <h4><i class="fa fa-angle-right"></i> 문항 </h4>
                <hr>
                <thead>
                  <tr>
                    <th>번호</th>
                    <th>문제</th>
                    <th>정답</th>
                    <th>점수</th>
                    <th>관리</th>
                  </tr>
                </thead>
                <tbody id="testList">
                  
                </tbody>
              </table>
            </div>
          </div>
        </div>
        <!-- row -->
        <div class="row mt">
               <div class="col-lg-12">
               <br>
               		<div class="form-group" style="text-align: center">
                       <button class="btn btn-theme" type="submit" onclick="location.href='./addtestfrm'">문제 추가</button>
                   </div>
               </div>
        </div>
        </section>
      </section>
       
        <!-- /row -->
    <!--main content end-->
    <!--footer start-->

  </section>
  <!-- js placed at the end of the document so the pages load faster -->
 <script>
 	
 
 
 	var tList=${testList};
 	//var cList=${correctList};
 	console.dir(tList);
 	$.each(tList, function(idx,test){
 		var $tr=$('<tr>');
 		
 		$('<td>').text(test.questionnum).appendTo($tr);
 		$('<td>').text(test.question).appendTo($tr);
 		$('<td>').text(test.correct).appendTo($tr);
 		$('<td>').text(test.point).appendTo($tr);
 		
 		var $btn1=$('<button>').attr('type','button').attr('class','btn btn-theme').text('수정');
 		var $btn2=$('<button>').attr('type','button').attr('class','btn btn-theme04').text('삭제');
 		$btn1.click(function(){location.href="modifyquestionfrm?questionnum="+test.questionnum});
 		$btn2.click(function(){location.href="deletequestion?questionnum="+test.questionnum});
 
 		
 		$('<td>').append($btn1).append($btn2).appendTo($tr)
 		
 	 	$('#testList').append($tr);
 	})
 	
 </script>
  
  
</body>

</html>
