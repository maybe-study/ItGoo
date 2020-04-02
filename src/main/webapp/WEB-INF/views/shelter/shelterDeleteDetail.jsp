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
    #activityimg{
    width:600px;
    height:600px;
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
			
</div>
		
		</div>

	<script src="js/swiper.min.js"></script>
	<script>
	 
	var detail= ${detail}
	console.log ("detail=",detail);
		$.each(detail.dogpics,function(idx,data){
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