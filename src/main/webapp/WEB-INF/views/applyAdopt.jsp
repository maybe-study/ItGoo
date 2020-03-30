
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<style>
.loading{
 html{
      height: 100%;
    width: 100%;
}

body
{
  display: flex;
  align-items: center;
  justify-content: center;
  height: 100%;
  width: 100%;
  overflow: hidden;
  background-color: #1b2431;
}


.container{
      width: 20vw;
    background-color: #1b2431;
    height: 20vw;
    display: flex;
    align-items: center;
    justify-content: center;
    border-radius: 50%;
    font-size: 2rem;
    color: white;
    font-family: roboto;
    font-weight: bold;
  position:relative;
}

.container::before, .container::after
{
  position: absolute;
  content : "";
  top: -5%;
  left: -5%;
  height:110%;
  width:110%;
  border-radius:50%;
  opacity:0.5;
  filter: blur(60px);
}


.container::after
{
    background-color:#00ffff;
   z-index: -1;
  animation : backglow2 15s ease infinite;
}

.container::before
{
    background-color:#ff0072;
   z-index: -2;
  animation : backglow1 15s ease infinite;
}




@keyframes backglow1
{
  
  0%
  {
    transform: translate(10%, 10%) scale(1);
    opacity:0.5;
  }
  
   25%
  {
    transform: translate(-10%, 10%) scale(0.8);
    opacity:0.5;
  }
  
   50%
  {
    transform: translate(-10%, -10%) scale(1.2);
    opacity:0.8;
  }
  
   75%
  {
    transform: translate(10%, -10%) scale(1.1);
    opacity:0.2;
  }
  
   100%
  {
    transform: translate(10%, 10%) scale(1);
    opacity:0.5;
  }
  
  
}





@keyframes backglow2
{
  
  0%
  {
    transform: translate(-10%, -10%) scale(1);
    opacity:0.5;
  }
  
   25%
  {
    transform: translate(10%, -10%) scale(0.8);
    opacity:0.5;
  }
  
   50%
  {
    transform: translate(10%, 10%) scale(1.2);
    opacity:0.8;
  }
  
   75%
  {
    transform: translate(-10%, 10%) scale(1.1);
    opacity:0.2;
  }
  
   100%
  {
    transform: translate(-10%, -10%) scale(1);
    opacity:0.5;
  }
  
  
}
}

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

#why {
	width: 450px;
	height: 100px;
}
</style>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script
	src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
</head>
<body>
<div class="container">
  Virtual Adopt
</div>

	<div id="middle">
		<form action="applyadopt?${_csrf.parameterName}=${_csrf.token}"
			method="post" enctype="multipart/form-data" name="frm">
			<div>
				<a href="index.jsp"><img id="rogo" alt="로고"
					src="img/portfolio/itgoo1004.png"></a>
			</div>
			<br>
			<div id="main">
				<input type="hidden" value="0" name="dogid"> * 입양신청서 <br>
				<hr>

				* 신분증첨부파일 <br>
				<br> <input type="file" id="idfile" class="box"
					name="identifile" accept=".jpg,.jpeg,.png,.gif,.bmp" required>
				<hr>
				* 반려견 키운경력<br> <br>
				<textarea type="text" id="why" name="dogcareer"
					placeholder="반려견을 키웠던 경험이나 다짐을 적어주세요" required=></textarea>

				<hr>
				* 직업<br> <br> <input type="text" name="job" id="job"
					minlength="1" maxlength="20" placeholder="직업을 입력해주세요" required= />
				<hr>
				* 이유 <br> <br>
				<textarea type="text" id="why" name="why" placeholder="입양을 결심한 이유"
					required=></textarea>
				<hr>
				* 적격성평가 희망일 <br> <br> <input type="text" name="teststart"
					placeholder="yyyymmdd" required= />
				<hr>

				<DIV ID="boot">
					<hr>
					<button type="submit" id="apply" class="btn">제출</button>
					<button id="cancel" type="button" onClick="history.back();"
						class="btn">취소</button>
				</DIV>
			</div>
		</form>

	</div>



</body>
<script type="text/javascript">
	var qs = getQueryStringObject();
	function getQueryStringObject() {
		var a = window.location.search.substr(1).split('&');
		if (a == "")
			return {};
		var b = {};
		for (var i = 0; i < a.length; ++i) {
			var p = a[i].split('=', 2);
			if (p.length == 1)
				b[p[0]] = "";
			else
				b[p[0]] = decodeURIComponent(p[1].replace(/\+/g, " "));
		}
		return b;
	}
	document.frm.dogid.value = qs.dogid;
	console.log("히든태그:" + document.frm.dogid.value);
</script>
</html>