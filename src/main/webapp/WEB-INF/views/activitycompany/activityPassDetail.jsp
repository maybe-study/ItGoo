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

<link rel="stylesheet" href="css/activitystyle/activitystyle.css">
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
</style>
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
		<form method="post" name="activityacceptreject">
			<table class="table table-hover">
				<thead>
					<tr>
						<th>사용자 이름</th>
						<th>사용자 이메일</th>
						<th>사용자 전화번호</th>
						<th>액티비티 이름</th>
						<th>입양 신청중인 강아지 이름</th>
						<th>상태 수정</th>
					</tr>
				</thead>
				<tbody id="activitypassbody">
					
				</tbody>
			</table>
			</form>
		</div>

	</div>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
	<script>
		var passdetail = ${passdetail}
		//이거 리스트가 아닌데?
				
		console.log("passdetail=", passdetail);

		$.each(passdetail,function(idx, data) {
			console.log("data="+data);
							var $body = $("#activitypassbody");
							var $accept = $("#acceptactivity");
							var $reject = $("#rejectactivity");
							var $tr = $("<tr>").appendTo($body);
							$("<td>").append($("<input type='hidden' name='username' />").val(data.username)).text(data.username).appendTo($tr);
							$("<td>").text(data.useremail).appendTo($tr);
							$("<td>").text(data.phone).appendTo($tr);
							$("<td>").text(data.activityname).appendTo($tr);
							$("<td>").text(data.dogname).appendTo($tr);
							$("<td>").append($("<input type='submit' id='acceptbtn' class='acceptbtn' value='합격' />")).appendTo($tr);
							$("<td>").append($("<input type='submit' id='rejectbtn' class='rejectbtn' value='불합격' />")).appendTo($tr);

						});
		$("#acceptbtn").click(function(){
			$("form").attr("action","acceptbtn?${_csrf.parameterName}=${_csrf.token}");
		});
		$("#rejectbtn").click(function(){
			$("form").attr("action","rejectbtn?${_csrf.parameterName}=${_csrf.token}");
		});
	</script>
</body>
</html>