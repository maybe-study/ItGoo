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
  <link rel="stylesheet" href="css/activitystyle/activitystyle.css">
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
		
    	<div class="swiper-wrapper">
      
      
    	</div>
    	<!-- Add Arrows -->
	    <div class="swiper-button-next"></div>
	    <div class="swiper-button-prev"></div>
  </div>
	<div class="upper-form-div">
			<form
				action="activitydeletebtn?${_csrf.parameterName}=${_csrf.token}"
				name="activitydeletebtn" method="post" id="modalform">
				<table class="table table-hover">
                <thead>
                  <tr>
                    <th>사용자 이름</th>
                    <th>액티비티 활동</th>
                    <th>액티비티 시작 날짜 </th>
                    <th>액티비티 시작 시간</th>
                    <th>액티비티 진행 및 활동 시간</th>
                    <th>참여가능한 최대 마릿 수</th>
                    </tr>
                </thead>
                <tbody id="activitypassbody">
                  
                </tbody>
              </table>
				<div class="deletebtnclass">
				<input type="submit" id="deletebtn" class="deletebtn"
							value="액티비티 삭제" />
			</div>
			
			</form>
</div>
		
		</div>

	<script src="js/swiper.min.js"></script>
	<script>
	 
	var detail= ${detail}
	console.log ("detail=",detail);
		
		var $tran = $("#activitynametr");
		var $trap = $("#activitypricetr");
		var $trad = $("#activitydatetr");
		var $tras = $("#activitystarttr");

		$("<td>").append($("<input name='activityname'>").val(detail.activityname)).appendTo($tran);
		$("<td>").text(detail.activityprice).appendTo($trap);
		$("<td>").text(detail.activitydate).appendTo($trad);
		$("<td>").text(detail.activitystart).appendTo($tras);
		$.each(detail.activitypics,function(idx,data){
			console.log(data);
			var $picdiv= $('<div class="swiper-slide">').append($("<img src='"+data+"' id='activityimg''/>"));
			$(".swiper-wrapper").append($picdiv);
		});
		var swiper = new Swiper('.swiper-container', {
		      navigation: {
		        nextEl: '.swiper-button-next',
		        prevEl: '.swiper-button-prev',
		      },
		    });
	</script>
</body>
</html>