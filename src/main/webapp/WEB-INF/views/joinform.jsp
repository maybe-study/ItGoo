<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form name="joinFrm" action="memberjoin" method="post"
		onsubmit="return check()">
		<table border="1">
			<tr>
				<td colspan="2" class="subject">회원가입</td>
			</tr>
			<tr>
				<td width="100">ID</td>
				<td><input type="text" id="id" name="id"> 
				<input type="button" id="checkId" value="중복검사" />
					<div id="result"></div></td>
			</tr>
			<tr>
				<td width="100">PWD</td>
				<td><input type="password" name="password"></td>
			</tr>
			<tr>
				<td width="100">NAME</td>
				<td><input type="text" name="username"></td>
			</tr>
			<tr>
				<td width="100">BIRTH</td>
				<td><input type="text" name="birthday"></td>
			</tr>
			<tr>
				<td width="100">ADDR</td>
				<td><input type="text" name="useraddress"></td>
			</tr>
			<tr>
				<td width="100">PHONE</td>
				<td><input type="text" name="phone"></td>
			</tr>
			<tr>
				<td width="100">EMAIL</td>
				<td><input type="text" name="useremail"></td>
			</tr>
			<tr>
			<tr>
				<td width="100">enabled</td>
				<td><input type="text" name="enabled"></td>
				<td><input type="hidden" name="_csrf" value="${_csrf.token}"></td>
			</tr>
			<tr>
				<td colspan="2" class="subject"><input type="submit"
					value="회원가입"></td>
			</tr>

		</table>
	</form>
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
	<script>
	/* 	$('#checkId').on(
				'click',
				function() {
					if ($('#id').val() != '') {
						$.ajax({
							type : 'get',
							url : 'user/userid',
							data : 'm_id=' + $('#id').val(),
							//dataType : 'html',
							success : function(data, status, xhr) {
								$('#result').html(data).css('color', 'red');
								console.log("data=", data);
								console.log("status=", status);
								console.log("xhr=", xhr);

							},
							error : function(xhr, status) {
								$('#result').html(xhr.responseText).css(
										'color', 'red');
								console.log("xhr=", xhr);
								console.log("status=", status);
							}
						});
					}
				}); */

		function check() {
			var frm = document.joinform;
			var length = frm.length - 1;
			for (var i = 0; i < length; i++) {
				if (frm[i].value == "") {
					alert(frm[i].name + "을 입력하세요!!!");
					frm[i].focus();
					return false; //실패시
				}
			}
			return true; //성공시 서버로 전송
		}
	</script>
</body>
</html>