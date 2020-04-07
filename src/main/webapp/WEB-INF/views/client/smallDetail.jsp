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
				<div class="card col-lg-6">
					<div class="card-body" id="auctionname">
						<h5 class="card-title">지도</h5>
							<div id="map" style="width: 100%; height: 350px;"></div>
							<br>
							<br>
						<h5 class="card-title">소모임 정보</h5>
						<div>
							<table>
								<tr>
								<td style="width:150px;">
									신청자
								</td>
								<td id="id">
								</td>
								</tr>
								<tr>
								<td>
								위치
								</td>
								<td id="smalllocation">
								</td>
								</tr>
								<tr>
								<td>
								이름
								</td>
								<td id="meetingname">
								</td>
								</tr>
								<tr>
								<td>
								참여 강아지
								</td>
								<td id="smalldogcnt">
								</td>
								
								</tr>
								<tr>
								<td>
								날짜
								</td>
								<td id="meetingdate">
								</td>
								</tr>
								<tr>
								<td>
								시간
								</td>
								<td id="time">
								</td>
								</tr>
							</table>
						
						</div>
					</div>
				</div>
				<div class="card col-lg-6" >
					<div class="card-body" >
					<h5 class="card-title">채팅</h5>
					<div style="height:500px; overflow: auto;" id="chat">
						
						
					</div>
						<form onsubmit="return ajChat()">
						<div class="row" style="text-align: center">
							<div class="col-lg-9 col-sm-10" style="padding:5px">
								<input type="text" id="input" style="height:30px;width:100%;" />
							</div>
							<div class="col-lg-3 col-sm-2">
								<button class="btn btn-primary" type="button" onclick="ajChat()">전송</button>
							</div>
						</div>
						</form>
					
					</div>
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
	<script type="text/javascript"
		src="//dapi.kakao.com/v2/maps/sdk.js?appkey=04cfe5f1eb29416b59e4313a6acea9b8&libraries=services"></script>
		<!-- Custom scripts for this template -->
	<script src="js/stomp.js"></script>
	<script src="js/sockjs.js"></script>
	<script>
	var beforeChat=${scList};
	console.log(${sldetail});
	var sDetail=${sldetail};
	$('#id').append(sDetail.id);
	$('#smalllocation').append(sDetail.smalllocation);
	$('#meetingname').append(sDetail.meetingname);
	$('#smalldogcnt').append(sDetail.smalldogcnt+"/"+sDetail.maximumdog);
	$('#time').append(sDetail.time);
	$('#meetingdate').append(sDetail.meetingdate);
	
	var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
    mapOption = {
        center: new kakao.maps.LatLng(33.450701, 126.570667), // 지도의 중심좌표
        level: 3 // 지도의 확대 레벨
    };

	// 지도를 생성합니다    
	var map = new kakao.maps.Map(mapContainer, mapOption); 
	
	// 주소-좌표 변환 객체를 생성합니다
	var geocoder = new kakao.maps.services.Geocoder();
	
	// 주소로 좌표를 검색합니다
	geocoder.addressSearch((sDetail.smalllocation), function(result, status) {
	
	    // 정상적으로 검색이 완료됐으면 
	     if (status === kakao.maps.services.Status.OK) {
	
	        var coords = new kakao.maps.LatLng(result[0].y, result[0].x);
	
	        // 결과값으로 받은 위치를 마커로 표시합니다
	        var marker = new kakao.maps.Marker({
	            map: map,
	            position: coords
	        });
	
	        // 인포윈도우로 장소에 대한 설명을 표시합니다
	        var infowindow = new kakao.maps.InfoWindow({
	            content: '<div style="width:150px;text-align:center;padding:6px 0;">'+sDetail.smalllocation+'<br></div>'
	        });
	        infowindow.open(map, marker);
	
	        // 지도의 중심을 결과값으로 받은 위치로 이동시킵니다
	        map.setCenter(coords);
	    } 
	});    
	
	
	</script>
	<script>
		//소켓 통신
		//소켓
	var socket = new SockJS("./auction");
	var stompClient = Stomp.over(socket);
	stompClient.connect({}, function(frame) {
		console.log("연결")
		//채팅 구독
		stompClient.subscribe('/topic/smallmeetingchat/'+sDetail.smallnumber,function(msg){
			console.log("토픽에서 전송된 메시지"+msg.body);
			var chat=JSON.parse(msg.body);
			addChat(chat);
		});
		
		
	});
	function disconnect(){
		if(stompClient!=null){
			stompClient.disconnect();;

			console.log("Disconnected");
		}
	}
	
	window.onbeforeunload = function (e) {
		disconnect();
	};
		
	function ajChat(){
		var chat=$('#input').val();
		stompClient.send("/smallmeetingchat",{},JSON.stringify({smallnumber:sDetail.smallnumber, id:sDetail.id,chat:chat}));
		$('#input').val("");
		return false;
	};
		
	
	//이전 채팅
	console.log("before:",beforeChat);
	$.each(beforeChat,function(idx,chat){
		addChat(chat);
		

	})
	
	
	//채팅 추가 메소드
	function addChat(chat){
		
		$('#chat').append(chat.id+":"+chat.chat+"<br>");
		var chatDiv=document.getElementById("chat");
		chatDiv.scrollTop=chatDiv.scrollHeight;
	};
	</script>
	</body>

</html>