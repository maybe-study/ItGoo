<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="utf-8">
<meta name="viewport"
   content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">
<meta name="viewport"
   content="width=device-width, initial-scale=1, minimum-scale=1, maximum-scale=1">
<title>ITGOO-Don't buy it. Adopt it.</title>

<!-- Bootstrap core CSS -->
<link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

<!-- Custom fonts for this template -->
<link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet">
<link href="https://fonts.googleapis.com/css?family=Varela+Round"
   rel="stylesheet">
<link
   href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
   rel="stylesheet">
<!-- Custom styles for this template -->
<link href="css/grayscale.min.css" rel="stylesheet">
<link rel="stylesheet" href="css/swiper.min.css">
<script
   src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
</head>
<style>
body{
	font-size:20px;
}
.masthead {
   position: relative;
   width: 100%;
   height: auto;
   min-height: 35rem;
   padding: 15rem 0;
   background: linear-gradient(to bottom, rgba(22, 22, 22, .3) 0,
      rgba(22, 22, 22, .7) 75%, 100%), url(../img/dog1.jpg);
   background-position: center;
   background-repeat: no-repeat;
   background-attachment: scroll;
   background-size: cover;
}

#logout {
   margin-top: 33px;
   border: 0px transparent solid;
   outline: 0;
   color: rgba(255, 255, 255, 0.5);
   transition: none 0s ease 0s;
   background-color: transparent;
   font-weight: 700;
   font-size: .9rem;
   border: 0px transparent solid;
}

html, body {
   position: relative;
   height: 100%;
}

body {
   background: #eee;
   font-family: Helvetica Neue, Helvetica, Arial, sans-serif;
   font-size: 14px;
   color: #000;
   margin: 0;
   padding: 0;
}

.swiper-container {
   width: 100%;
   height: 100%;
}

hr {
	color: gray;
	width: 400px;
}

.swiper-slide {
   text-align: center;
   font-size: 18px;
   background: #fff;
   /* Center slide text vertically */
   display: -webkit-box;
   display: -ms-flexbox;
   display: -webkit-flex;
   display: flex;
   -webkit-box-pack: center;
   -ms-flex-pack: center;
   -webkit-justify-content: center;
   justify-content: center;
   -webkit-box-align: center;
   -ms-flex-align: center;
   -webkit-align-items: center;
   align-items: center;
}

.dog {
   width: 100%
}
</style>
<body id="page-top">

   <!-- Navigation -->
   <nav class="navbar navbar-expand-lg navbar-light fixed-top"
      id="mainNav">
      <div class="container">
         <a class="navbar-brand js-scroll-trigger" href="index.jsp">Start
            ITGOO</a>
         <button class="navbar-toggler navbar-toggler-right" type="button"
            data-toggle="collapse" data-target="#navbarResponsive"
            aria-controls="navbarResponsive" aria-expanded="false"
            aria-label="Toggle navigation">
            Menu <i class="fas fa-bars"></i>
         </button>
         <div class="collapse navbar-collapse" id="navbarResponsive">
            <ul class="navbar-nav ml-auto">
               <li class="nav-item"><a class="nav-link js-scroll-trigger"
                  href="#about">입양리스트</a></li>
               <li class="nav-item"><a class="nav-link js-scroll-trigger"
                  href="#" onclick="document.getElementById('logout').submit();">로그아웃</a>
                  
                  <form id="logout" action="logout" method="POST">
                     <input name="${_csrf.parameterName}" type="hidden"
                        value="${_csrf.token}" />
                  </form></li>
            </ul>
         </div>
      </div>
   </nav>

   <!-- Header -->
   <header class="masthead">
      <div class="container d-flex h-100 align-items-center">
         <div class="mx-auto text-center">
            <h1 class="mx-auto my-0 text-uppercase">ADOPT LIST</h1>
            <h2 class="text-white-50 mx-auto mt-2 mb-5">Don't buy it. Adopt
               it.</h2>
            <a href="#dogList" class="btn btn-primary js-scroll-trigger">Get
               Started</a>
         </div>
      </div>
   </header>

   <!-- About Section -->
   <section id="about" class="about-section text-center">
      <div class="container">
         <div class="row">
            <div class="col-lg-8 mx-auto">
               <h2 class="text-white mb-4">ITGOO의 입양</h2>
               <p class="text-white-50">
                  ITGOO는 100% 유기견 입양사이트로 가상입양,액티비티 시스템 도입으로 재파양,재유기를 예방하는 시스템입니다. <a
                     href="https://www.youtube.com/watch?v=lhC4T91BFNE">the
                     preview page</a>. 사지마세요!입양하세요! Don't buy it. Adopt it.
               </p>
            </div>
         </div>
         <img src="img/ipad.png" class="img-fluid" alt="">
      </div>
   </section>

   <!-- Projects Section -->

   <!-- Contact Section -->
   <section class="contact-section bg-black">
      <div class="container">

         <div class="row" id="dogList">

         
         </div>

         <div id="modalBox" class="modal fade" id="myModal" tabindex="-1"
            role="dialog" aria-labelledby="myModalLabel">
            <div class="modal-dialog" role="document">
               <div class="modal-content">
                  <div class="modal-header">
                     <h4 class="modal-title" id="myModalLabel">입양을 기다려요</h4>
                     <button type="button" class="close" data-dismiss="modal"
                        aria-label="Close">
                        <span aria-hidden="true">×</span>
                     </button>
                  </div>
                  <div class="modal-body">
                     <div id="demo" class="carousel slide" data-ride="carousel">
                        <!-- Indicators -->
                        <ul class="carousel-indicators">
                           <!-- <li data-target="#demo" data-slide-to="0" class="active"></li>
                            <li data-target="#demo" data-slide-to="1"></li>
                            <li data-target="#demo" data-slide-to="2"></li> -->
                        </ul>
                        <!-- The slideshow -->
                        <div class="carousel-inner">
                           <!-- <div class="carousel-item active">
                              <img src="/fileupload/dog/1.jpg" class="dog" alt="Los Angeles">
                            </div>
                            <div class="carousel-item">
                              <img src="/fileupload/dog/2.jpg" class="dog" alt="Chicago">
                            </div>
                            <div class="carousel-item">
                              <img src="/fileupload/dog/3.jpg" class="dog" alt="New York">
                            </div> -->
                        </div>
                        <!-- Left and right controls -->
                        <a class="carousel-control-prev" href="#demo" data-slide="prev">
                           <span class="carousel-control-prev-icon"></span>
                        </a> <a class="carousel-control-next" href="#demo" data-slide="next">
                           <span class="carousel-control-next-icon"></span>
                        </a>
                     </div>
                     <table >
                        <tr>
                           <td>이름</td>
                          <td id="name"></td>
                        </tr>
                        
                 		 
                          
                        <tr>
                           <td>나이</td>
                        <td id="age"></td>
                        </tr>
                        
                         
                        
                        <tr>
                           <td>중성화 여부</td>
                        <td id="dogjungsung" ></td>
                       
                        </tr>
                        
                        <tr>
                           <td>성별</td>
                        <td id="sex"></td>
                        </tr>
                     </table>
                        <div id="special" >
                        
                        </div>


                  </div>


                  <div class="modal-footer">
                     <button type="button" class="btn btn-primary" id="VirtualadoptBtn">가상입양</button>
                     <button type="button" class="btn btn-primary" id="adoptBtn">입양</button>
                     <button type="button" class="btn btn-default" id="closeModalBtn">뒤로가기</button>
                  </div>
               </div>
            </div>
         </div>
         <!-- <div class="social d-flex justify-content-center">
            <a href="#" class="mx-2"> <i class="fab fa-twitter"></i>
            </a> <a href="#" class="mx-2"> <i class="fab fa-facebook-f"></i>
            </a> <a href="#" class="mx-2"> <i class="fab fa-github"></i>
            </a>
         </div>
 -->
      </div>
   </section>

   <!-- Footer -->
   <footer class="bg-black small text-center text-white-50">
      <div class="container">Copyright &copy; ITGOO 2020</div>
   </footer>
   <script src="js/swiper.min.js"></script>

   <script>
   function empty(){
	   $('#name').empty();
	   $('#age').empty();
	   $('#dogjungsung').empty();
	   $('#sex').empty();
	   $('#special').empty();
   }
   var $dogList = $("#dogList");
   $.each(${dogList},function(idx,data){
      console.log("data어돕트 값",data);
        var $img=$('<img style="width:100%; height:300px">').attr('src',data.dogpic);
        makeModalBtn($img);
        $img[0].dataset.dogid=data.dogid;
        //$img[0].dataset.
          var $div3 = $('<div class="card-body text-center">')
                .append($('<i class="fas fa-mobile-alt text-primary mb-2">'))
                .append($('<h4 class="text-uppercase m-0"><hr>').text(data.dogname))
                .append($('<hr class="my-4">')).append($img)
                .append($('<div class="small text-black-50"><hr>').text(data.dogage+" 살"))
                
                .append($('<div class="small text-black-50"><hr>').text("중성화 여부 : "+data.dogjungsung));
          console.log("인덱스는!!!"+idx);
          console.log(idx);
          var $div2 = $('<div class="card py-4 h-100">').append($div3);
          var $div1 = $('<div class="col-md-4 col-sm-12 ">').append($div2);
           $dogList.append($div1);
           
     });
     function makeModalBtn($img){
    	 $img.on('click', function(e){
          //console.log(e.target.dataset.dogid);
          var dogid=e.target.dataset.dogid;
          console.log("dogid:dddd",dogid);
          $.ajaxSetup({
               beforeSend : function(xhr) {
                  xhr.setRequestHeader("${_csrf.headerName}", "${_csrf.token}");
             }
          });//먼저 보냄
            console.log(dogid);
            $.ajax({ // 에이작스 열고
               type : 'post', //타입은 get 
               url : "adoptlistdetail", // restFul 방식
               data : {"dogid":dogid},
               dataType : "json",
               //서블릿이 성공하면 다시 돌아오는것
               success : function(data) {
                  
                  console.log("data",data);
                  var $uls=$('.carousel-indicators').empty();
                  var $items=$('.carousel-inner').empty();
                  empty();
                  //사진 리스트
                  $.each(data.dogpics,function(idx,pic){
                     if(idx==0){
                        $('<li data-target="#demo" data-slide-to="0" class="active">').appendTo($uls);
                        var $div=$('<div class="carousel-item active">').appendTo($items);
                        $('<img class="dog">').attr('src',pic).appendTo($div);
                     }else{
                        var $li=$('<li data-target="#demo">').appendTo($uls);
                        $li[0].dataset.slideTo=idx;
                        var $div=$('<div class="carousel-item">').appendTo($items);
                        $('<img class="dog">').attr('src',pic).appendTo($div);
                     }
                     
                  });
                  //강아지 정보
                  $('#name').text(data.dogname);
                  $('#age').text(data.dogage+" 살");
                  $('#dogjungsung').text(data.dogjungsung==1?"O":"X");
                  $('#sex').text(data.sex==0?"남":"여");
                  $('#special').append(data.dogspecial);
                  
                    
                  
                  $("#adoptBtn").on("click",function(){
                     location.href="./applyAdopt?dogid="+data.dogid
                  })
                 
                  $("#VirtualadoptBtn").on("click",function(){
                     location.href="./virtualadopt?dogid="+data.dogid
                  })
               /* var swiper = new Swiper('.swiper-container', {
                     navigation: {
                       nextEl: '.swiper-button-next',
                       prevEl: '.swiper-button-prev',
                     },
                   }); */
               }
               ,
               error : function(error) {
                  console.log(error);
                  var $uls=$('.carousel-indicators').empty();
                  var $items=$('.carousel-inner').empty();
                  
               }

            });
            $('#modalBox').modal('show'); 
         });
       }
            // 모달 안의 취소 버튼에 이벤트를 건다.
            $('#closeModalBtn').on('click', function(){
            $('#modalBox').modal('hide');
      });
            
   </script>

   <!-- Bootstrap core JavaScript -->
   <!--  -->
   <script src="vendor/jquery/jquery.min.js"></script>
   <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

   <!-- Plugin JavaScript -->
   <script src="vendor/jquery-easing/jquery.easing.min.js"></script>

   <!-- Custom scripts for this template -->
   <script src="js/grayscale.min.js"></script>



</body>

</html>