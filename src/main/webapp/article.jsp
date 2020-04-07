<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
<style>
* {
  box-sizing: border-box;
}
:root {
  --scroll: 0;
  --content: 0;
}
html,
body {
  background: #f2f6fa;
  padding: 0;
  margin: 0;
  font-family: 'HelveticaNeue-Light', 'Helvetica Neue Light', 'Helvetica Neue', Helvetica, Arial, 'Lucida Grande', sans-serif;
  font-size: 16px;
}
html:after,
body:after {
  content: '';
  height: 6px;
  background: #6588ad;
  position: fixed;
  top: 0;
  left: 0;
  width: calc((var(--content)) * 1%);
}
h1 {
  color: #6588ad;
  font-size: calc((1.25 + (((1.25 * 1.25) - 1.25)) - ((((1.25 * 1.25) - 1.25)) * (var(--scroll) / 90))) * 1rem);
  top: 50vh;
}
h2 {
  color: #7597ba;
  font-size: calc((1 + (((1 * 1.1) - 1)) - ((((1 * 1.1) - 1)) * (var(--scroll) / 90))) * 1rem);
  top: calc(50vh + calc((1.25 + (((1.25 * 1.25) - 1.25)) - ((((1.25 * 1.25) - 1.25)) * (var(--scroll) / 90))) * 1rem));
}
body > p:nth-of-type(1) {
  color: #5f7a96;
  font-size: calc((0.65 + (((0.65 * 1.1) - 0.65)) - ((((0.65 * 1.1) - 0.65)) * (var(--scroll) / 90))) * 1rem);
  padding-top: 10px;
  top: calc(50vh + calc((1.25 + (((1.25 * 1.25) - 1.25)) - ((((1.25 * 1.25) - 1.25)) * (var(--scroll) / 90))) * 1rem) + calc((1 + (((1 * 1.1) - 1)) - ((((1 * 1.1) - 1)) * (var(--scroll) / 90))) * 1rem));
}
@media (min-width: 768px) {
  h1 {
    font-size: calc((1.75 + (((1.75 * 2) - 1.75)) - ((((1.75 * 2) - 1.75)) * (var(--scroll) / 90))) * 1rem);
  }
  h2 {
    font-size: calc((1.2 + (((1.2 * 2) - 1.2)) - ((((1.2 * 2) - 1.2)) * (var(--scroll) / 90))) * 1rem);
    top: calc(50vh + calc((1.75 + (((1.75 * 2) - 1.75)) - ((((1.75 * 2) - 1.75)) * (var(--scroll) / 90))) * 1rem));
  }
  body > p:nth-of-type(1) {
    font-size: calc((0.65 + (((0.65 * 1.5) - 0.65)) - ((((0.65 * 1.5) - 0.65)) * (var(--scroll) / 90))) * 1rem);
    top: calc(50vh + calc((1.75 + (((1.75 * 2) - 1.75)) - ((((1.75 * 2) - 1.75)) * (var(--scroll) / 90))) * 1rem) + calc((1.2 + (((1.2 * 2) - 1.2)) - ((((1.2 * 2) - 1.2)) * (var(--scroll) / 90))) * 1rem));
  }
}
h1,
h2,
body > p:nth-of-type(1) {
  position: fixed;
  margin: 0;
  z-index: 5;
  left: 50%;
  width: 100vw;
  text-align: left;
  padding-left: 5vw;
  -webkit-transform: translate(0, calc((var(--scroll) / 90) * -45vh)) translate(-50%, -50%);
          transform: translate(0, calc((var(--scroll) / 90) * -45vh)) translate(-50%, -50%);
}
h2,
body > p:nth-of-type(1) {
  left: 5vw;
  padding-left: 0;
  -webkit-transform-origin: left center;
          transform-origin: left center;
  opacity: calc(1 - ((var(--scroll) / 90) * 1));
  -webkit-transform: translate(0, calc((var(--scroll) / 90) * -45vh)) translate(0, -50%) scale(calc(1 - ((var(--scroll) / 90) * 1)));
          transform: translate(0, calc((var(--scroll) / 90) * -45vh)) translate(0, -50%) scale(calc(1 - ((var(--scroll) / 90) * 1)));
}
blockquote {
  position: relative;
  padding: 1.25rem 0 1.25rem 1.25rem;
  margin: 0;
}
blockquote:before {
  content: '';
  position: absolute;
  top: 0;
  left: 0;
  bottom: 0;
  width: 4px;
  background: #6588ad;
}
blockquote p {
  padding: 0;
}
blockquote + p {
  padding-top: 0;
}
@media (min-width: 768px) {
  h1,
  h2,
  body > p:nth-of-type(1) {
    left: 50%;
    min-width: 45vw;
    width: calc((100 - var(--scroll)) * 1vw);
    text-align: center;
    padding-left: 0;
    opacity: 1;
    -webkit-transform: translate(calc(((var(--scroll) / 90) * -45vw)), calc(((var(--scroll) / 90) * 22.5vh) + ((var(--scroll) / 90) * calc((3 + (((3 * 1) - 3)) - ((((3 * 1) - 3)) * (var(--scroll) / 90))) * 1rem)))) translate(calc((((90 - var(--scroll)) / 90)) * -50%), -50%);
            transform: translate(calc(((var(--scroll) / 90) * -45vw)), calc(((var(--scroll) / 90) * 22.5vh) + ((var(--scroll) / 90) * calc((3 + (((3 * 1) - 3)) - ((((3 * 1) - 3)) * (var(--scroll) / 90))) * 1rem)))) translate(calc((((90 - var(--scroll)) / 90)) * -50%), -50%);
  }
}
body > p:nth-of-type(1):after {
  background: #dec5e8;
  height: 30px;
  width: 30px;
  border-radius: 5px;
  position: fixed;
  top: 120%;
  left: 50%;
  opacity: calc(1 - ((var(--scroll) / 90) * 1));
  clip-path: polygon(25% 0%, 25% 60%, 0% 60%, 50% 100%, 100% 60%, 75% 60%, 75% 0%);
  -webkit-clip-path: polygon(25% 0%, 25% 60%, 0% 60%, 50% 100%, 100% 60%, 75% 60%, 75% 0%);
  -webkit-transform: translate(calc(-50% - 5vw), 0);
          transform: translate(calc(-50% - 5vw), 0);
}
@media (min-width: 768px) {
  body > p:nth-of-type(1):after {
    -webkit-transform: translate(-50%, 0);
            transform: translate(-50%, 0);
  }
}
img {
  height: calc((100 - var(--scroll)) * 1vh);
  min-height: 10vh;
  -o-object-fit: cover;
     object-fit: cover;
  width: 100vw;
}
@media (min-width: 768px) {
  img {
    border-radius: calc((var(--scroll) / 90) * 10px);
    min-height: 45vh;
    min-width: 45vw;
    width: calc((100 - var(--scroll)) * 1vw);
  }
}
p:nth-of-type(2) {
  left: 0;
  margin: 0;
  padding: 0;
  position: fixed;
  top: 0;
  z-index: 4;
}
@media (min-width: 768px) {
  p:nth-of-type(2) {
    min-height: 45vh;
    min-width: 45vw;
    -webkit-transform: translate(calc((var(--scroll) / 90) * 5vw), calc((var(--scroll) / 90) * 50vh)) translate(0, calc((var(--scroll) / 90) * -50%));
            transform: translate(calc((var(--scroll) / 90) * 5vw), calc((var(--scroll) / 90) * 50vh)) translate(0, calc((var(--scroll) / 90) * -50%));
    width: calc((100 - var(--scroll)) * 1vw);
  }
}
@media (min-width: 768px) {
  p:nth-of-type(2):before,
  p:nth-of-type(2):after {
    opacity: calc(1 - ((var(--scroll) / 90) * 1));
  }
}
p:nth-of-type(2):before {
  background: -webkit-gradient(linear, left bottom, left top, from(#fff), to(rgba(250,250,250,0.5)));
  background: linear-gradient(0deg, #fff, rgba(250,250,250,0.5));
  bottom: -2px;
  content: '';
  left: 0;
  position: absolute;
  right: 0;
  top: 0;
  z-index: 2;
}
p:nth-of-type(2):after {
  background: -webkit-gradient(linear, left bottom, left top, from(transparent), to(#fafafa));
  background: linear-gradient(0deg, transparent, #fafafa);
  content: '';
  height: 10vh;
  left: 0;
  position: absolute;
  top: 100%;
  width: 100vw;
  z-index: 2;
}
@media (min-width: 768px) {
  p:nth-of-type(2):after {
    display: none;
  }
}
p:nth-of-type(3) {
  margin-top: 100vh;
}
@media (min-width: 768px) {
  p:nth-of-type(3) {
    margin-top: 120vh;
  }
}
body > p:last-of-type {
  margin-bottom: 20vh;
}
body {
  padding: 5vw;
}
@media (min-width: 768px) {
  body > p,
  body > strong,
  body > blockquote,
  body > h3,
  body > ul,
  body > ol {
    margin-left: 50vw;
    margin-right: 0vw;
  }
}
h3 {
  color: #6588ad;
  font-weight: bolder;
  margin-top: 3rem;
  font-size: 1.3rem;
}
ul ol {
  margin-left: 15px;
}
ul,
ol {
  padding-left: 18px;
}
ul li,
ol li {
  margin: 0;
  padding: 0 0 14px 15px;
}
ol {
  margin-top: 15px;
}
p {
  line-height: 1.5rem;
  padding-top: 2rem;
}
ul + p,
h3 + p {
  padding-top: 0;
}
</style>
<body>
	<h1>버려지는 아이들</h1>
	<p>
		<strong><em>save dog</em> by Writerton ITGOO</strong>
	</p>
	<h2>가족이라면서요....</h2>
	<p>
		<img
			src="img/article.jpg"
			alt="cherry blossoms">
	</p>
	<p>
		반려동물 인구 1천만명 시대 미용,장묘등 반려동물 관련 영업 8개 업종 종사자가 전국 1만 6천여명에 이르고,
		늘어나는 반려동물만큼 관련 산업과 인프라가 점점 확대,개선되고 있는데요.
		<strong>그러나 반려동물에 대한 사람들의 의식은 그만큼 성장하지 못했음을 보여주는 통계가 있습니다.</strong>
	</p>
	
	<blockquote>
		<p>바로 최근 몇 년간 꾸준히 유기동물이 증가하고 있다는 겁니다.
		 통계에 따르면 17년 10.3만마리 18년 12.1만마리 19년 13.3만마리 증가하는 중입니다.</p>
	</blockquote>
	<p>지난해 주인을 잃은 동물 10마리중 3마리 가량만 다시 분양돼 새 주인을 만났습니다.
	구조된 동물 중 20.2%는 끝내 갈 곳을 찾지 못하고 안락사 됐죠.</p>
	<h3>가족을 버리는 사람들.</h3>
	<p>
		<em>매년 여름 휴가철마다 주인을 잃은 동물이 많이 늘어납니다.</em>
		2017년에 구조된 유기동물 10만 2천여 마리중 32.3%인 3만 2천여 마리가 6~8월 휴가철에 나왔습니다.
		휴가철 '처치 곤란'이 된 반려동물을 유기하는 사람들이 있는 겁니다.
		전문가들은 동물 유기에 대한 처벌 수준이 높지 않고 그나마 단속도 제대로 되고 있지 안기 떄문이라고 지적합니다.
	</p>
	<p>이에 동물유기 처벌 강화와 반려동물 등록,관리 제도 강화를 요구하는 목소리가 높습니다.</p>
	<p>무엇보다 중요한 건, 반려동물 소유자들이 생명을 존중하고 책임지는 의식을 가지는 것이겠죠.</p>
	
	<h3>버려진 아이들은</h3>
	<p>버려진 반려동물들은 이렇게 살아갑니다.</p>
	<ul>
		<li>쓰레기등을 먹으며 버팁니다.</li>
		<li>버려진 장소에 머무릅니다.
			<ol>
				<li>버림받은 것도 모른채 주인을 기다리죠.</li>
				<li>주인이 돌아올 것이라고 생각하며 버티죠.</li>
			</ol>
		</li>
		<li>평생을 가슴에 상처를 안고 살아갑니다.</li>
		<li>정말 당신의 가족이 맞습니까? 당신의 자식,부모,배우자여도 버릴수 있나요?</li>
	</ul>
	<p>인간의 욕심에 의해 태어나고 버려집니다. 그들의 생명은 인간의 장난인가요?
	</p>
	<!-- <DIV ID="articlediv" style="display: hidden;">
	</DIV> -->
</body>
<script type="text/javascript">

$(window).scroll(function(){ 
	   console.log("1");
   if($(window).scrollTop() == $(document).height() - $(window).height()){ 
	   console.log("2");
	
	   setTimeout(function() {
		   console.log('Works!');
			location.href="whatdidusee.jsp";
		 }, 3000);

		}
	});
   
  

const ROOT = document.documentElement;
const MIN = 10;
const THRESHOLD = innerHeight * (1.2 - 0.225);
const update = e => {
  const scroll = Math.floor(scrollY / innerHeight * 100);
  if (scrollY > THRESHOLD) {
    const progress = Math.floor((scrollY - THRESHOLD) / (document.body.scrollHeight - innerHeight - THRESHOLD) * 100);
    ROOT.style.setProperty('--content', progress);
  }
  ROOT.style.setProperty('--scroll', Math.max(0, Math.min(scroll, 100 - MIN)));
};
window.addEventListener('scroll', update);
</script>
</html>