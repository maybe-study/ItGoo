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
						<td>그룹이름:</td>
					</tr>
					<tr  id="idtr">
						<td>주최자:</td>
					</tr>
					<tr id="maximumtr">
					<td>최대 참여 마릿 수:</td>
					</tr>
					<tr id="meetparticipatecnttr">
					<td>현재 참여 마릿 수:</td>
					</tr>
					<tr  id="meetingdatetr">
						<td>소모임 시작 날짜:</td>
					</tr>
					<tr id="timetr">
						<td>소모임 시작 시간:</td>
					</tr>
					<tr id="hiddentr">
					
					</tr>
				</table>
				<div class="deletebtnclass">
				
				
			</div>
			
</div>
		
		</div>
		</form>

	<script src="js/swiper.min.js"></script>
	<script>
	 
	var esdetail= ${esdetail}
	console.log ("esdetail=",esdetail);
		
		var $trmn = $("#meetingnametr");
		var $trid = $("#idtr");
		var $trmx = $("#maximumtr");
		var $trmp = $("#meetparticipatecnttr");
		var $trmd = $("#meetingdatetr");
		var $trtime = $("#timetr");
		var $hiddendiv = $("#hiddendiv");

		$("<td>").text(esdetail.meetingname).appendTo($trmn);
		$("<td>").text(esdetail.id).appendTo($trid);
		$("<td>").text(esdetail.maximumdog+"마리").appendTo($trmx);
		$("<td>").text(esdetail.meetparticipatecnt+"마리").appendTo($trmp);
		$("<td>").text(esdetail.meetingdate).appendTo($trmd);
		$("<td>").text(esdetail.time).appendTo($trtime);
		$(hiddendiv).append($("<input type='hidden' name='smallnumber' value='"+esdetail.smallnumber+"' />"));
		$(hiddendiv).append($("<input type='hidden' name='meetparticipatecnt' value='"+esdetail.meetparticipatecnt+"' />"));
		var $btn=$("<input type='submit' id='acceptbtn' class='acceptbtn' value='소모임 완료' />");
		var $btn1= $("<input type='submit' id='rejectbtn' class='rejectbtn' value='소모임 취소' />");
		$btn.click(function(){
			$("form").attr("action","successmeeting?${_csrf.parameterName}=${_csrf.token}");
			$("form").append($("<input type='hidden' name='id' value='"+data.id+"' />"))
		});
		$btn1.click(function(){
			$("form").attr("action","cancelmeeting?${_csrf.parameterName}=${_csrf.token}");
			$("form").append($("<input type='hidden' name='id' value='"+data.id+"' />"))
		});
		$("<td>").append($btn).appendTo($tr);
		$("<td>").append($btn1).appendTo($tr);
	</script>
</body>
</html>