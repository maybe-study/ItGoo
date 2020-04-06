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
  <link rel="stylesheet" type="text/css" href="css/zabuto_calendar.css">
  <link rel="stylesheet" type="text/css" href="lib/gritter/css/jquery.gritter.css" />
  <!-- Custom styles for this template -->
  <link href="css/style.css" rel="stylesheet">
  <link href="css/style-responsive.css" rel="stylesheet">
  <script src="lib/chart-master/Chart.js"></script>
  <script src="lib/jquery/jquery.min.js"></script>
  <script src="main2.js?ver"></script>
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
      <form action="submitsheet?${_csrf.parameterName}=${_csrf.token}" id="act" method="get" onsubmit="return makeJson()" name="frm">
        <h3><i class="fa fa-angle-right"></i> 설문지 </h3>
        <input type="hidden" name="aJson">
        <input type="hidden" name="dogid" value="${dogid}">
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
                    <th>질문</th>
                    <th>응답</th>
                  </tr>
                </thead>
                <tbody id="careList">
                  
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
                       <button class="btn btn-theme" type="submit">설문지 제출</button>
                   </div>
               </div>
        </div>
        </form>
        </section>
      </section>
       

  </section>
  <!-- js placed at the end of the document so the pages load faster -->
 <script>
 console.log(${dogid});
 console.log("질문번호",${cr});
 	var cList=${cr};
 	console.log("왜안나올까잉",cList);
 	 $.each(cList, function(idx,data){
 		var $tr=$('<tr>');
 		$('<td>').text(data.questionnum).appendTo($tr);
 		$('<td>').text(data.question).appendTo($tr);
 		$("<textarea id='answer' class='answer' name='answer' style='width:300px; height:100px; display:invisible;' data-questionnum="+data.questionnum+">").appendTo($tr);
 	 	$('#careList').append($tr);
 	}); 
 	
 	function makeJson(){
 		var arr=new Array();
 		var obj;
 		$.each($(".answer"),function(idx,data){
 			console.log(data);
 			console.log(data.dataset.questionnum);
 			obj={
 				questionnum:data.dataset.questionnum,
 				answer:data.value
 			}
 			arr.push(obj);
 		})

 		console.log("arr",arr);
 		document.frm.aJson.value=JSON.stringify(arr);
 		console.log("이거 나와야하는데 시바"+JSON.stringify(arr));
 		return true;
 	};
 </script>
</body>
</html>
