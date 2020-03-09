
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<style>
#main {
	margin-left: 40px;
}

div {
	background-color: #F2F2F2;
	width: 500px;
	color: black;
}

hr {
	color: gray;
	width: 400px;
}

.btn {
	border: none;
	font-size: 20px;
	color: white;
	background-color: #0B243B;
}

#checkid {
	text-align: center;
}

#boot {
	align-content: center;
}

#boot {
	font-size: 20px;
	color: black;
	margin: auto;
	background-color: #F2F2F2;
}

#middle {
	width: 600px;
	font-size: 20px;
	color: black;
	margin: auto;
	background-color: #F2F2F2;
}

#checkid {
	font-size: 20px;
	color: black;
	margin: auto;
	background-color: #F2F2F2;
}

#boot {
	align-content: center;
}

#middle {
	margin: auto;
}

#rogo {
	margin-left: 150px;
	width: 250px;
	height: 150px;
}
</style>

<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
</head>
<body>

	<div id="middle">
		<form action="memberjoin?${_csrf.parameterName}=${_csrf.token}" method="post">
			<div>
				<a href="main"><img id="rogo" alt="로고"
					src="img/portfolio/itgoo1004.png"></a>
			</div>
			<br>
			<div id="main">
				* 아이디 <br> <br> <input type="text" name="id"
					placeholder="아이디 입력" id="id" minlength="4" maxlength="20" required />
				<button type="button" class="btn" id="same">중복확인</button>
				<div id="checkid" style="color: red;"></div>
				<hr>
				* 비밀번호<br> <br> <input type="password" name="password"
					id="pw1" minlength="4" maxlength="20" placeholder="비밀번호 입력"
					required /> <span id="alert-success"
					style="display: none; color: blue;">비밀번호가 일치합니다.</span>
				<hr>
				* 비밀번호 확인 <br> <br> <input type="password"
					name="password2" id="pw2" minlength="4" maxlength="20"
					placeholder="비밀번호 재입력" required= /> <span id="alert-danger"
					style="display: none; color: #d92742;">비밀번호가 일치하지 않습니다.</span>
				<hr>
				* 이메일 <br> <br> <input type="text" name="useremail"
					placeholder="이메일 입력" required= />
				<hr>
				* 이름 <br> <br> <input type="text" name="username"
					placeholder="이름 입력" required= />
				<hr>
				*전화번호 <br> <br> <input type="text" name="phone"
					placeholder="전화번호 입력" required= />
				<hr>
				* 생년월일 <br> <br> <input type="text" name="birthday"
					placeholder="생년월일" required= />
				<hr>
				* enabled <select name="enabled">
					<option value="1">1</option>
					<option value="2">2</option>
				</select>

				<DIV ID="boot">
					<hr>
					<button type="submit" id="join" class="btn">회원가입</button>
					<button id="cancel" type="button" href="main화면으로 보내자" class="btn">취소</button>
				</DIV>
			</div>
		</form>

	</div>



</body>
<script type="text/javascript">
	$("#same").on("click", function() {
		let formData = new FormData();
		formData.append("id", $("#id").val());
	
		if($("#id").val()==""){
			$("#checkid").html("아이디를 입력해주세요");
			$("#id").focus();
			return false;
		}
		$.ajaxSetup({
			beforeSend : function(xhr) {
				xhr.setRequestHeader("${_csrf.headerName}", "${_csrf.token}");
			}
		});//먼저 보냄
		$.ajax({ // 에이작스 열고
			type : 'post', //타입은 get 
			url : "duplicateid", // restFul 방식
			data : formData,
			processData : false,
			contentType : false,

			//서블릿이 성공하면 다시 돌아오는것
			success : function(data) {
				console.log(data);
				if (data == "null" ) {
					
					console.log(data);
					$("#checkid").html($("#id").val()+ "는 사용가능한 아이디입니다.");

				} else {
					
				var result = JSON.parse(data);
					console.log("엘스로 빠지는중")
					console.log(typeof data)
					console.log(data);
					$("#checkid").html(result.id+"는 사용할수 없는 아이디입니다.");
					$("#id").val("")
				}

			}

			,
			error : function(error) {
				console.log(error);
			}

		});

	});

	$("#pw1").keyup(function() {
		var pwd1 = $("#pw1").val();
		var pwd2 = $("#pw2").val();
		if (pwd1 !== "" || pwd2 !== "") {
			if (pwd1 === pwd2) {
				$("#alert-success").css('display', 'inline-block');
				$("#alert-danger").css('display', 'none');
			} else {
				$("#alert-success").css('display', 'none');
				$("#alert-danger").css('display', 'inline-block');
			}
		}

	});

	$("#pw2").keyup(function() {
		var pwd1 = $("#pw1").val();
		var pwd2 = $("#pw2").val();
		if (pwd1 != "" || pwd2 != "") {
			if (pwd1 === pwd2) {
				$("#alert-success").css('display', 'inline-block');
				$("#alert-danger").css('display', 'none');
			} else {
				$("#alert-success").css('display', 'none');
				$("#alert-danger").css('display', 'inline-block');
			}
		}

	});
</script>
</html>