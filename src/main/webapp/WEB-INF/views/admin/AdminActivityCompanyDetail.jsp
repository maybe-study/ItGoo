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
    <title>Dashio - Admin Detail</title>

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
                    <p class="centered"><a href="profile.html"><img src="img/mung.png" class="img-circle" width="80"></a></p>
                    <h5 class="centered">ItGoo</h5>
                    <!--<li class="mt">
            <a class="active" href="index.html">
              <i class="fa fa-dashboard"></i>
              <span>Dashboard</span>
              </a>
          </li>-->
                    <li class="sub-menu">
                        <a class="active" href="./adminactivity">
                            <i class="fa fa-desktop"></i>
                            <span>액티비티 업체 관리</span>
                        </a>
                    </li>
                    <li class="sub-menu">
                        <a href="./admintest">
                            <i class="fa fa-cogs"></i>
                            <span>적격성 평가</span>
                        </a>
                    </li>
                    <li class="sub-menu">
                        <a href="javascript:;">
                            <i class="fa fa-book"></i>
                            <span>입양신청</span>
                        </a>
                    </li>
                    <li class="sub-menu">
                        <a href="./adminshelter">
                            <i class="fa fa-tasks"></i>
                            <span>보호소 관리</span>
                        </a>
                    </li>

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
                <!-- page start-->
                <div class="row mt">
                    <div class="col-sm-3">
                        <section class="panel">
                            <div class="panel-body">
                                <ul class="nav nav-pills nav-stacked labels-info ">
                                    <li>
                                        <h4>업체 사진</h4>
                                    </li>
                                    <li>
                                        <img src="img/test.png" style="max-width: 100%">
                                    </li>
                                </ul>

                            </div>
                        </section>
                        <section class="panel">
                            <div class="panel-body">
                                <ul class="nav nav-pills nav-stacked labels-info ">
                                    <li>
                                        <h4>업체 위치</h4>
                                    </li>
                                    <li>
                                        <img src="img/test.png" style="max-width: 100%">
                                    </li>
                                </ul>

                            </div>
                        </section>
                    </div>
                    <div class="col-sm-9">
                        <section class="panel">
                            <div class="panel-body">
                                <div class="row">
                                    <!-- /col-md-12 -->
                                    <div class="col-md-12 mt">
                                        <div class="content-panel">
                                            <table class="table table-hover">
                                                <h4><i class="fa fa-angle-right"></i> 업체명 </h4>
                                                <hr>
                                                <tbody>
                                                    <tr>
                                                        <td>업체 아이디</td>
                                                        <td>Jacob</td>
                                                    </tr>
                                                    <tr>
                                                        <td>대표자</td>
                                                        <td>Simon</td>
                                                    </tr>
                                                    <tr>
                                                        <td>휴대폰</td>
                                                        <td>Simon</td>
                                                    </tr>
                                                    <tr>
                                                        <td>이메일</td>
                                                        <td>Simon</td>
                                                    </tr>
                                                    <tr>
                                                        <td>주소</td>
                                                        <td>Simon</td>
                                                    </tr>
                                                    <tr>
                                                        <td>사진</td>
                                                        <td>Simon</td>
                                                    </tr>
                                                </tbody>
                                            </table>
                                        </div>
                                    </div>
                                </div>
                                <div class="compose-mail">
                                    <form role="form-horizontal" method="post">
                                        <div class="compose-btn">
                                            <button class="btn btn-theme btn-sm"><i class="fa fa-check"></i> 삭제</button>
                                        </div>
                                    </form>
                                </div>
                            </div>
                            
                        </section>
                    </div>
                    <div class="col-sm-9">
                        <section class="panel">
                            <div class="panel-body">
                                <div class="row">
                                    <!-- /col-md-12 -->
                                    <div class="col-md-12 mt">
                                        <div class="content-panel">
                                            <table class="table table-hover">
                                                <h4><i class="fa fa-angle-right"></i> 등록된 액티비티 </h4>
                                                <hr>
                                                <thead>
                                                  <tr>
                                                    <th>#</th>
                                                    <th>Name</th>
                                                    <th>설명</th>
                                                    <th>종목</th>
                                                    <th>참여가능 마리수</th>
                                                  </tr>
                                                </thead>
                                                <tbody>
                                                    <tr>
                                                        <td>#</td>
                                                        <td>Name</td>
                                                        <td>설명</td>
                                                        <td>종목</td>
                                                        <td>참여가능 마리수</td>
                                                    </tr>
                                                    <tr>
                                                        <td>#</td>
                                                        <td>Name</td>
                                                        <td>설명</td>
                                                        <td>종목</td>
                                                        <td>참여가능 마리수</td>
                                                    </tr>
                                                    <tr>
                                                        <td>#</td>
                                                        <td>Name</td>
                                                        <td>설명</td>
                                                        <td>종목</td>
                                                        <td>참여가능 마리수</td>
                                                    </tr>
                                                    <tr>
                                                        <td>#</td>
                                                        <td>Name</td>
                                                        <td>설명</td>
                                                        <td>종목</td>
                                                        <td>참여가능 마리수</td>
                                                    </tr>
                                                    <tr>
                                                        <td>#</td>
                                                        <td>Name</td>
                                                        <td>설명</td>
                                                        <td>종목</td>
                                                        <td>참여가능 마리수</td>
                                                    </tr>
                                                    
                                                </tbody>
                                            </table>
                                        </div>
                                    </div>
                                </div>
                                <div class="compose-mail">
                                    <form role="form-horizontal" method="post">
                                        <div class="compose-btn">
                                            <button class="btn btn-theme btn-sm"><i class="fa fa-check"></i> 삭제</button>
                                        </div>
                                    </form>
                                </div>
                            </div>
                            
                        </section>
                    </div>
                </div>
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
                <a href="index.html#" class="go-top">
                    <i class="fa fa-angle-up"></i>
                </a>
            </div>
        </footer>
        <!--footer end-->
    </section>
    <!-- js placed at the end of the document so the pages load faster -->
    <script src="lib/jquery/jquery.min.js"></script>

    <script src="lib/bootstrap/js/bootstrap.min.js"></script>
    <script class="include" type="text/javascript" src="lib/jquery.dcjqaccordion.2.7.js"></script>
    <script src="lib/jquery.scrollTo.min.js"></script>
    <script src="lib/jquery.nicescroll.js" type="text/javascript"></script>
    <script src="lib/jquery.sparkline.js"></script>
    <!--common script for all pages-->
    <script src="lib/common-scripts.js"></script>
    <script type="text/javascript" src="lib/gritter/js/jquery.gritter.js"></script>
    <script type="text/javascript" src="lib/gritter-conf.js"></script>
    <!--script for this page-->
    <script src="lib/sparkline-chart.js"></script>
    <script src="lib/zabuto_calendar.js"></script>


</body></html>
