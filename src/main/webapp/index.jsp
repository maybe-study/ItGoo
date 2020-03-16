<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>

<script src="https://cdnjs.cloudflare.com/ajax/libs/gsap/3.0.5/gsap.min.js"></script>
<script src="https://s3-us-west-2.amazonaws.com/s.cdpn.io/16327/SplitText3.min.js"></script>

<style>
@font-face {
	font-family: 'Marvin Visions Variable';
	src:
		url("https://s3-us-west-2.amazonaws.com/s.cdpn.io/756881/MarvinVisionsTrial-Variable.ttf");
}

body {
	background-color: #1b1b1d;
	min-height: 100vh;
	display: flex;
	align-items: center;
	padding: 1rem;
}

body:after {
	content: '';
	background-image:
		url(https://s3-us-west-2.amazonaws.com/s.cdpn.io/756881/texture.svg);
	position: fixed;
	width: 100%;
	height: 100%;
	top: 0;
	left: 0;
	bottom: 0;
	right: 0;
	z-index: 999;
	pointer-events: none;
	opacity: 0.2;
	filter: invert(1);
	background-size: cover;
}

<<<<<<< HEAD
			<sec:authorize access="isAuthenticated()">
				<form method="post" action="logout">
					<input type="submit" value="로그아웃" id="logout"> <input
						type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
				</form>
			</sec:authorize>
		</div>
		
	</div>
<nav class="navbar navbar-expand-sm navbar-dark bg-dark">
			<a href="#" class="navbar-brand">ITGOO</a>
			<!-- Toggle Button -->
			<button class="navbar-toggler" type="button" data-toggle="collapse"
				data-target="#collapsibleNavbar">
				<span class="navbar-toggler-icon"></span>
			</button>
			<div class="collapse navbar-collapse" id="collapsibleNavbar">
				<ul class="navbar-nav">
					<li class="nav-item"><a href="introduce.jsp" class="nav-link">ITGOO소개</a></li>
					<li class="nav-item"><a href="companyjoinform.jsp" class="nav-link">업체 회원가입</a></li>
					<li class="nav-item"><a href="#" class="nav-link">커뮤니티</a></li>
					<li class="nav-item"><a href="#" class="nav-link">입양공고</a></li>
					<li class="nav-item"><a href="itgoostar.jsp" class="nav-link">ITGOO_STAR</a></li>
				</ul>
			</div>
		</nav>
=======
#quote { -
	-weight: 10;
	font-family: 'Marvin Visions Variable';
	font-size: 6.5rem;
	font-weight: 170;
	background-size: contain;
	line-height: 0.8;
	margin: 0;
	text-align: left;
}
>>>>>>> 2ba527d6752bfd43be45af5b20044a4fb647fafa

#quote>* {
	color: hsl(347, 7%, 29%);
	font-variation-settings: 'wght' var(- -weight);
}

.grid {
	grid-template-columns: repeat(3, 1fr);
}
</style>
<body>
	<h2 id="quote">
		Thank you for visiting our site.</br>Don't buy it. Adopt it.</br><a href="index2.jsp">I.T.G.O.O</a>
	</h2>
</body>
<script type="text/javascript">
	var tl = gsap.timeline(),

	split = new SplitText("#quote", {
		type : "words,chars"
	}),

	words = split.words; //an array of all the divs that wrap each character

	gsap.set("#quote", {
		perspective : 400
	});

	tl.to(words, {
		duration : 1.5,
		"--weight" : "300",
		ease : "none",
		color : "hsl(+=0, +=70%, +=20%)",
		stagger : {
			each : 0.4,
		}
	})
</script>
</html>