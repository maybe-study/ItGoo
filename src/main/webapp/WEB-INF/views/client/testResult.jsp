<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

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
  <link rel="stylesheet" type="text/css" href="lib/bootstrap-datepicker/css/datepicker.css" />
  <link rel="stylesheet" type="text/css" href="lib/bootstrap-daterangepicker/daterangepicker.css" />
  <!-- Custom styles for this template -->
  <link href="css/style.css" rel="stylesheet">
  <link href="css/style-responsive.css" rel="stylesheet">
  <script src="https://kit.fontawesome.com/c9422a165f.js"
	crossorigin="anonymous"></script>

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
    
    <!--header end-->
    <!-- **********************************************************************************************************************************************************
        MAIN SIDEBAR MENU
        *********************************************************************************************************************************************************** -->
    <!--sidebar start-->
    
    <!--sidebar end-->
    <!-- **********************************************************************************************************************************************************
        MAIN CONTENT
        *********************************************************************************************************************************************************** -->
    <!--main content start-->
    <section id="main-content">
      <section class="wrapper">
        <h3 id="result"><i class="fa fa-angle-right"></i> 적격성 평가 결과 보기</h3>
        <form action="testpapersubmit?${_csrf.parameterName}=${_csrf.token}"
						onsubmit="return makeTestJson()" name=frm id="frm" method="post" >
						<input type="hidden" name="test" value="0">
        <!-- /row -->
        <!-- INPUT MESSAGES -->
        <div class="row mt">
          <div class="col-lg-10">
          <div class="row mt" id="questionList">
          			
          </div>
          
        </div>
        
        </div>
        <!-- /row -->
        </form>
        <div class="form-group" style="text-align: center">
                       <button class="btn btn-theme" type="button" onclick="gotohome();">제출완료</button>
                   </div>
      </section>
      <!-- /wrapper -->
    </section>
    <!-- /MAIN CONTENT -->
    <!--main content end-->
    <!--footer start-->
    
    <!--footer end-->
  </section>
  <!-- js placed at the end of the document so the pages load faster -->
  <script src="lib/jquery/jquery.min.js"></script>
  <script src="lib/bootstrap/js/bootstrap.min.js"></script>
  <script class="include" type="text/javascript" src="lib/jquery.dcjqaccordion.2.7.js"></script>
  <script src="lib/jquery.scrollTo.min.js"></script>
  <script src="lib/jquery.nicescroll.js" type="text/javascript"></script>
  <!--common script for all pages-->
  <script src="lib/common-scripts.js"></script>
  <!--script for this page-->
  <script src="lib/jquery-ui-1.9.2.custom.min.js"></script>
  <!--custom switch-->
  <script src="lib/bootstrap-switch.js"></script>
  <!--custom tagsinput-->
  <script src="lib/jquery.tagsinput.js"></script>
  <!--custom checkbox & radio-->
  <script type="text/javascript" src="lib/bootstrap-datepicker/js/bootstrap-datepicker.js"></script>
  <script type="text/javascript" src="lib/bootstrap-daterangepicker/date.js"></script>
  <script type="text/javascript" src="lib/bootstrap-daterangepicker/daterangepicker.js"></script>
  <script type="text/javascript" src="lib/bootstrap-inputmask/bootstrap-inputmask.min.js"></script>
  <script>
  //console.log(${qList});
  //console.log(${rList});
  	var pointSum = 0;
  	var qs = getQueryStringObject();
  	var qList=${qList}
  	var rList=${rList}
  	var $qList=$('#questionList');
  	$qList.empty();
  	$.each(qList,function(idx,question){
  		
  		console.log(question)
  		console.log(rList[idx]);
  		var $div1=$('<div class="col-lg-4">');
  	  	var $div2=$('<div class="form-panel">');
  	  	var $icon=$('<i>');
  	  	if(rList[idx].correct==rList[idx].answer){
			$icon.attr('class','far fa-circle').attr('style','color:green');
			pointSum+=rList[idx].point;
		}else{
			$icon.attr('class','fas fa-slash').attr('style','color:red');
		}
  	  	var $h4=$('<h4 class="mb">').append($icon).append(" "+question.question);
  	  	
  	  	
  	  	$div2.append($h4);
  	  	
  	  	$.each(question.exList,function(i,ex){
  	  		
	  	  	var $input=$('<input type="radio" name="q'+question.questionnum+'" id="optionsRadios1" value="'+ex.exnum+'" required>').attr('disabled',true)
	  	  	if(rList[idx].answer==ex.exnum){
	  	  		$input.prop("checked",true);
	  	  	}
	  	  	var $label=$('<label>').append($input).append(ex.exnum+". ");
	  	  	$label.append(ex.excontent);
	  	  	
	  	  	if(i+1==rList[idx].correct){
	  	  		$label.attr('style','background-color:blue; color:white');
	  	  	}
	  	  	
	  	  	var $div3=$('<div class="radio">').append($label);
	  	  	$div2.append($div3);
	  	  	
  	  	})
  	  	$div1.append($div2);
  	  	$qList.append($div1);
  	})
  	//점수
  	$('#result').append(" : "+pointSum+"점");
  	
  	function makeTestJson(){
		var qArr= new Array();
  		$.each(qList,function(idx,question){
  			var obj= new Object();
  			obj.questionnum=question.questionnum;
  			obj.answer=document.frm["q"+question.questionnum].value;
  			obj.dogid=1;//qs.dogid;
  			qArr.push(obj);
  		})
  		document.frm.test.value=JSON.stringify(qArr);
  		
  		return true;
  	}
  	
  	
  	
  	
  	
	function getQueryStringObject() {
	    var a = window.location.search.substr(1).split('&');
	    if (a == "") return {};
	    var b = {};
	    for (var i = 0; i < a.length; ++i) {
	        var p = a[i].split('=', 2);
	        if (p.length == 1)
	            b[p[0]] = "";
	        else
	            b[p[0]] = decodeURIComponent(p[1].replace(/\+/g, " "));
	    }
	    return b;
    }
	
	function gotohome() {
		location.href="index.jsp";
	}
  </script>
	
</body>

</html>
