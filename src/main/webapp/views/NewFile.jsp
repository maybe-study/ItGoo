<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script
	src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>

<script type="text/javascript"
		src="//dapi.kakao.com/v2/maps/sdk.js?appkey=04cfe5f1eb29416b59e4313a6acea9b8&libraries=services">
</script>
</head>
<body>
		<input type="text" id="sample4_postcode" placeholder="ì°í¸ë²í¸" style="margin-left:-66px;">
		<input type="button" onclick="sample4_execDaumPostcode()" value="ì°í¸ë²í¸ ì°¾ê¸°"><br>
		<input type="text" id="sample4_roadAddress" placeholder="ëë¡ëªì£¼ì" name="useraddress">
		
		
		
		<span id="guide" style="color: #999; display: none"></span>
		<div id="map" style="width:100%;height:350px;"></div>
		
		<script>
		//ë³¸ ìì ììë ëë¡ëª ì£¼ì íê¸° ë°©ìì ëí ë²ë ¹ì ë°ë¼, ë´ë ¤ì¤ë ë°ì´í°ë¥¼ ì¡°í©íì¬ ì¬ë°ë¥¸ ì£¼ìë¥¼ êµ¬ì±íë ë°©ë²ì ì¤ëªí©ëë¤.
		function sample4_execDaumPostcode() {
		new daum.Postcode(
				{
					oncomplete : function(data) {
						var roadAddr = data.roadAddress; // ëë¡ëª ì£¼ì ë³ì
						var extraRoadAddr = ''; // ì°¸ê³  í­ëª© ë³ì
						if (data.bname !== '' && /[ë|ë¡|ê°]$/g.test(data.bname)) {
							extraRoadAddr += data.bname;
						}
						if (data.buildingName !== '' && data.apartment === 'Y') {
							extraRoadAddr += (extraRoadAddr !== '' ? ', '
									+ data.buildingName : data.buildingName);
						}
						if (extraRoadAddr !== '') {
							extraRoadAddr = ' (' + extraRoadAddr + ')';
						}
						// ì°í¸ë²í¸ì ì£¼ì ì ë³´ë¥¼ í´ë¹ íëì ë£ëë¤.
						document.getElementById('sample4_postcode').value = data.zonecode;
						document.getElementById("sample4_roadAddress").value = roadAddr;
						document.getElementById("sample4_jibunAddress").value = data.jibunAddress;
						// ì°¸ê³ í­ëª© ë¬¸ìì´ì´ ìì ê²½ì° í´ë¹ íëì ë£ëë¤.
						if (roadAddr !== '') {
							document.getElementById("sample4_extraAddress").value = extraRoadAddr;
						} else {
							document.getElementById("sample4_extraAddress").value = '';
						}
						var guideTextBox = document.getElementById("guide");
						// ì¬ì©ìê° 'ì í ìí¨'ì í´ë¦­í ê²½ì°, ìì ì£¼ìë¼ë íìë¥¼ í´ì¤ë¤.
						if (data.autoRoadAddress) {
							var expRoadAddr = data.autoRoadAddress
									+ extraRoadAddr;
							guideTextBox.innerHTML = '(ìì ëë¡ëª ì£¼ì : '
									+ expRoadAddr + ')';
							guideTextBox.style.display = 'block';
						} else if (data.autoJibunAddress) {
							var expJibunAddr = data.autoJibunAddress;
							guideTextBox.innerHTML = '(ìì ì§ë² ì£¼ì : '
									+ expJibunAddr + ')';
							guideTextBox.style.display = 'block';
						} else {
							guideTextBox.innerHTML = '';
							guideTextBox.style.display = 'none';
						}
					var mapContainer = document.getElementById('map'), // ì§ëë¥¼ íìí  div
				    mapOption = {
				        center: new kakao.maps.LatLng(33.450701, 126.570667), // ì§ëì ì¤ì¬ì¢í
				        level: 3 // ì§ëì íë ë ë²¨
				    };
					// ì§ëë¥¼ ìì±í©ëë¤
					var map = new kakao.maps.Map(mapContainer, mapOption);
					// ì£¼ì-ì¢í ë³í ê°ì²´ë¥¼ ìì±í©ëë¤
					var geocoder = new kakao.maps.services.Geocoder();
					// ì£¼ìë¡ ì¢íë¥¼ ê²ìí©ëë¤
					geocoder.addressSearch(roadAddr, function(result, status) {
					    // ì ìì ì¼ë¡ ê²ìì´ ìë£ëì¼ë©´
					     if (status === kakao.maps.services.Status.OK) {
					        var coords = new kakao.maps.LatLng(result[0].y, result[0].x);
					        // ê²°ê³¼ê°ì¼ë¡ ë°ì ìì¹ë¥¼ ë§ì»¤ë¡ íìí©ëë¤
					        var marker = new kakao.maps.Marker({
					            map: map,
					            position: coords
					        });
					        // ì¸í¬ìëì°ë¡ ì¥ìì ëí ì¤ëªì íìí©ëë¤
					        var infowindow = new kakao.maps.InfoWindow({
					            content: '<div style="width:150px;text-align:center;padding:6px 0;">'+roadAddr+'</div>'
					        });
					        infowindow.open(map, marker);
					        // ì§ëì ì¤ì¬ì ê²°ê³¼ê°ì¼ë¡ ë°ì ìì¹ë¡ ì´ëìíµëë¤
					        map.setCenter(coords);
					    }
					});
					}
				}).open();
	}
		
	</script>
</body>
</html>