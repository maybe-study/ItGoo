<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!doctype html>
<html lang="UTF-8">
<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<!-- Bootstrap CSS -->
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">
	
<title>액티비티 리스트</title>
</head>
<body>
	<nav class="navbar navbar-expand-lg navbar-light bg-light">
		<a class="navbar-brand" href="index2.jsp">ItGoo</a>
		<button class="navbar-toggler" type="button" data-toggle="collapse"
			data-target="#navbarSupportedContent"
			aria-controls="navbarSupportedContent" aria-expanded="false"
			aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>
		<div class="collapse navbar-collapse" id="navbarSupportedContent">

		</div>
	</nav>
	<div class="container" id="container">
		<div class="row" id="row">
			
		</div>
		</div>
	<!-- Optional JavaScript -->
	<!-- jQuery first, then Popper.js, then Bootstrap JS -->
	<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
		integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
		crossorigin="anonymous">
		
	</script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"
		integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1"
		crossorigin="anonymous">
		
	</script>
	<script
		src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"
		integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM"
		crossorigin="anonymous">
		
	</script>
	<script>
	var atList = ${atList};
	console.log("atList=",atList);
	
	$.each(atList, function(idx,data){
		console.log("data="+data);
		var $activitydetailbtn = $("<input type='button' id= />")
		var $h3tag = $("<h3 class='card-title'>").text(data.activityname);
		var $explanation = $("<p class='card-text'>").text(data.activityexplanation);
		var $price = $("<p class='price'>").text(data.activityprice);
		var $img = $("<img src="+data.activitypic+" alt='activitypic' id='listimg' />");
		var $classcardbodydiv = $("<div class='card-body'>").append($h3tag).append($explanation).append($price);
		var $classcarddiv = $("<div class='card'>").append($img).append($classcardbodydiv);
		var $classcoldiv = $("<div class='col-3'>").append($classcarddiv);
		var $classrowdiv = $("#row");
		$classcoldiv.appendTo($classrowdiv);
		
	})
	</script>
</body>
</html>
