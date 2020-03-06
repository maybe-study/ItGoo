<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<form action="uploadtest?${_csrf.parameterName}=${_csrf.token}" name= frm id="frm" method="post" enctype="multipart/form-data">
		<table border="1">
			<tr>
				<td>제목</td>
				<td><input type="text" name="b_title" id="b_title"></td>
			</tr>
			<tr>
				<td>내용</td>
				<td><textarea name="b_contents" id="b_contents" rows="20"></textarea>
			</tr>
			<tr>
				<td>파일첨부</td>
				<td>
					<input type="file" name="files" multiple id="files" />
					<input type="hidden" id="fileCheck" name="file_Check" value="0" />
				</td>
			</tr>
			<tr>
				<td colspan="2">
					<input type="submit" value="글작성"/>
					<input type="button" onclick="formData()" value="FormData"/>
					<input type="reset" id="reset" value="취소" onclick='reset()'/>
					<input type="button" onclick="location.href='boardlist'" value="리스트보기"/>
				</td>
			</tr>
		</table>
	</form>
</body>
</html>