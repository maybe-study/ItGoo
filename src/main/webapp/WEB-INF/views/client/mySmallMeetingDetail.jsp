<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="UTF-8">
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<meta name="viewport"
	content="width=device-width, initial-scale=1, minimum-scale=1, maximum-scale=1">

<!-- Link Swiper's CSS -->
<link rel="stylesheet" href="css/swiper.min.css">
<link rel="stylesheet" href="css/client/clientstyle.css">
<link href="lib/font-awesome/css/font-awesome.css" rel="stylesheet" />
<style>
/* .maindiv {
	border: 3px solid black;
	text-align: center;
} */
#modalform {
	font-weight: bolder;
	font-size: 20px;
	margin: auto;
}

.form-table {
	margin: auto;
}

.upper-form-div {
	text-align: center;
	font-weight: bolder;
	font-size: 20px;
}

html, body {
	position: relative;
	height: 100%;
}
/* body {
    border: 3px solid black;
      background: #eee;
      font-family: Helvetica Neue, Helvetica, Arial, sans-serif;
      font-size: 14px;
      color:#000;
      margin: 0;
      padding: 0;
    } */
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

.card {
	height: 350px;
}

h3 {
	font-size: 40px;
}
#tablediv{
display: inline-block;
}
#btndiv{
display: inline-block;
float: right;
}
.myButton {
	box-shadow:inset 0px 0px 0px 0px #ffffff;
	background:linear-gradient(to bottom, #ffffff 5%, #e9e9e9 100%);
	background-color:#ffffff;
	border-radius:6px;
	border:1px solid #ffe0ff;
	display:inline-block;
	cursor:pointer;
	color:#615f61;
	font-family:Arial;
	font-size:20px;
	font-weight:bold;
	padding:5px 25px;
	text-decoration:none;
	text-shadow:6px 4px 3px #c9c9c9;
}
.myButton:hover {
	background:linear-gradient(to bottom, #e9e9e9 5%, #ffffff 100%);
	background-color:#e9e9e9;
}
.myButton:active {
	position:relative;
	top:1px;
}
#backbtn{
margin-top: 53px;
margin-right: 50px;
}

</style>
</head>
<body>
	<form method="post" name="meetingsuccesscancel">
	
		<div id="tablediv">
			<table>
				<tr>
					<td><h3>
							<i class="fa fa-angle-right"></i> 내가 신청한 소모임
						</h3></td>

				</tr>
			</table>
		</div>
		<div id="btndiv">
			<input type="button" onclick="history.back()" id="backbtn" class="myButton" value="돌아가기" />
		</div>
		<div class="maindiv">
			<div class="upper-form-div">
				<div id="hiddendiv"></div>
				<table class="form-table">
					<tr id="meetingnametr">
					</tr>
					<tr id="roadtr">

					</tr>

					</tr>
				</table>
				<div class="deletebtnclass"></div>

				<div id="map" style="width: 100%; height: 350px;"></div>
			</div>

		</div>
	</form>
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
	<script src="//code.jquery.com/ui/1.11.4/jquery-ui.js"></script>
	<script
		src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
	<script type="text/javascript"
		src="//dapi.kakao.com/v2/maps/sdk.js?appkey=04cfe5f1eb29416b59e4313a6acea9b8&libraries=services"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/paginationjs/2.1.4/pagination.min.js"></script>
	<script>
	$.each(${msmdList},function(idx,data){
		var $trmn = $("#meetingnametr");
		$("<td>").append($("<input type='hidden' name='smalllocation' id='roadAddr' value='"+data.smalllocation+"' />")).appendTo($trmn);
	});
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
geocoder.addressSearch(($('#roadAddr').val()), function(result, status) {

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
            content: '<div style="width:150px;text-align:center;padding:6px 0;">'+($('#roadAddr').val())+'<br></div>'
        });
        infowindow.open(map, marker);

        // 지도의 중심을 결과값으로 받은 위치로 이동시킵니다
        map.setCenter(coords);
    } 
});    
	</script>
</body>
</html>