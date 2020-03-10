<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>회원가입</title>

<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script
	src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>


</head>

<style>
table {
	padding-left: 200px;
}

#h3text {
	margin-left: 50%;
}

#div {
	text-align: center;
	width: 530px;
	padding: 10px;
	padding-left: 30%;
}

input {
	border-left: none;
	border-right: none;
	border-top: none;
	height: 30px;
	font-size: 90%;
	widh: 100px;
}

#url1 {
	height: 23px;
	width: 160px;
}

#url2 {
	height: 23px;
	width: 160px;
}

.btn {
	background: #93C4EF;
	border-radius: 0.5em;
	padding: 5px 20px;
	color: white;
	cursor: pointer;
}

#join_background {
	width: 800px;
	background: rgba(204, 204, 204, 0.25);
}

#id_check {
	width: 80px;
	height: 50px;
	border-radius: 0.5em;
	background: #77CBE3;
	color: white;
	border: solid 1px #77CBE3;
	cursor: pointer;
	padding: 10px;
}

#profile {
	padding-left: 20px;
}

#mail {
	width: 180px;
}

#logo {
	width: 355px;
	height: 150px;
	display: block;
	margin: 0px auto;
	margin-left: 42%;
}

#userbirth {
	font-size: 20px;
}

.box {
	padding-left: 40px;
}

#select {
	width: 200px; /* 원하는 너비설정 */
	padding: .3em .2em; /* 여백으로 높이 설정 */
	font-family: inherit; /* 폰트 상속 */
	background:
		url(https://farm1.staticflickr.com/379/19928272501_4ef877c265_t.jpg)
		no-repeat 95% 50%; /* 네이티브 화살표 대체 */
	border: 1px solid #999;
	border-radius: 0px; /* iOS 둥근모서리 제거 */
	-webkit-appearance: none; /* 네이티브 외형 감추기 */
	-moz-appearance: none;
	appearance: none;
}

#inBorder {
	width: 40px;
	padding: .2em .05em;
	border: 1px solid #999;
	font-family: inherit;
	background:
		url(https://farm1.staticflickr.com/379/19928272501_4ef877c265_t.jpg)
		no-repeat 80% 40%;
	border-radius: 0px;
	-webkit-appearance: none;
	-moz-appearance: none;
	appearance: none;
}
</style>

<body>


	<header>
		<div id="header">
			<a href="index.jsp"><img id="logo" src="img/ItGoo!logo.png"></a>
		</div>
	</header>


	<div id="div">
		<h3 id="h3text">회원가입</h3>
		<div id="join_background">
			<form action="index?${_csrf.parameterName}=${_csrf.token}"
				onsubmit="return check()" name=frm id="frm" method="post"
				enctype="multipart/form-data">
				<table>
					<tr>
						<td>&nbsp;</td>
					</tr>
					<tr>
						<td>업체명</td>
						<td><input type="text" name="companyname" maxlength="30"
							id="companyname" required></td>
					</tr>
					<tr>
						<td>&nbsp;</td>
					</tr>

					<tr>
						<td>대표자명</td>
						<td><input type="text" name="companyboss" maxlength="30"
							id="name" required></td>
					</tr>
					<tr>
						<td>&nbsp;</td>
					</tr>
					<tr>
						<td>ID</td>
						<td><input type="text" name="companyid" maxlength="20"
							id="id" required></td>
						<td><input id="id_check" type="button" value="중복확인"></td>
						
					</tr>

					<tr>
						<td><div id="idcheck"></div></td>
					</tr>
					<tr>
						<td>&nbsp;</td>
					</tr>

					<tr>
						<td>PW</td>
						<td><input type="password" name="password" maxlength="30"
							id="pw" required></td>
					</tr>
					<tr>
						<td><span id="alert-success"
							style="display: none; color: blue;">비밀번호가 일치합니다.</span></td>
					</tr>


					<tr>
						<td>&nbsp;</td>
					</tr>

					<tr>
						<td>PW Check</td>
						<td><input type="password" name="pwcheck" maxlength="30"
							id="pwcheck" required></td>
						<td id='check'></td>
					</tr>
					<tr>
						<td><span id="alert-danger"
							style="display: none; color: #d92742;">비밀번호가 일치하지 않습니다.</span></td>
					</tr>
					<tr>
						<td>&nbsp;</td>
					</tr>

					<tr>
						<td>업체 전화번호</td>
						<td><input type="text" name="companyphone" maxlength="11"
							id="tel" required></td>
					</tr>

					<tr>
						<td>&nbsp;</td>
					</tr>

					<tr>

						<td>업체 Email&nbsp;</td>
						<td><input type="text" name="companyemail" id="mail"
							maxlength="30" required></td>

					</tr>

					<tr>
						<td>&nbsp;</td>

					</tr>
					<tr>
						<td>업체 주소</td>
						<td><input id="map1" type="button"
							onclick="sample4_execDaumPostcode('companylocation')"
							value="우편번호 찾기"> <input type="text" id="companylocation"
							placeholder="도로명주소" name="companylocation" required></td>
					</tr>

					<tr>
						<td>&nbsp;</td>
					</tr>


					<tr>
						<td>사업자등록사진</td>
						<td><input type="file" id="profile" class="box"
							name="companycardfile" accept=".jpg,.jpeg,.png,.gif,.bmp"></td>
					</tr>

					<tr>
						<td>&nbsp;</td>
					</tr>

					<tr>
						<td>사업체사진&nbsp;</td>
						<td><input class="box" type="file" name="files" multiple
							id="files" accept=".jpg,.jpeg,.png,.gif,.bmp"> <input
							type="hidden" id="fileCheck" name="file_Check" value="0" /></td>
					</tr>


					<tr>
						<td>&nbsp;</td>
					</tr>
					<tr>

						<td>선택사항</td>
						<td><select class="select" id="select" name="companykind"
							style="font-size: 20px;">
								<option value="0">선택</option>
								<option value="1">보호소</option>
								<option value="2">업체</option>

						</select></td>
					</tr>
					<!-- /////사용자///// -->

					<tr>
						<td>&nbsp;</td>
					</tr>
					<tr>
						<td>사용자 이름</td>
						<td><input type="text" name="username" maxlength="30"
							id="username" required></td>
					</tr>

					<tr>
						<td>&nbsp;</td>
					</tr>

					<tr>
						<td>사용자 전화번호</td>
						<td><input type="text" name="phone" maxlength="11"
							id="usertel" required></td>
					</tr>
					<tr>
						<td>&nbsp;</td>
					</tr>

					<tr>
						<td>사용자 Email</td>
						<td><input type="text" name="useremail" id="usermail1"
							maxlength="30" required></td>
					</tr>

					<tr>
						<td>&nbsp;</td>
					</tr>

					<tr>
						<td>사용자 주소</td>

						<td><input id="map2" type="button"
							onclick="sample4_execDaumPostcode('useraddress')" value="우편번호 찾기">
							<input type="text" id="useraddress" placeholder="도로명주소"
							name="useradderess" required></td>



					</tr>

					<tr>
						<td>&nbsp;</td>
					</tr>

					<tr>
						<td>사용자 생년월일</td>
						<td><input type="text" name="inyear" size="1"
							style="font-size: 20px;" maxlength="4" required />년 <select
							name="birthday" id="inBorder1" class="inBorder"
							style="font-size: 20px;">
								<option value="1">01
								<option value="2">02
								<option value="3">03
								<option value="4">04
								<option value="5">05
								<option value="6">06
								<option value="7">07
								<option value="8">08
								<option value="9">09
								<option value="10">10
								<option value="11">11
								<option value="12">12
						</select> 월 <select name="birthselect" id="inBorder2" class="inBorder"
							style="font-size: 20px;">
								<option value="1">01
								<option value="2">02
								<option value="3">03
								<option value="4">04
								<option value="5">05
								<option value="6">06
								<option value="7">07
								<option value="8">08
								<option value="9">09
								<option value="10">10
								<option value="11">11
								<option value="12">12
								<option value="13">13
								<option value="14">14
								<option value="15">15
								<option value="16">16
								<option value="17">17
								<option value="18">18
								<option value="19">19
								<option value="20">20
								<option value="21">21
								<option value="22">22
								<option value="23">23
								<option value="24">24
								<option value="25">25
								<option value="26">26
								<option value="27">27
								<option value="28">28
								<option value="29">29
								<option value="30">30
								<option value="31">31
						</select> 일 &nbsp;
					</tr>
					<tr>
						<td>&nbsp;</td>
					</tr>

					<tr>
						<td><button id="hag" class="btn" type="submit">회원가입</button></td>

						<td><button class="btn" formaction="index">취소</button></td>
					</tr>
					<tr>
						<td>&nbsp;</td>
					</tr>

				</table>
			</form>

		</div>

	</div>

</body>
<script>
	//본 예제에서는 도로명 주소 표기 방식에 대한 법령에 따라, 내려오는 데이터를 조합하여 올바른 주소를 구성하는 방법을 설명합니다.
	function sample4_execDaumPostcode(addrid) {
		new daum.Postcode({
			oncomplete : function(data) {
				var roadAddr = data.roadAddress; // 도로명 주소 변수

				document.getElementById(addrid).value = roadAddr;

			}
		}).open();
	}

	$("#id_check").on("click", function() {
	      let formData = new FormData();
	      formData.append("id", $("#id").val());

	      if ($("#id").val() == "") {
	         $("#idcheck").html("아이디를 입력해주세요");
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
	         url : "xduplicateid", // restFul 방식
	         data : formData,
	         processData : false,
	         contentType : false,

	         //서블릿이 성공하면 다시 돌아오는것
	         success : function(data) {
	            console.log(data);
	            if (data == "null") {

	               console.log(data);
	               $("#idcheck").html($("#id").val() + "는 사용가능한 아이디입니다.");

	            } else {

	               var result = JSON.parse(data);
	               console.log("엘스로 빠지는중")
	               console.log(typeof data)
	               console.log(data);
	               $("#idcheck").html(result.id + "는 사용할수 없는 아이디입니다.");
	               $("#id").val("")
	            }

	         }

	         ,
	         error : function(error) {
	            console.log(error);
	         }

	      });

	   });
	
	$("#pw").keyup(function() {
	      var pwd1 = $("#pw").val();
	      var pwd2 = $("#pwcheck").val();
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

	   $("#pwcheck").keyup(function() {
	      var pwd1 = $("#pw").val();
	      var pwd2 = $("#pwcheck").val();
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