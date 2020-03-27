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

	<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<link rel="stylesheet" href="css/activitystyle/timepicker-addon.css" />
<link rel="stylesheet" href="//code.jquery.com/ui/1.11.4/themes/smoothness/jquery-ui.css" />
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
	.address-div{
	text-align: center;
	}
	#maximumdog{
	width: 40px;
	height: 30px;
	}
	#meetparticipatecnt{
	width: 40px;
	height: 30px;
	}

</style>
<body id="page-top">

	<!-- Navigation -->
	<nav class="navbar navbar-expand-lg navbar-light fixed-top py-3"
		id="mainNav">
		<div class="container">
			<a class="navbar-brand js-scroll-trigger" href="#page-top">Start
				ITGOO</a>
			<button class="navbar-toggler navbar-toggler-right" type="button"
				data-toggle="collapse" data-target="#navbarResponsive"
				aria-controls="navbarResponsive" aria-expanded="false"
				aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>
			<div class="collapse navbar-collapse" id="navbarResponsive">
				<ul class="navbar-nav ml-auto my-2 my-lg-0">
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
	<header>
		<div class="container">
			
		</div>
	</header>
	
<!-- Portfolio Section -->
	<section class="h-100">
	<form action="regismallmeeting?${_csrf.parameterName}=${_csrf.token}" id="regismallmeeting" name="regismallmeeting" method="post"
							enctype="multipart/form-data">
		<div class="container-fluid" id="bg">
			<div class="container row" style="margin:auto">
				<div class="card col-lg-12">
					<div class="card-body" id="auctionname" style="font-size:20px">
					<label class="card-label" >그룹이름</label>
					<input type="text" name="meetingname" />
					</div>
				</div>
				<div class="card col-lg-12">
					<div class="card-body" id="auctionstart">
					<label class="card-label">최대 강아지</label>
					<select name="maximumdog" id="maximumdog">
						<option value="1">1</option>
						<option value="2">2</option>
						<option value="3">3</option>
						<option value="4">4</option>
						<option value="5">5</option>
					</select>
					</div>
				</div>
				<div class="card col-lg-12">
					<div class="card-body" id="auctionstart">
					<label class="card-label">주최자 강아지 마릿 수</label>
					<select name="meetparticipatecnt" id="meetparticipatecnt">
						<option value="1">1</option>
						<option value="2">2</option>
						<option value="3">3</option>
						<option value="4">4</option>
						<option value="5">5</option>
					</select>
					</div>
				</div>
				<div class="card col-lg-12">
					<div class="card-body" id="owner">
					<label class="card-label">시작 시간</label>
					<input type="text" id="datepicker" class="datepicker" name="meetingdate"  required/>
					<input type="text" id="timepicker" class="timepicker" name="time" required/>
					</div>
				</div>
				<div class="card col-lg-12">
					<div class="card-body" id="lowprice">
					<label class="card-label">위치 등록</label><br>
					<div class="address-div">
					<input type="text" id="sample4_postcode" placeholder="우편번호">
									&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <input type="button"
										onclick="sample4_execDaumPostcode()" value="우편번호 찾기">
									<br> <input type="text" id="sample4_roadAddress"
										placeholder="도로명주소" name="smalllocation"> <input
										type="text" id="sample4_jibunAddress" placeholder="지번주소">
									<br> <span id="guide" style="color: #999; display: none"></span>
									<input type="text" id="sample4_detailAddress"
										placeholder="상세주소"> <input type="text"
										id="sample4_extraAddress" placeholder="참고항목"> <br>
									<div id="map" style="width: 100%; height: 350px;"></div>
									<script type="text/javascript"
										src="//dapi.kakao.com/v2/maps/sdk.js?appkey=04cfe5f1eb29416b59e4313a6acea9b8&libraries=services"></script>
					</div>
					</div>
				</div>
				<div class="card col-lg-12">
					<input type="submit" class="regismallmeetingbtn" value="소모임 등록" />
					
				</div>
				<br>
				<br>
				
				
			</div>
		</div>
		</form>
	</section>

	

	







	<!-- Bootstrap core JavaScript -->
	<script src="vendor/jquery/jquery.min.js"></script>
	<script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

	<!-- Plugin JavaScript -->
	<script src="vendor/jquery-easing/jquery.easing.min.js"></script>
	<script src="vendor/magnific-popup/jquery.magnific-popup.min.js"></script>

	<!-- Custom scripts for this template -->
	<script src="js/creative.min.js"></script>
		<script type="text/javascript"
		src="lib/bootstrap-datepicker/js/bootstrap-datepicker.js"></script>
	<script type="text/javascript"
		src="lib/bootstrap-daterangepicker/date.js"></script>
	<script type="text/javascript"
		src="lib/bootstrap-daterangepicker/daterangepicker.js"></script>
	<script type="text/javascript"
		src="lib/bootstrap-datetimepicker/js/bootstrap-datetimepicker.js"></script>
	<script type="text/javascript"
		src="lib/bootstrap-daterangepicker/moment.min.js"></script>
	<script type="text/javascript"
		src="lib/bootstrap-timepicker/js/bootstrap-timepicker.js"></script>
	<script src="lib/advanced-form-components.js"></script>
	<script src="//code.jquery.com/ui/1.11.4/jquery-ui.js"></script>
	<script src="lib/time-select/timepicker-addon.js"></script>
	<script
	src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
	<script>
	$(function() {
		//모든 datepicker에 대한 공통 옵션 설정
		$.datepicker
				.setDefaults({
					dateFormat : 'yy-mm-dd' //Input Display Format 변경
					,
					showOtherMonths : true //빈 공간에 현재월의 앞뒤월의 날짜를 표시
					,
					showMonthAfterYear : true //년도 먼저 나오고, 뒤에 월 표시
					,
					changeYear : true //콤보박스에서 년 선택 가능
					,
					changeMonth : true //콤보박스에서 월 선택 가능                
					,
					showOn : "both" //button:버튼을 표시하고,버튼을 눌러야만 달력 표시 ^ both:버튼을 표시하고,버튼을 누르거나 input을 클릭하면 달력 표시  
					,
					buttonImage : "http://jqueryui.com/resources/demos/datepicker/images/calendar.gif" //버튼 이미지 경로
					,
					buttonImageOnly : true //기본 버튼의 회색 부분을 없애고, 이미지만 보이게 함
					,
					buttonText : "선택" //버튼에 마우스 갖다 댔을 때 표시되는 텍스트                
					,
					yearSuffix : "년" //달력의 년도 부분 뒤에 붙는 텍스트
					,
					monthNamesShort : [ '1', '2', '3', '4', '5', '6', '7',
							'8', '9', '10', '11', '12' ] //달력의 월 부분 텍스트
					,
					monthNames : [ '1월', '2월', '3월', '4월', '5월', '6월',
							'7월', '8월', '9월', '10월', '11월', '12월' ] //달력의 월 부분 Tooltip 텍스트
					,
					dayNamesMin : [ '일', '월', '화', '수', '목', '금', '토' ] //달력의 요일 부분 텍스트
					,
					dayNames : [ '일요일', '월요일', '화요일', '수요일', '목요일', '금요일',
							'토요일' ] //달력의 요일 부분 Tooltip 텍스트
					,
					minDate : "-1M" //최소 선택일자(-1D:하루전, -1M:한달전, -1Y:일년전)
					,
					maxDate : "+1Y" //최대 선택일자(+1D:하루후, -1M:한달후, -1Y:일년후)                    
					,
					defualtDate : "String"
				});
		$.timepicker.setDefaults({
			// timepicker 설정
			timeFormat : 'HH:mm:ss',
			controlType : 'select',
			oneLine : true,
		});
		$("#timepicker").timepicker();
		$("#timepicker").timepicker('setTime', new Date());

		//input을 datepicker로 선언
		$("#datepicker").datepicker();

		//From의 초기값을 오늘 날짜로 설정
		$('#datepicker').datepicker('setDate', 'today'); //(-1D:하루전, -1M:한달전, -1Y:일년전), (+1D:하루후, -1M:한달후, -1Y:일년후)
	});
	function showmap(roadAddr) {
		var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
		mapOption = {
			center : new kakao.maps.LatLng(33.450701, 126.570667), // 지도의 중심좌표
			level : 3
		// 지도의 확대 레벨
		};

		// 지도를 생성합니다    
		var map = new kakao.maps.Map(mapContainer, mapOption);

		// 주소-좌표 변환 객체를 생성합니다
		var geocoder = new kakao.maps.services.Geocoder();

		// 주소로 좌표를 검색합니다
		geocoder
				.addressSearch(
						roadAddr,
						function(result, status) {

							// 정상적으로 검색이 완료됐으면 
							if (status === kakao.maps.services.Status.OK) {

								var coords = new kakao.maps.LatLng(
										result[0].y, result[0].x);

								// 결과값으로 받은 위치를 마커로 표시합니다
								var marker = new kakao.maps.Marker({
									map : map,
									position : coords
								});

								// 인포윈도우로 장소에 대한 설명을 표시합니다
								var infowindow = new kakao.maps.InfoWindow(
										{
											content : '<div style="width:150px;text-align:center;padding:6px 0;">'
													+ roadAddr + '</div>'
										});
								infowindow.open(map, marker);

								// 지도의 중심을 결과값으로 받은 위치로 이동시킵니다
								map.setCenter(coords);
							}
						});

	}
	function myMarkers(map) {
		console.log("getAdresses");
		$
				.ajax({
					type : "GET",
					url : 'getadds',
					success : function(json) {
						var listData = [];
						var geocoder = new kakao.maps.services.Geocoder();
						$.each(json, function(index, item) {
							console.log(item);
							var data = {
								title : item.branchname,
								groupAddress : item.companylocation
							};
							listData.push(data);

						})
						console.log(listData);
						var imageSrc = "./img/marker.png";
						var imageSize = new kakao.maps.Size(50, 50);
						// 마커 이미지를 생성합니다    
						var markerImage = new kakao.maps.MarkerImage(
								imageSrc, imageSize);
						for (var i = 0; i < listData.length; i++) {
							// 주소로 좌표를 검색합니다
							geocoder
									.addressSearch(
											listData[i].groupAddress,
											function(result, status) {
												// 정상적으로 검색이 완료됐으면 
												if (status === kakao.maps.services.Status.OK) {

													var coords = new kakao.maps.LatLng(
															result[0].y,
															result[0].x);

													// 결과값으로 받은 위치를 마커로 표시합니다
													var marker = new kakao.maps.Marker(
															{
																map : map,
																position : coords,
																image : markerImage,
															});
												}
											});
						}
					},
					error : function(error) {
						console.log(error);
					},
					dataType : 'json'
				});

	}

	//본 예제에서는 도로명 주소 표기 방식에 대한 법령에 따라, 내려오는 데이터를 조합하여 올바른 주소를 구성하는 방법을 설명합니다.
	function sample4_execDaumPostcode() {
		new daum.Postcode(
				{
					oncomplete : function(data) {
						var roadAddr = data.roadAddress; // 도로명 주소 변수
						var extraRoadAddr = ''; // 참고 항목 변수
						if (data.bname !== ''
								&& /[동|로|가]$/g.test(data.bname)) {
							extraRoadAddr += data.bname;
						}
						if (data.buildingName !== ''
								&& data.apartment === 'Y') {
							extraRoadAddr += (extraRoadAddr !== '' ? ', '
									+ data.buildingName : data.buildingName);
						}
						if (extraRoadAddr !== '') {
							extraRoadAddr = ' (' + extraRoadAddr + ')';
						}

						// 우편번호와 주소 정보를 해당 필드에 넣는다.
						document.getElementById('sample4_postcode').value = data.zonecode;
						document.getElementById("sample4_roadAddress").value = roadAddr;
						document.getElementById("sample4_jibunAddress").value = data.jibunAddress;

						// 참고항목 문자열이 있을 경우 해당 필드에 넣는다.
						if (roadAddr !== '') {
							document.getElementById("sample4_extraAddress").value = extraRoadAddr;
						} else {
							document.getElementById("sample4_extraAddress").value = '';
						}

						var guideTextBox = document.getElementById("guide");
						// 사용자가 '선택 안함'을 클릭한 경우, 예상 주소라는 표시를 해준다.
						if (data.autoRoadAddress) {
							var expRoadAddr = data.autoRoadAddress
									+ extraRoadAddr;
							guideTextBox.innerHTML = '(예상 도로명 주소 : '
									+ expRoadAddr + ')';
							guideTextBox.style.display = 'block';

						} else if (data.autoJibunAddress) {
							var expJibunAddr = data.autoJibunAddress;
							guideTextBox.innerHTML = '(예상 지번 주소 : '
									+ expJibunAddr + ')';
							guideTextBox.style.display = 'block';
						} else {
							guideTextBox.innerHTML = '';
							guideTextBox.style.display = 'none';
						}

						//======================================================================================================================================================

						var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
						mapOption = {
							center : new kakao.maps.LatLng(33.450701,
									126.570667), // 지도의 중심좌표
							level : 3
						// 지도의 확대 레벨
						};
						// 지도를 생성합니다    
						var map = new kakao.maps.Map(mapContainer,
								mapOption);
						// 주소-좌표 변환 객체를 생성합니다
						var coords = new kakao.maps.LatLng(0, 0);
						var geocoder = new kakao.maps.services.Geocoder();

						//ajax를 통해 지점들의 주소를 가져오고 맵에 표시하는 함수
						myMarkers(map); //맵을 같이 써야함

						// 검색한 주소로 좌표를 검색하고 마커로 표시하는 부분
						geocoder
								.addressSearch(
										roadAddr,
										function(result, status) {
											// 정상적으로 검색이 완료됐으면 
											if (status === kakao.maps.services.Status.OK) {

												var coords = new kakao.maps.LatLng(
														result[0].y,
														result[0].x);

												// 결과값으로 받은 위치를 마커로 표시합니다
												var marker = new kakao.maps.Marker(
														{
															map : map,
															position : coords
														});

												// 인포윈도우로 장소에 대한 설명을 표시합니다
												var infowindow = new kakao.maps.InfoWindow(
														{
															content : '<div style="width:150px;text-align:center;padding:6px 0;">'
																	+ roadAddr
																	+ '</div>'
														});
												infowindow
														.open(map, marker);
												// 지도의 중심을 결과값으로 받은 위치로 이동시킵니다
												map.setCenter(coords);
											}
										});

					}

				}).open();
	}
	</script>
	</body>

</html>