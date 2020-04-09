<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="UTF-8">
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<meta name="viewport"
	content="width=device-width, initial-scale=1, minimum-scale=1, maximum-scale=1">

  <link rel="stylesheet" href="css/swiper.min.css">
</head>
<body>
	<div class="maindiv">
		<div class="swiper-container">

			<div class="swiper-wrapper"></div>
			<!-- Add Arrows -->
			<div class="swiper-button-next"></div>
			<div class="swiper-button-prev"></div>
		</div>
		<div class="upper-form-div">
			<form action="activityreservationbtn?${_csrf.parameterName}=${_csrf.token}&dogid=${dogid}"
				name="activityreservationbtn" method="post" id="modalform">
				<input type="hidden" id="activitynum" name="activitynum" value="0" />
				<table class="form-table" style="margin:auto;">
					<tr id="activitynametr">
						<td>액티비티명:</td>
					</tr>

					<tr id="activityexplanationtr">
						<td>액티비티 설명:</td>
					</tr>

					<tr id="activitydatetr">
						<td>날짜:</td>

					</tr>
					<tr id="activitystarttr">
						<td>시작 시간:</td>

					</tr>
					<tr id="activitytimetr">
						<td>소요 시간:</td>

					</tr>
					<tr id="activitydogcnttr">
						<td>최대 참여 가능 마리수:</td>
					</tr>

					<tr id="activitypricetr">
						<td>가격:</td>
					</tr>
					<tr>
					<td>상담 및 문의</td>
					<tr id="companynametr">
						<td>업체 이름:</td>
					</tr>
					<tr id="companyphonetr">
					<td>업체 전화번호:</td>
					</tr>
					<tr id="companyemailtr">
					<td>업체 이메일:</td>
					</tr>
				</table>
				<div class="activityreservationclass" style="text-align: center">
					<input type="submit" id="reservationcativity" 
						class="myButton" value="액티비티 예약" />
				</div>

			</form>
		</div>

	</div>

	<script src="js/swiper.min.js"></script>
	<script>
		
		var listdetail = ${listdetail}
		console.log("listdetail=", listdetail);
		var $hidden = $("#activitynum").val(listdetail.activitynum);
		var $tran = $("#activitynametr");
		var $trae = $("#activityexplanationtr");
		var $trdate = $("#activitydatetr");
		var $trstart = $("#activitystarttr");
		var $trtime = $("#activitytimetr");
		var $trcnt = $("#activitydogcnttr");
		var $trap = $("#activitypricetr");
		var $trcn = $("#companynametr");
		var $trcp = $("#companyphonetr");
		var $trce = $("#companyemailtr");

		$("<td>").append($("<input type='hidden' name='activityname'>").val(listdetail.activityname))
		.text(listdetail.activityname)
		.appendTo($tran);
		$("<td>").text(listdetail.activityexplanation).appendTo($trae);
		$("<td>").text(listdetail.activitydate).appendTo($trdate);
		$("<td>").text(listdetail.activitystart).appendTo($trstart);
		$("<td>").text(listdetail.activitytime+ "시간 소요예정").appendTo($trtime);
		$("<td>").text(listdetail.activitydogcnt+"마리까지 가능").appendTo($trcnt);
		$("<td>").text(listdetail.activityprice+"").appendTo($trap);
		$("<td>").text(listdetail.companyname).appendTo($trcn);
		$("<td>").text(listdetail.companyphone).appendTo($trcp);
		$("<td>").text(listdetail.companyemail).appendTo($trce);
		
		
		$.each(listdetail.activitypics, function(idx, data) {
			console.log(data);
			var $picdiv = $('<div class="swiper-slide">').append(
					$("<img src='"+data+"' id='activityimg'/>"));
			$(".swiper-wrapper").append($picdiv);
		});
		var swiper = new Swiper('.swiper-container', {
			navigation : {
				nextEl : '.swiper-button-next',
				prevEl : '.swiper-button-prev',
			},
		});
	</script>
</body>
</html>