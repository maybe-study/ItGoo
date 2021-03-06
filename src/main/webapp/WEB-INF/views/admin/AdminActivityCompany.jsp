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
  <title>ITGOO - Admin</title>

  <!-- Favicons -->
  <link href="img/favicon.png" rel="icon">
  <link href="img/apple-touch-icon.png" rel="apple-touch-icon">
  <!-- Bootstrap core CSS -->
  <link href="lib/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <!--external css-->
  <link rel="stylesheet" type="text/css" href="css/zabuto_calendar.css">
  <link rel="stylesheet" type="text/css" href="lib/gritter/css/jquery.gritter.css" />
  <!-- Custom styles for this template -->
  <link href="css/style.css" rel="stylesheet">
  <link href="css/style-responsive.css" rel="stylesheet">
  <script src="lib/chart-master/Chart.js"></script>
  <script src="lib/jquery/jquery.min.js"></script>

  
  <script src="main.js?ver"></script>
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
        <div class="fa fa-bars tooltips" data-placement="right" data-original-title="Toggle Navigation"></div>
      </div>
      <!--logo start-->
      <a href="index.jsp" class="logo"><b>IT<span>GOO</span></b></a>
      <!--logo end-->
      
      <div class="top-menu">
        <ul class="nav pull-right top-menu">
          <li><a class="logout" href="#" onclick="document.getElementById('logout-form').submit();">Logout</a>
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
        <h3><i class="fa fa-angle-right"></i> 액티비티 업체 관리 </h3>
        <div class="row">
          
          <!-- /col-md-12 -->
          <div class="col-md-12 mt">
            <div class="content-panel">
            <h4><i class="fa fa-angle-right"></i> 액티비티 업체 신규 등록 </h4>
                <hr>
              <table id="table2" class="table table-hover">
              
                
                <thead>
                  <tr>
                    <th>#</th>
                    <th>name</th>
                    <th>id</th>
                    <th>대표자</th>
                    <th>업체 전화번호</th>
                    <th>업체 주소</th>
                  </tr>
                </thead>
                <tbody id="wait_enroll">
                </tbody>
              </table>
            </div>
          </div>
          <!-- /col-md-12 -->
          <div class="col-md-12 mt">
            <div class="content-panel">
            <h4><i class="fa fa-angle-right"></i> 등록된 업체 </h4>
                <hr>
              <table id="table1" class="table table-hover">
                
                <thead>
                  <tr>
                    <th>#</th>
                    <th>name</th>
                    <th>id</th>
                    <th>대표자</th>
                    <th>업체 전화번호</th>
                    <th>업체 주소</th>
                  </tr>
                </thead>
                <tbody id="enrolled">
                  
                </tbody>
              </table>
            </div>
          </div>
        </div>
        <!-- row -->
        </section>
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

 <script src="https://cdn.datatables.net/t/bs-3.3.6/jqc-1.12.0,dt-1.10.11/datatables.min.js"></script>
    <script>
        jQuery(function($){
            $("#table1").DataTable({info: false});
        });
        jQuery(function($){
            $("#table2").DataTable({info: false});
        });
    </script>
  
  <script>
  	$.each(${companyWaitList},function(idx,data){
  		var $wait=$("#wait_enroll");
  		var $tr=$("<tr>").appendTo($wait);
  		$("<td>").text(idx).appendTo($tr);
  		$("<td>").append($("<a>").attr("href","./adminokno?companyid="+data.companyid).text(data.companyname)).appendTo($tr);
  		$("<td>").text(data.companyid).appendTo($tr);
  		$("<td>").text(data.companyboss).appendTo($tr);
  		$("<td>").text(data.companyphone).appendTo($tr);
  		$("<td>").text(data.companylocation).appendTo($tr);
  	})
  	$.each(${companyEnrolledList},function(idx,data){
  		var $wait=$("#enrolled");
  		var $tr=$("<tr>").appendTo($wait);
  		$("<td>").text(idx).appendTo($tr);
  		$("<td>").text(data.companyname).appendTo($tr);
  		$("<td>").text(data.companyid).appendTo($tr);
  		$("<td>").text(data.companyboss).appendTo($tr);
  		$("<td>").text(data.companyphone).appendTo($tr);
  		$("<td>").text(data.companylocation).appendTo($tr);
  		
  	})
  </script>
 


</body>

</html>
