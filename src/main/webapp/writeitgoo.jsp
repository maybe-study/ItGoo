<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<style>
#main1 {
	margin: auto;
}

#logo {
	padding: 10px;
	margin-left: 15px;
	width: 300px;
	height: 150px;
	width: 300px;
}

#topMenu {
	margin-top: 50px;
	height: 40px;
	width: 300px;
	margin-left: 40px;
	padding-right: 20px;
}

#topMenu ul li {
	color: white;
	background-color: #2d2d2d;
	line-height: 50px;
	vertical-align: middle;
	text-align: center;
}

#topMenu .menuLink {
	text-decoration: none;
	color: white;
	display: block;
	width: 260px;
	font-weight: bold;
	font-family: "Trebuchet MS", Dotum, Arial;
}

#topMenu .menuLink:hover {
	color: red;
	background-color: #4d4d4d;
}

#aside {
	float: left;
	width: 25%;
}

#section {
	padding: 20px;
	width: 60%;
	float: left;
	border: 1px solid black;
	min-height: 700px;
	text-align: center;
	display: block;
}

.table {
	width: 100%;
	max-width: 100%;
	margin-bottom: 20px;
}

#btn {
	display: inline-block;
	margin-bottom: 0;
	font-weight: 400;
	text-align: center;
	white-space: nowrap;
	vertical-align: middle;
	touch-action: manipulation;
	cursor: pointer;
	background-image: none;
	border: 1px solid transparent;
	padding: 6px 12px;
	font-size: 14px;
	line-height: 1.42857143;
	border-radius: 4px;
	user-select: none;
	color: #fff;
	background-color: #228B22;
	border-color: #398439;
	width: 100px;
	margin-top: 100px;
	text-decoration: none;
}

#title {
	margin-top: 30px;
	margin-bottom: 30px;
	width: 60%;
	height: 30px;
	font-size: 20px;
	width: 60%;
}

#title1 {
	font-size: 20px;
}

#main {
	/* 	width: 600px;
	height: 700px; */
	font-size: 20px;
}

#pic {
	margin-top: 20px;
}

#titlepic {
	font-size: 20px;
}

/* .ck-blurred ck ck-content ck-editor__editable ck-rounded-corners ck-editor__editable_inline
	{
	width: 1000px;
} */
</style>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script
	src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script src="ckeditor/ckeditor.js"></script>

<script>
	/* $("btn").click(function)(){
	var title = $("title")
	var main = $("main")
	var pic = $("pic")
			

	}
	 */
	
	
</script>
<body>
	<header>
		s
		<div id="logo">
			<a href="index.jsp"><img id="logo"
				src="img/portfolio/itgoo1004.png"> </a>
			<h3>Write</h3>
		</div>
	</header>
	<div id="main1">
		<aside id="aside">
			<nav id="topMenu">
				<ul>
					<li><a class="menuLink" href="introduce.jsp">ITGOO소개</a></li>
					<li><a class="menuLink" href="companyjoinform.jsp">업체회원가입</a></li>
					<li><a class="menuLink" href="list.html">커뮤니티</a></li>
					<li><a class="menuLink" href="adoptList.jsp">입양공고</a></li>
					<li><a class="menuLink" href="ItGoostar.html">ITGOOSTAR</a></li>
				</ul>
			</nav>
		</aside>



		<section id="section">
			<form action="writepage?${_csrf.parameterName}=${_csrf.token}"
				enctype="multipart/form-data" onsubmit="return check()"
				name="auctionfrm">
				<div id="table">
					<table id="boards" class="table">

						<tbody>
							<tr>
								<td><span id="title"></span><input type="text" id="title"
									name="title" placeholder="제목을 작성해주세요." /></td>
							</tr>

							<tr>
								<td><textarea id="main" name="content"
										placeholder="내용작성해주세요."></textarea></td>
							</tr>


							<tr>
								<td>
									<button type="submit" id="btn">작성</button>
								</td>
							</tr>


						</tbody>
					</table>
				</div>
			</form>
		</section>
	</div>
</body>
<script>
let myeditor
ClassicEditor
    .create( document.querySelector( '#main' ),{
        ckfinder: {
            uploadUrl: './ck/communityload?${_csrf.parameterName}=${_csrf.token}' // 내가 지정한 업로드 url (post로 요청감)
            
    		
        }
    } )
    .then( editor => {
    	//대입
    	myeditor=editor;
        console.log( editor );
    } )
    .catch( error => {
        console.error( error );
    } );
    
  
  function check(){
	  const data = myeditor.getData();
	  //디비에 저장할 이미지 리스트
	  var imgList=[];
	  console.log(data);
	  $(data).find('img').each(function(){
	  	  imgList.push($(this).attr('src'));
	  });

	  var frm=document.auctionfrm
	  
	  frm.srcJson.value=JSON.stringify(imgList);
	  console.log(JSON.stringify(imgList));
	  return true;
  }
  function demo(){
	  console.log("데모");
	  const data = myeditor.getData();
	  //디비에 저장할 이미지 리스트
	  var imgList=[];
	  console.log(data);
	  $(data).find('img').each(function(){
	  	  imgList.push($(this).attr('src'));
	  });

	  var frm=document.auctionfrm
	  
	  frm.srcJson.value=JSON.stringify(imgList);
	  frm.auctionstart.value=moment().add(5,'s').format('MM/DD/YYYY h:mm:ss A')
	  frm.auctionend.value=moment().add(35,'s').format('MM/DD/YYYY h:mm:ss A')
	  
	  console.log(frm.auctionstart.value);
	  
	  console.log(JSON.stringify(imgList));
	  return true;
  }


</script>
</html>