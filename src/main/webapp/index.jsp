<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib prefix="sec"
   uri="http://www.springframework.org/security/tags"%>
<!DOCTYPE html>
<html>
<head>
<title>Itgoo :: Home</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- CSS -->
<link rel="stylesheet"
   href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
<!-- JS -->
<script
   src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script
   src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
<script
   src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>
<style>
#logout {
   border: 0;
   outline: 0;
   color: blue;
}

#foot {
   background-color: rgba(255, 255, 255, .7);
   margin-top: 10%;
}

#videobcg {
   position: absolute;
   top: 300px;
   left: 0px;
   min-width: 100%;
   min-height: 100%;
   z-index: -1000;
   overflow: hidden;
}

#empty {
   height: 300px;
}
</style>
</head>
<body>
   <!-- header -->



   <!-- <video controls autoplay loop>
      <source src="img/portfolio/puppy.mp4" type="video/mp4">
      <source src="video02.ogg" type="video/mp4">
   </video>-->
   <div class="jumbotron text-center">
      <h1>ITGOO Main</h1>
      <p>(주)ITGOO 소속 유기견 보호 관리 사이트</p>
      <div style="text-align: right;">
         <sec:authorize access="isAnonymous()">

            <a href="login" id="login">로그인</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

            <a href="joinform">회원가입</a>
         </sec:authorize>
         <sec:authorize access="isAuthenticated()">
            <form method="post" action="logout">
               <input type="submit" value="로그아웃" id="logout"> <input
                  type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
            </form>
            <form method="get" action="mypage">
            	<input type="submit" value="마이페이지" id="logout"> <input
                  type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
            </form>
         </sec:authorize>
      </div>

   </div>
   <nav class="navbar navbar-expand-sm navbar-dark bg-dark">
      <a href="index2.jsp" class="navbar-brand">ITGOO</a>
      <!-- Toggle Button -->
      <button class="navbar-toggler" type="button" data-toggle="collapse"
         data-target="#collapsibleNavbar">
         <span class="navbar-toggler-icon"></span>
      </button>


      <div class="collapse navbar-collapse" id="collapsibleNavbar">
         <ul class="navbar-nav">
            <li class="nav-item"><a href="introduce.jsp" class="nav-link">ITGOO소개</a></li>
            <li class="nav-item"><a href="companyjoinform.jsp" class="nav-link">업체 회원가입</a></li>
            <li class="nav-item"><a href="list.jsp" class="nav-link">커뮤니티</a></li>
            <li class="nav-item"><a href="adoptList.jsp" class="nav-link">입양공고</a></li>
            <li class="nav-item"><a href="ItGoostar.html" class="nav-link">ITGOO_STAR</a></li>
         </ul>
      </div>
   </nav>


   <div id="allconta">
      <video id="videobcg" preload="auto" autoplay="true" loop="loop"
         muted="muted" volume="0">
         <source src="img/portfolio/puppy.mp4" type="video/mp4">
         <source src="img/portfolio/puppy.webm" type="video/webm">
      </video>


      <!-- content -->
      <div class="container pt-3">
         <div class="row">
            <!-- left content -->
            <div class="col-md-6">
               <h2>About itgoo</h2>
               <p>경매와 소모임 커뮤니티가 있는 itgoo</p>
               <a href="itgoo1main"><img id="itgoo1"
                  src="img/portfolio/itgoo1.png" class="img-fluid"></a>
            </div>

            <!-- right content -->
            <div class="col-md-6">
               <h2>About ITGOO</h2>
               <p>유기견 입양</p>
               <a href="adoptMain"><img id="ibyang"
                  src="img/portfolio/balba.png" class="img-fluid"></a>
            </div>
         </div>
      </div>
   </div>
   <div id="empty"></div>
   <!-- footer -->
   <div class="jumbotron text-center mt-5 mb-0" id="foot">
      <h3 class="text-secondary">IT GOO corporation</h3>
      <p>
         IT GOO’s Homepage is powered by <span class="text-primary">itcia</span>
         / Designed by <span class="text-primary">itcia</span>
      </p>
   </div>

</body>
<script>
   
</script>

</html>
