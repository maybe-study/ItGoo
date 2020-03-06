<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<title>Find MyAccount</title>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css"
	integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO"
	crossorigin="anonymous">

<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.6.1/css/all.css"
	integrity="sha384-gfdkjb5BdAXd+lj+gudLWI+BXq4IuLW5IT+brZEZsLFm++aCMlF1V92rMkPaX4PP"
	crossorigin="anonymous">
<link
	href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css"
	rel="stylesheet" id="bootstrap-css">
<script
	src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/toastr.min.js"></script>
<script
	src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<head>
<style type="text/css">
body, html {
	margin: 0;
	padding: 0;
	height: 100%;
	background: #60a3bc !important;
}

.user_card {
	height: 400px;
	width: 1000px;
	margin-top: auto;
	margin-bottom: auto;
	background: #f39c12;
	position: relative;
	display: flex;
	justify-content: center;
	flex-direction: column;
	padding: 10px;
	box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0
		rgba(0, 0, 0, 0.19);
	-webkit-box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0
		rgba(0, 0, 0, 0.19);
	-moz-box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0
		rgba(0, 0, 0, 0.19);
	border-radius: 5px;
}

.brand_logo_container {
	position: absolute;
	height: 170px;
	width: 170px;
	top: -75px;
	border-radius: 50%;
	background: #60a3bc;
	padding: 10px;
	text-align: center;
}

.brand_logo {
	height: 150px;
	width: 150px;
	border-radius: 50%;
	border: 2px solid white;
}

.form_container {
	margin-top: 100px;
}

.login_btn {
	width: 100%;
	background: #c0392b !important;
	color: white !important;
}

.login_btn1 {
	width: 100%;
	background: #c0392b !important;
	color: white !important;
}

.login_btn:focus {
	box-shadow: none !important;
	outline: 0px !important;
}

.login_container {
	padding: 0 2rem;
}

.input-group-text {
	background: #c0392b !important;
	color: white !important;
	border: 0 !important;
	border-radius: 0.25rem 0 0 0.25rem !important;
}

.input_user, .input_pass {
	box-shadow: none !important;
	outline: 0px !important;
	width: 1600px;
}

#inputId {
	width: 800px;
}

#p1{
font-weight: 900;
font-family: "Font Awesome 5 Free";
color:white !important;
display:table-cell;
-webkit-font-smoothing: antialiased;
}
</style>
</head>
<!--Coded with love by Mutiullah Samim-->
<body>
	<div class="container h-100">
		<div class="d-flex justify-content-center h-100">
			<div class="user_card">
				<div class="d-flex justify-content-center">
					<div class="brand_logo_container">
						<img src="img/portfolio/itgoo2.PNG" class="brand_logo" alt="Logo">
					</div>
				</div>
				<div class="d-flex justify-content-center form_container">
					<form action="findaccount" method="post" onsubmit="return check()">
						<p id="p1">이메일을 통한 아이디 찾기</p>
						<input type="hidden" name="_csrf" value="${_csrf.token}"><br>
						<div class="input-group mb-3">
							<div class="input-group-append">
								<span class="input-group-text"><i class="fas fa-user">이름</i></span>
							</div>
							<input id="username" type="text" name="username"
								class="form-control input_user" placeholder="username">
						</div>
						<div class="input-group mb-2">
							<div class="input-group-append">
								<span class="input-group-text"><i class="fas fa-key">이메일</i></span>
							</div>
							<input id="useremail" type="text" name="useremail"
								class="form-control input_pass" placeholder="email">
						</div>

						<input type="hidden" path="random" id="random" value="${random }" />

						<div class="d-flex justify-content-center mt-3 login_container">
							<button type="button" name="button" id="open"
								class="btn login_btn">아이디 찾기</button>
							<button id="button" name="button" type=button
								onClick="history.back();" class="btn login_btn">뒤로가기</button>
						</div>

						<div id="findid" class="btn login_btn1"></div>

					</form>
				</div>

			</div>
		</div>
	</div>
</body>
<script type="text/javascript">

	$("#open").on("click", function() {
		let formData = new FormData();
		// join.jsp에서는 <form>을 바로 FormData로 변경했다
		// 하지만 이부분에서는 비밀번호나 프사가 있을 수도 없을 수도 있으므로 바로 변경할 수 없다
		// <input>의 값을 하나씩 append할 경우 한글이 깨진다
		// 이 문제를 해결하려면 자바스크립트에서 UTF-8로 인코딩해서 보내고 스프링에서 디코딩해야 한다
		// formData.append("irum", encodeURIComponent($("#irum").val()));
		formData.append("username", $("#username").val());
		formData.append("useremail", $("#useremail").val());
		$.ajaxSetup({
			beforeSend : function(xhr) {
				xhr.setRequestHeader("${_csrf.headerName}", "${_csrf.token}");
			}
		});//먼저 보냄
		$.ajax({ // 에이작스 열고
			type : 'post', //타입은 get 
			url : "searchid", // restFul 방식
			data : formData,
			processData : false,
			contentType : false,

			//서블릿이 성공하면 다시 돌아오는것
			success : function(data) {
				console.log(data);
				var result = JSON.parse(data);
				if (result.id === null) {
					console.log(data);
					$("#findid") + "는 존재하지 않는 아이디 입니다."

				} else {
					console.log(typeof data)
					console.dir(data);
					

					$("#findid").html("찾는 아이디는 : " + result.id);

				}
			}

			,
			error : function(error) {
				console.log(error);
			}

		});

	});
	
	$("#findid").hide();
	$("#open").on("click", function divshow() {
		$("#findid").show();
	});
</script>
</html>
