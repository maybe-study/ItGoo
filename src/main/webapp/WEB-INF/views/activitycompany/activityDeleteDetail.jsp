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
		<div class="div1" id="picdetail"></div>
		<div class="div2">
		<form action="activitydeletebtn?${_csrf.parameterName}=${_csrf.token}" name="activitydeletebtn" method="post">
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
			<tr>
			<td><input type="submit" data-num='0' id="deletebtn" class="deletebtn"  value="액티비티 삭제" />
		</td>
		</tr>
		</table> 
		</form>
		</div>

	</div>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
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
			var $picdiv= $("#picdetail");
			console.log("aaaaaaa=",detail.activitypics);
			$("<img src="+detail.activitypics[idx]+" alt='detailpics' />").appendTo($picdiv);
			});
	</script>
</body>
</html>