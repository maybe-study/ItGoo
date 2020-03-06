<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>글쓰기 화면</title>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<style type="text/css">
table {
	width: 100%;
}

table, td, tr {
	border: 1px solid;
	border-collapse: collapse;
	padding: 5px;
}

input[type='text'] {
	width: 100%;
}

input[type='text'] {
	width: 100%;
}

textarea {
	width: 99%;
}
</style>
</head>
<body>
	<h3>글쓰기</h3>
	<form action="boardwrite" id="frm" method="post"
		enctype="multipart/form-data">
		<table border="1">
			<tr>
				<td>제목</td>
				<td><input type="text" name="b_title" id="b_title" /></td>
			</tr>
			<tr>
				<td>내용</td>
				<td><textarea name="b_contents" id="b_contents" rows="20"></textarea>
				</td>
			</tr>
			<tr>
				<td>파일첨부</td>
				<td><input type="file" name="files" id="files" multiple /> <input
					type="hidden" id="fileCheck" name="fileCheck" value="0" /></td>
			</tr>
			<tr>
				<td colspan="2" align="center">
				<input type="submit" value="글전송" />
					<input type="submit" value="FormData" />
					<input type="reset" id="reset" value="취소" /> 
					<input type="button" onclick="location.href='boardlist'" value="리스트 보기" /></td>
			</tr>
		</table>
	</form>
	
	
	
	
	<script>
		$("#files").on("change", function() {
			console.log(this.value); //첨부된 파일
			if (this.value === '') {
				console.log("empty");
				$("#fileCheck").val(0); //첨부 안됨
			} else {
				console.log("not empty");
				$("#fileCheck").val(1); //첨부됨
			}
			console.log($("#fileCheck").val());
		});
		$("#reset").click(function() {
			console.log("empty");
			$("#fileCheck").val(0);
			console.log($("#fileCheck").val());
		});
		function formData(){
			var $obj=$("#files");
			console.log($obj); //jquery 객체
			console.dir($obj[0]); //java script 객체 (배열로 반환됨)
// 			var obj=document.getElementById("files");
// 			console.dir(obj);
			console.dir($obj[0].files); //파일 앨리먼트
			console.dir($obj[0].files.length); //첨부된 파일리스트 개수
			console.dir($obj[0].files[0]); //1번째 파일 정보
			console.dir($obj[0].files[1]); //2번째 파일 정보
 			
			//FormData 사용 목적
			//1.multipart/form-data 를 전송시 무조건 사용(파일 업로드)
			//2.ajax를 이용해서 서버로 넘긴다. restFul에서 사용함
			//3.FormFata 객체는 form의 일부 데이터만 서버에 전송할때도 좋다.
//			var formData=new FormData($('#frm')); //폼데이터 객체 //에러 앞은 자바스크립트 뒤는 제이쿼리라 호환안됨
// 			var formData=new FormData(document.getElementById("frm")); //폼데이터 객체
// 			console.log(formData.get("b_title"));
// 			console.log(formData.get("b_contents"));
			var formData=new FormData();
			formData.append("b_title",$('#b_title').val());
			formData.append("b_contents",$('#b_contents').val());
			formData.append("fileCheck",$('#fileCheck').val());
			var files=$obj[0].files; //첨부된 파일 정보
			for(var i=0;i<files.length;i++){
				formData.append("files", files[i]); //Map과 달리 속성(키) 가 같아도 중복저장됨
			}
			console.log(formData.get("b_title"));
			console.log(formData.getAll("files"));
			$.ajax({
				url:'rest/boardwrite',
				type:'post', //enctype=multipart/form-data를 전송시 반드시 post
				data:formData,
				processData:false, //application/X-www-form-urlencoded(쿼리스트링)
				contentType:false, //multipart의 경우 contentType을 false로
				//contentType:'application/json;charset=UTF-8'
				dataType:'json', //rest컨트롤러 이용
				success:function(data){
					alert("성공");
					console.log(data);
				},
				error:function(error){
					alert("실패");
					console.log(error);
				}
			}); //ajax End
		}
		
	</script>
</body>
</html>