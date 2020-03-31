<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="UTF-8">
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<meta name="viewport" content="width=device-width, initial-scale=1, minimum-scale=1, maximum-scale=1">

  <!-- Link Swiper's CSS -->
  <link rel="stylesheet" href="css/swiper.min.css">
  <link rel="stylesheet" href="css/client/clientstyle.css">
<style>
/* .maindiv {
	border: 3px solid black;
	text-align: center;
} */

#modalform{

font-weight: bolder;
font-size: 20px;
margin: auto;
}
.form-table{
margin: auto;}
.upper-form-div{
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
    .card{
	height: 350px;
	}
</style>
</head>
<body>
	<form method="post" name="meetingsuccesscancel">
	<div class="maindiv">
	<div class="upper-form-div">
	<div id="hiddendiv"></div>
				<table class= "form-table">
					<tr  id="meetingnametr">
					</tr>
					<tr id="roadtr">
					
					</tr>
					
					</tr>
				</table>
				<div class="deletebtnclass">
				
				
			</div>
			<div id="map" style="width: 100%; height: 350px;"></div>
									<script type="text/javascript"
										src="//dapi.kakao.com/v2/maps/sdk.js?appkey=04cfe5f1eb29416b59e4313a6acea9b8&libraries=services"></script>
								</div>
</div>
		
		</div>
		</form>

	<script src="js/swiper.min.js"></script>
	<script>
	 
	var msmdetail= ${msmdetail}
	console.log ("msmdetail=",msmdetail);
		
		var $trmn = $("#meetingnametr");
		$("<td>").append($("<input type='text' name='smalllocation' id='roadAddress' value='"+msmdetail.smalllocation+"' />")).appendTo($trmn);
		
		$(hiddendiv).append($("<input type='hidden' name='smallnumber' value='"+msmdetail.smallnumber+"' />"));
		$(hiddendiv).append($("<input type='hidden' name='meetparticipatecnt' value='"+msmdetail.meetparticipatecnt+"' />"));
		/* var $btn=$("<input type='submit' id='acceptbtn' class='acceptbtn' value='소모임 완료' />");
		var $btn1= $("<input type='submit' id='rejectbtn' class='rejectbtn' value='소모임 취소' />"); */
		/* $btn.click(function(){
			$("form").attr("action","completesmall?${_csrf.parameterName}=${_csrf.token}");	
		});
		$btn1.click(function(){
			$("form").attr("action","cancelsmall?${_csrf.parameterName}=${_csrf.token}");
		});
		 */
		/* if(esdetail.status == 0){
			$("<td>").text("시작 전").appendTo($trstatus);
			$btn.appendTo($delclass);
			$btn1.appendTo($delclass);
		}else if(esdetail.status == 1){
			$("<td>").text("완료 후 해산").appendTo($trstatus);
		}else {
			$("<td>").text("소모임 취소").appendTo($trstatus);
		} */
		function mapCreate(roadAddr) {
		       
		       
		       var container = document.getElementById('map');
		      var options = {
		         center: new kakao.maps.LatLng(latitude, longitude),
		         level: 3
		      };
		      
		      var coords = new kakao.maps.LatLng(
		            latitude,
		            longitude);
		      
		      
		      var map = new kakao.maps.Map(container, options);
		      
		      // 결과값으로 받은 위치를 마커로 표시합니다
		        var marker = new kakao.maps.Marker({
		            map: map,
		            position: coords
		        });

		        // 인포윈도우로 장소에 대한 설명을 표시합니다
		        var infowindow = new kakao.maps.InfoWindow({
		            content: '<div style="width:150px;text-align:center;padding:6px 0;">' +
		                roadAddr +
		                '</div>'
		        });
		        infowindow
		            .open(map, marker);

		        // 지도의 중심을 결과값으로 받은 위치로 이동시킵니다
		        map.setCenter(coords); 
		   }	 
		 
		 
	</script>
</body>
</html>