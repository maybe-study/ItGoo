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

						<input type="hidden" name="_csrf" value="${_csrf.token}"><br>
						<div class="input-group mb-3">
							<div class="input-group-append">
								<span class="input-group-text"><i class="fas fa-user">이름</i></span>
							</div>
							<input id="inputId" type="text" name="username"
								class="form-control input_user" placeholder="username">
						</div>
						<div class="input-group mb-2">
							<div class="input-group-append">
								<span class="input-group-text"><i class="fas fa-key">이메일</i></span>
							</div>
							<input id="inputEmail" type="text" name="email"
								class="form-control input_pass" placeholder="email">
						</div>

						<input type="hidden" path="random" id="random" value="${random }" />

						<div class="d-flex justify-content-center mt-3 login_container">
							<button type="button" name="button" id="open"
								class="btn login_btn">아이디 찾기</button>
							<button id="button" name="button" type=button
								onClick="history.back();" class="btn login_btn">뒤로가기</button>
							<div id="findid"></div>
						</div>
					</form>
				</div>

			</div>
		</div>
	</div>
</body>
<script type="text/javascript">
	var formData = new FormData(document.getElementById('findid'));
	formData.append("inputId", inputId);
	formData.append("email", email);

	$.ajax({
		url : "/searchId",
		method : "post",
		processData : false,
		contentType : false,
		data : formData
	}).done((a)=>{
		toastr.success("아이디를 검색합니다", "서버 메시지");
		console.log(a);
	})
	.fail((xhr)=> printError(xhr, "정보 검색에 실패했습니다"));
});
</script>
</html>
