<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<script
	src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<head>
<title>My Awesome Login Page</title>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css"
	integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO"
	crossorigin="anonymous">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.6.1/css/all.css"
	integrity="sha384-gfdkjb5BdAXd+lj+gudLWI+BXq4IuLW5IT+brZEZsLFm++aCMlF1V92rMkPaX4PP"
	crossorigin="anonymous">
<link
	href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css"
	rel="stylesheet" id="bootstrap-css">
<script
	src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<style type="text/css">
body, html {
	margin: 0;
	padding: 0;
	height: 100%;
	/* background: #60a3bc !important; */
	background-image: url('img/dog_g.jpg');
	background-size: cover;	
	color:white;
}

.user_card {
	height: 400px;
	width: 350px;
	margin-top: auto;
	margin-bottom: auto;
	background-color:black;
	background-color: rgba(0, 0, 0, 0.4);
	
	position: relative;
	display: flex;
	justify-content: center;
	flex-direction: column;
	padding: 10px;
	box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 1.2), 0 6px 20px 0
		rgba(0, 0, 0, 0.19);
	-webkit-box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 1.2), 0 6px 20px 0
		rgba(0, 0, 0, 0.19);
	-moz-box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 1.2), 0 6px 20px 0
		rgba(0, 0, 0, 0.19);
	border-radius: 10px;
}

.brand_logo_container {
	position: absolute;
	height: 170px;
	width: 170px;
	top: -75px;
	border-radius: 50%;
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
	/* background: #c0392b !important; */
	color: black !important;
}

.login_btn:focus {
	box-shadow: none !important;
	outline: 0px !important;
}

.login_container {
	padding: 0 2rem;
}

.input-group-text {
	/* background: #c0392b !important; */
	color: white !important;
	border: 0 !important;
	border-radius: 0.25rem 0 0 0.25rem !important;
}

.input_user, .input_pass:focus {
	box-shadow: none !important;
	outline: 0px !important;
}

.custom-checkbox .custom-control-input:checked ~.custom-control-label::before
	{
	background-color: #c0392b !important;
}
.fas{
	color:black;
}
.row{
	height:100%
}
.d-flex justify-content-center{
	background-color:white;
	opacity: 10%
}

</style>
</head>
<!--Coded with love by Mutiullah Samim-->
<body>
    <ul id="ui" class="nav nav-tabs">
        <li class="menu-kind">
            <a class="nav-link active"  href="#tab1" data-toggle="tab">이메일을 통한 아이디 찾기</a>
        </li>
        <li class="menu-kind">
            <a class="nav-link" href="#tab2" data-toggle="tab">휴대폰을 통한 아이디 찾기</a>
        </li>

    </ul>
     <div id="all">
    <div class="tab-content px-1 pt-2">
       
           <div class="tab-pane active" id="tab1">
            <div class="container h-100" style="margin-top: 12%; float:left;">
                <div class="d-flex justify-content-center h-100">
                    <div class="user_card">
                        <div class="d-flex justify-content-center">
                            <div class="brand_logo_container">
                               <img class="brand_logo" src="img/portfolio/itgoo2.PNG" alt="Logo">
                            </div>
                        </div>
                        <div class="d-flex justify-content-center form_container">
                            <form>
                                <p id="p1">이메일을 통한 아이디 찾기</p>
                                <input type="hidden" name="_csrf" value="${_csrf.token}"><br>
                                <div class="input-group mb-3">
                                    <div class="input-group-append">
                                        <span class="input-group-text"><i class="fas fa-user">이름</i></span>
                                    </div>
                                    <input id="username" type="text" name="username" class="form-control input_user" placeholder="username">
                                </div>
                                <div class="input-group mb-2">
                                    <div class="input-group-append">
                                        <span class="input-group-text"><i class="fas fa-key">이메일</i></span>
                                    </div>
                                    <input id="useremail" type="text" name="useremail" class="form-control input_pass" placeholder="email">
                                </div>

                                <input type="hidden" path="random" id="random" value="${random }" />

                                <div class="d-flex justify-content-center mt-3 login_container">
                                    <button type="button" name="button" id="open" class="btn login_btn">아이디 찾기</button>
                                    <button id="button" name="button" type=button onClick="history.back();" class="btn login_btn">뒤로가기</button>
                                </div>

                                <div id="findid" class="btn login_btn1"></div>

                            </form>
                        </div>

                    </div>
                </div>
            </div>
        </div>
       
           
             <div class="tab-pane" id="tab2">
            <div class="container h-100" style="margin-top: 12%; float:left;">
                <div class="d-flex justify-content-center h-100">
                    <div class="user_card">
                        <div class="d-flex justify-content-center">
                            <div class="brand_logo_container">
                                <img class="brand_logo" src="img/portfolio/itgoo2.PNG" alt="Logo">
                            </div>
                        </div>
                        <div class="d-flex justify-content-center form_container">
                            <form>
                                <p id="p1">등록한 번호로 아이디 찾기</p>
                                <input type="hidden" name="_csrf" value="${_csrf.token}"><br>
                                <div class="input-group mb-3">
                                    <div class="input-group-append">
                                        <span class="input-group-text"><i class="fas fa-user">이름</i></span>
                                    </div>
                                    <input id="username1" type="text" name="username" class="form-control input_user" placeholder="username">
                                </div>
                                <div class="input-group mb-2">
                                    <div class="input-group-append">
                                        <span class="input-group-text"><i class="fas fa-key">전화번호</i></span>
                                    </div>
                                    <input id="useremail1" type="text" name="useremail" class="form-control input_pass" placeholder="email">
                                </div>

                                <input type="hidden" path="random" id="random" value="${random }" />

                                <div class="d-flex justify-content-center mt-3 login_container">
                                    <button type="button" name="button" id="open1" class="btn login_btn">아이디 찾기</button>
                                    <button id="button" name="button" type=button onClick="history.back();" class="btn login_btn">뒤로가기</button>
                                </div>

                                <div id="findid1" class="btn login_btn1"></div>

                            </form>
                        </div>

                    </div>
                </div>
            </div>
        </div>
    </div>
    </div>
</body>
<script type="text/javascript">
	$("#findid").hide();
	$("#open").on("click", function() {
		let formData = new FormData();
		formData.append("username", $("#username").val());
		formData.append("useremail", $("#useremail").val());
		if ($("#username").val() == '') {
			alert('이름을 입력하세요');
			$("#username").focus();
			return false;
		}
		if ($("#useremail").val() == '') {
			alert('이메일을 입력하세요');
			$("#useremail").focus();
			return false;
		}
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
				if (result.id == null) {
					console.log(data);

					$("#findid").html(formData.username + "는 존재하지 않는 아이디 입니다.")

				} else {
					console.log(typeof data)
					console.dir(data);
					$("#findid").show();
					$("#findid").html("찾는 아이디는 : " + result.id);

				}
			}

			,
			error : function(error) {
				console.log(error);
			}

		});

	});

	$("#findid1").hide();
	$("#open1").on(
					"click",
					function() {
						let formData = new FormData();
						formData.append("username", $("#username1").val());
						formData.append("phone", $("#useremail1").val());
						if ($("#username1").val() == '') {
							alert('이름을 입력하세요');
							$("#username").focus();
							return false;
						}
						if ($("#useremail1").val() == '') {
							alert('전화번호를 입력하세요');
							$("#useremail").focus();
							return false;
						}
						$.ajaxSetup({
							beforeSend : function(xhr) {
								xhr.setRequestHeader("${_csrf.headerName}",
										"${_csrf.token}");
							}
						});//먼저 보냄
						$
								.ajax({ // 에이작스 열고
									type : 'post', //타입은 get 
									url : "searchidphone", // restFul 방식
									data : formData,
									processData : false,
									contentType : false,

									//서블릿이 성공하면 다시 돌아오는것
									success : function(data) {
										console.log(data);
										var result = JSON.parse(data);
										if (result.id === null) {
											console.log(data);
											$("#findid1")
													+ ($("#username1").val() + "님의 등록된 정보가 없습니다.");

										} else {
											console.log(typeof data)
											console.dir(data);
											$("#findid1").show();
											$("#findid1").html(
													"찾는 아이디는 : " + result.id);

										}
									}

									,
									error : function(error) {
										console.log(error);
									}

								});

					});
</script>
</html>
