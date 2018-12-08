<%@ page language="java" contentType="text/html; charset=UTF-8"
	import="java.sql.*" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset="UTF-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<title>Block Chain Voting</title>
<!-- 부트스트랩 CSS 추가 -->
<link rel="stylesheet"
	href="//maxcdn.bootstrapcdn.com/bootstrap/latest/css/bootstrap.min.css">

<!-- 커스텀 CSS 추가 -->
<link rel="stylesheet" href="./css/login.css">
<link rel="stylesheet" href="./css/login.min.css">
</head>

<body>
	<nav class="navbar navbar-expand-lg navbar-light fixed-top"
		id="mainNav">
		<div class="container">
			<a class="navbar-brand js-scroll-trigger" href="./index.jsp">전북대학교
				투표시스템 </a>
			<button class="navbar-toggler navbar-toggler-right" type="button"
				data-toggle="collapse" data-target="#navbarResponsive"
				aria-controls="navbarResponsive" aria-expanded="false"
				aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>
			<div class="collapse navbar-collapse" id="navbarResponsive">
				<ul class="navbar-nav ml-auto">
					<li class="nav-item"><a class="nav-link js-scroll-trigger"
						href="./votemainpage.jsp">Vote</a></li>
					<li class="nav-item"><a class="nav-link js-scroll-trigger"
						href="#">Introduction</a></li>
					<li class="nav-item"><a class="nav-link js-scroll-trigger"
						href="#contact">Contact Us</a></li>
					<li class="nav-item"><a class="nav-link js-scroll-trigger"
						href="./login.jsp">Login</a></li>
				</ul>
			</div>
		</div>
	</nav>

	<header class="masthead text-center text-white d-flex">
		<div class="container">
			<section id="content">
				<form action="loginAction.jsp">
					<h1>Login Page</h1>
					<br>
					<br>
					<div>
						<input type="text" placeholder="학번" id="userid" name="userid" />
					</div>
					<div>
						<input type="password" placeholder="비밀번호" id="pwd1" name="pwd1" />
					</div>
					<br>
					<div>
						<input type="submit" value="Log in" /> <a href="#">비밀번호를
							잊어버리셨나요?</a><br> <a href="join.jsp">회원가입</a>
					</div>
				</form>
				<!-- form -->

			</section>
			<!-- content -->
		</div>
		<!-- container -->
	</header>

	<section id="contact">
		<div class="container">
			<div class="row">
				<div class="col-lg-8 mx-auto text-center">
					<h2 class="section-heading">Let's Get In Touch!</h2>
					<hr class="my-4">
					<p class="mb-5">Ready to start your next project with us?
						That's great! Give us a call or send us an email and we will get
						back to you as soon as possible!</p>
				</div>
			</div>
			<div class="row">
				<div class="col-lg-4 ml-auto text-center">
					<i class="fas fa-phone fa-3x mb-3 sr-contact-1"></i>
					<p>123-456-6789</p>
				</div>
				<div class="col-lg-4 mr-auto text-center">
					<i class="fas fa-envelope fa-3x mb-3 sr-contact-2"></i>
					<p>
						<a href="mailto:your-email@your-domain.com">feedback@startbootstrap.com</a>
					</p>
				</div>
			</div>
		</div>
	</section>

	<!-- 자바쿼리, 부트스트랩 자바스크립트 -->
	<script src="//code.jquery.com/jquery.min.js"></script>
	<script
		src="//maxcdn.bootstrapcdn.com/bootstrap/latest/js/bootstrap.min.js"></script>

</body>
</html>