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

<script
	src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>


<script>
	 //$(function() {
		// 회원 가입 처리
	/* 	$('#hag').click(function(e) {
							e.preventDefault();
							if ($("#companyname").val() == '') {
								alert('업체이름을 입력하세요');
								$("#companyname").focus();
								return false;
							}
							if ($("#name").val() == '') {
								alert('대표명을 입력하세요');
								$("#name").focus();
								return false;
							}
							if ($("#id").val() == '') {
								alert('아이디 입력하세요');
								$("#id").focus();
								return false;
							}
							if ($("#pw").val() == '') {
								alert('비밀번호를 입력하세요');
								$("#pw").focus();
								return false;
							}
							if ($("#pwcheck").val() == '') {
								alert('비밀번호를 다시 한번 더 입력하세요');
								$("#pwcheck").focus();
								return false;
							}
							if ($("#pw").val() !== $("#pwcheck").val()) {
								alert('비밀번호를 둘다 동일하게 입력하세요');
								return false;
							}
							var telphone = $('#tel').val()
							if ($("#tel").val() == '') {
								alert('휴대폰 번호를 입력하세요');
								$("#tel").focus();
								return false;
							} else {
								var regNumber = /^[0-9]*$/;
								if (!regNumber.test(telphone)) {
									alert('업체전화번호에 문자열이 들어갔는지 확인부탁드립니다.')
									$("#tel").focus();
									return false;
								}
							}

							var email = $('#mail').val();
							if (email == '') {
								alert('이메일을 입력하세요');
								$("#mail").focus();
								return false;
							} else {
								var emailRegex = /^([a-zA-Z0-9_.+-])+\@(([a-zA-Z0-9-])+\.)+([a-zA-Z0-9]{2,4})+$/;
								if (!emailRegex.test(email)) {
									alert('이메일 주소가 유효하지 않습니다. ex)abc@gmail.com');
									$("#mail").focus();
									return false;
								}
							}
							if ($("#companylocation").val() == '') {
								alert('우편번호 찾기를 클릭후 정보를 입력해주세요');
								$("#companylocation").focus();
								return false;
							}

							if ($("#profile1").val() == '') {
								alert('사업자등록사진을 첨부해주세요');
								$("#profile1").focus();
								return false;

							}
							if ($("#profile2").val() == '') {
								alert('사업체을 첨부해주세요');
								$("#profile2").focus();
								return false;

							}
							if ($("#profile3").val() == '') {
								alert('사업체을 첨부해주세요');
								$("#profile3").focus();
								return false;

							}
							if ($("#profile4").val() == '') {
								alert('사업체을 첨부해주세요');
								$("#profile4").focus();
								return false;

							}

							if ($("#select").val() == '') {
								alert('');
								$("#select").focus();
								return false;

							}
							if ($("#username").val() == '') {
								alert('사용자이름을 입력해주세요');
								$("#username").focus();
								return false;
							}

							var usertell = $('#usertel').val()
							if ($("#usertel").val() == '') {
								alert('사용자 전화번호입력을 해주세요');
								$("#usertel").focus();
								return false;
							} else {
								var regNumber = /^[0-9]*$/;
							if (!regNumber.test(usertell)) {
									alert('업체전화번호에 문자열이 들어갔는지 확인부탁드립니다.')
									$("#usertel").focus();
									return false;
								}
							}

							var email1 = $('#usermail1').val();
							if (email1 == '') {
								alert('이메일을 입력하세요');
								$("#usermail1").focus();
								return false;
							} else {
								var emailRegex = /^([a-zA-Z0-9_.+-])+\@(([a-zA-Z0-9-])+\.)+([a-zA-Z0-9]{2,4})+$/;
								if (!emailRegex.test(email1)) {
									alert('이메일 주소가 유효하지 않습니다. ex)abc@gmail.com');
									$("#usermail1").focus();
									return false;
								}
							}

							if ($("#useraddress").val() == '') {
								alert('우편번호 찾기를 클릭후 사용자주소를 입력해주세요');
								$("#useraddress").focus();
								return false;
							}
							var birth = $('#inBorder').val()
							if ($("#inBorder").val() == '') {
								alert('사용자 생년월일을 입력해주세요');
								$("#inBorder").focus();
								return false;
							}
							return true;
						});
	});  */
</script>
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
	padding-left: 90px;
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
</head>
<body>


	<header>
		<div id="header">
			<a href="/"><img id="logo" src="img/ItGoo!logo.png"></a>
		</div>
	</header>


	<div id="div">
		<h3 id="h3text">회원가입</h3>
		<div id="join_background">
			<form action="companyjoin?${_csrf.parameterName}=${_csrf.token}" name= frm id="frm" method="post" enctype="multipart/form-data">
				<table>
					<tr>
						<td>&nbsp;</td>
					</tr>
					<tr>
						<td>업체명</td>
						<td><input type="text" name="companyname" maxlength="30"
							id="companyname"></td>
					</tr>
					<tr>
						<td>&nbsp;</td>
					</tr>

					<tr>
						<td>대표자명</td>
						<td><input type="text" name="companyboss" maxlength="30"
							id="name"></td>
					</tr>
					<tr>
						<td>&nbsp;</td>
					</tr>
					<tr>
						<td>ID</td>
						<td><input type="text" name="companyid" maxlength="20"
							id="id"></td>
						<td><input id="id_check" type="button" value="중복확인"></td>
					</tr>

					<tr>
						<td>&nbsp;</td>
					</tr>

					<tr>
						<td>PW</td>
						<td><input type="password" name="password" maxlength="30"
							id="pw"></td>
					</tr>

					<tr>
						<td>&nbsp;</td>
					</tr>

					<tr>
						<td>PW Check</td>
						<td><input type="password" name="pwcheck" maxlength="30"
							id="pwcheck"></td>
						<td id='check'></td>
					</tr>

					<tr>
						<td>&nbsp;</td>
					</tr>

					<tr>
						<td>업체 전화번호</td>
						<td><input type="text" name="companyphone" maxlength="11"
							id="tel"></td>
					</tr>

					<tr>
						<td>&nbsp;</td>
					</tr>

					<tr>
					
						<td>업체 Email&nbsp;</td>
						<td><input type="text" name="companyemail" id="mail"
							maxlength="30"></td>

					</tr>

					<tr>
						<td>&nbsp;</td>

					</tr>
					<tr>
						<td>업체 주소</td>
						<td><input id="map1" type="button"
							onclick="sample4_execDaumPostcode('companylocation')"
							value="우편번호 찾기"> <input type="text" id="companylocation"
							placeholder="도로명주소" name="companylocation"></td>
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
					<td>
						<input type="file" name="files" multiple id="files" accept=".jpg,.jpeg,.png,.gif,.bmp">
						<input type="hidden" id="fileCheck" name="file_Check" value="0" />
					</td>
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
							id="username"></td>
					</tr>

					<tr>
						<td>&nbsp;</td>
					</tr>

					<tr>
						<td>사용자 전화번호</td>
						<td><input type="text" name="phone" maxlength="11"
							id="usertel"></td>
					</tr>
					<tr>
						<td>&nbsp;</td>
					</tr>

					<tr>
						<td>사용자 Email</td>
						<td><input type="text" name="useremail" id="usermail1"
							maxlength="30"></td>
					</tr>

					<tr>
						<td>&nbsp;</td>
					</tr>

					<tr>
						<td>사용자 주소</td>

						<td><input id="map2" type="button"
							onclick="sample4_execDaumPostcode('useraddress')" value="우편번호 찾기">
							<input type="text" id="useraddress" placeholder="도로명주소"
							name="useradderess"></td>



					</tr>

					<tr>
						<td>&nbsp;</td>
					</tr>

					<tr>
						<td>사용자 생년월일</td>
						<td><input type="text" name="inyear" size="1"
							style="font-size: 20px;" maxlength="4" />년 <select
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
						<td colspan="2"><button id="hag" class="btn" type="submit">회원가입</button></td>
					</tr>

					<tr>
						<td><input class="btn" type="button" value="취소"
							formaction="home"></td>
					</tr>

				</table>
			</form>



		</div>
	</div>






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
	</script>
</body>
</html>