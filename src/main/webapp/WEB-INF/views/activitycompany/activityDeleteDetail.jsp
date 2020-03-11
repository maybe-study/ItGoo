<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<style>
.maindiv{
border: 3px solid black;
text-align: center;
}
.div1{
float: left;
background-color: gray;
}
.div2{
display: inline-block; 
background-color: yellow;
}
</style>
</head>
<body>
	<div class="maindiv">
		<div class="div1" id="activitypics">사진</div>
		<div class="div2">
		<table>
			<tr id="activitynametr">
				<td>액티비티명</td>
				
			</tr>
			<tr id="activitypricetr">
				<td>가격</td>
				
			</tr>
			<tr id="activitydatetr">
				<td>날짜 </td>
				
			</tr>
			<tr id="activitystarttr">
				<td>시작 시간</td>
				
			</tr>


		</table>
		</div>

	</div>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
	<script>
	$.each(${adtList},function(idx,data){
		var $tran = $("#activitynametr");
		var $trap = $("#activitypricetr");
		var $trad = $("#activitydatetr");
		var $tras = $("#activitystarttr");
		console.log("activitypic="+data.activitypic);
		$("#activitypics").append($("<img src="+data.activitypic+"alt='activitypics'/>"));
		$("<td>").text(data.activityname).appendTo($tran);
		$("<td>").text(data.activityprice).appendTo($trap);
		$("<td>").text(data.activitydate).appendTo($trad);
		$("<td>").text(data.activitystart).appendTo($tras);
	});
	</script>
</body>
</html>