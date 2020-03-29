<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="kr">

<head>

<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">
<meta name="viewport" content="width=device-width, initial-scale=1, minimum-scale=1, maximum-scale=1">
<title>ITGOO-Enjoy ITGOO</title>

<!-- Font Awesome Icons -->
<link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet"
	type="text/css">
<link rel="stylesheet" href="css/swiper.min.css">
<!-- Google Fonts -->
<link
	href="https://fonts.googleapis.com/css?family=Merriweather+Sans:400,700"
	rel="stylesheet">
<link
	href='https://fonts.googleapis.com/css?family=Merriweather:400,300,300italic,400italic,700,700italic'
	rel='stylesheet' type='text/css'>

<!-- Plugin CSS -->
<link href="vendor/magnific-popup/magnific-popup.css" rel="stylesheet">

<!-- Theme CSS - Includes Bootstrap -->
<link href="css/creative.min.css" rel="stylesheet">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/paginationjs/2.1.4/pagination.css"/>  

</head>
<style>
	#logout {
		border: 0px transparent solid;
		outline: 0;
		color: rgba(255, 255, 255, .7);
		background-color: transparent;
		font-weight: 700;
		font-size: .9rem;
	}
	html, body {
      position: relative;
      height: 100%;
    }
    body {
      background: #eee;
      font-family: Helvetica Neue, Helvetica, Arial, sans-serif;
      font-size: 14px;
      color:#000;
      margin: 0;
      padding: 0;
    }
    .swiper-container {
      width: 100%;
      height: 100%;
    }
    .swiper-slide {
      text-align: center;
      font-size: 18px;
      background: #fff;

      /* Center slide text vertically */
      display: -webkit-box;
      display: -ms-flexbox;
      display: -webkit-flex;
      display: flex;
      -webkit-box-pack: center;
      -ms-flex-pack: center;
      -webkit-justify-content: center;
      justify-content: center;
      -webkit-box-align: center;
      -ms-flex-align: center;
      -webkit-align-items: center;
      align-items: center;
    }
	.auction-title {
		height: 50px;
		display: -webkit-box;
		display: -ms-flexbox;
		display: -webkit-flex;
		display: flex;
		-webkit-box-pack: center;
		-ms-flex-pack: center;
		-webkit-justify-content: center;
		justify-content: center;
		-webkit-box-align: center;
		-ms-flex-align: center;
		-webkit-align-items: center;
		align-items: center;
	}
	#bg{
		
		background: linear-gradient(to bottom,rgba(92,77,66,.8) 0,rgba(92,77,66,.8) 100%),url("img/bg-masthead.jpg");
		padding-top: 10rem;
    	padding-bottom: calc(30rem - 72px);
		background-position: center;
    	background-repeat: no-repeat;
    	background-attachment: scroll;
    	background-size: cover;
	}
	.card-label{
		width:200px;
	}
	#auctionexplain img{
		width:100%
	}
	.pagingdiv{
	margin-left: 45%;
	}
	.card{
	height: 350px;
	}
	#contents_layer{
	}

</style>
<body id="page-top">

	<!-- Navigation -->
	<nav class="navbar navbar-expand-lg navbar-light fixed-top py-3"
		id="mainNav">
		<div class="container">
			<a class="navbar-brand js-scroll-trigger" href="itgoo1main">Start
				ITGOO</a>
			<button class="navbar-toggler navbar-toggler-right" type="button"
				data-toggle="collapse" data-target="#navbarResponsive"
				aria-controls="navbarResponsive" aria-expanded="false"
				aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>
			<div class="collapse navbar-collapse" id="navbarResponsive">
				<ul class="navbar-nav ml-auto my-2 my-lg-0">
					<li class="nav-item"><a class="#page-top"
						href="#">맨위로</a></li>
					<li class="nav-item"><a class="nav-link js-scroll-trigger"
						href="#" onclick="document.getElementById('logout').submit();">로그아웃</a>
						<form id="logout" action="logout" method="POST">
							<input name="${_csrf.parameterName}" type="hidden"
								value="${_csrf.token}" />
						</form></li>
				</ul>
			</div>
		</div>
	</nav>






	<!-- Masthead -->
	<div id="articleView_layer">
	<div id="bg_layer"></div>
	<div id="contents_layer"></div>
</div>
	<header>
		<div class="container">
			
		</div>
	</header>
	
<!-- Portfolio Section -->
	<section class="h-100">
		<div class="container-fluid" id="bg">
			<div class="container row" style="margin:auto">
				<div class="card col-lg-12">
					<div class="card-body" id="auctionname" style="font-size:14px">
					 <table class="table table-hover">
      
                <thead>
                  <tr>
                    <th>그룹이름</th>
                    <th>주최자</th>
                    <th>위치 </th>
                    <th>최대 참여 강아지수</th>
                    <th>소모임 시작날짜</th>
                    <th>소모임 시작시간</th>
                    </tr>
                </thead>
                <tbody id="smallmeetinglist">
                  
                </tbody>
              </table>
					</div>
					<div class="pagingdiv"></div>
				</div>
			</div>
		</div>
	</section>

	

	







	<!-- Bootstrap core JavaScript -->
	<script src="vendor/jquery/jquery.min.js"></script>
	<script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

	<!-- Plugin JavaScript -->
	<script src="vendor/jquery-easing/jquery.easing.min.js"></script>
	<script src="vendor/magnific-popup/jquery.magnific-popup.min.js"></script>

	<!-- Custom scripts for this template -->
	<script src="js/creative.min.js"></script>
	<script src="//code.jquery.com/ui/1.11.4/jquery-ui.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/paginationjs/2.1.4/pagination.min.js"></script>
	
	<script>
	let container = $('.pagingdiv');
    container.pagination({
      
        dataSource:${smList} ,  //받아온 데이터
        pageSize: 10,
        callback: function (data, pagination) { //데이터 찍어주는 부분
           console.log("data=",data);
           temp=data;
           $("#smallmeetinglist").empty();
           $.each(data,function(idx, data){
        		var $body = $("#smallmeetinglist");
        		
        		var $tr = $("<tr>").appendTo($body);
        		$("<td>").append($("<a>").attr("href","#").attr("onclick",'articleView('+data.smallnumber+')').text(data.meetingname)).appendTo($tr);
        		$("<td>").text(data.id).appendTo($tr);
        		$("<td>").text(data.smalllocation).appendTo($tr);
        		$("<td>").text(data.maximumdog).appendTo($tr);
        		$("<td>").text(data.meetingdate).appendTo($tr);
        		$("<td>").text(data.time).appendTo($tr);
        		
        		});
        }
    
    })
    function articleView(smallnumber){
		var sldetail= ${sldetail}
		$("#articleView_layer").addClass('open');
		
		$.ajax({
			type:'get',
			url:"smalllistdetail",
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