<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
<link rel="stylesheet" href="./css/creative.css">
<link rel="stylesheet" href="./css/creative.min.css">
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
					<%
						String userid = "";
						userid = (String)session.getAttribute("userid");
						
						if(userid==null||userid.equals("")){
							System.out.println("");
					%>
						href="./login.jsp">Login</a></li>
					<%}else{
						%>
						href="./logoutAction.jsp">Logout</a></li>
					<%} %>

				</ul>
			</div>
		</div>
	</nav>

	<header class="masthead text-center text-white d-flex">
		<div class="container my-auto">
			<div class="row">
				<div class="col-lg-10 mx-auto">
					<h1 class="text-uppercase">
						<strong>Chonbuk University Voting System</strong>
					</h1>
					<hr>
				</div>
				<div class="col-lg-8 mx-auto">
					<p class="text-faded mb-5">Voting System that is based on
						'Block Chain'</p>
					<a class="btn btn-primary btn-xl js-scroll-trigger"
						href="./votemainpage.jsp">GO TO THE VOTE</a>
				</div>
			</div>
		</div>
	</header>

	<section id="contact">
		<div class="container">
			<div class="row">
				<div class="col-lg-8 mx-auto text-center">
					<h2 class="section-heading">Let's Get In Touch!</h2>
					<hr class="my-4">
					<p class="mb-5">
						If you want to know about details, please contact us under this
						text messages. <br> We always welcome you guys and hope you
						to enjoy this voting system.
					</p>
				</div>
			</div>
			<div class="row">
				<div class="col-lg-4 ml-auto text-center">
					<i class="fas fa-phone fa-3x mb-3 sr-contact-1"></i>
					<p>010-1234-5678</p>
				</div>
				<div class="col-lg-4 mr-auto text-center">
					<i class="fas fa-envelope fa-3x mb-3 sr-contact-2"></i>
					<p>
						<a href="mailto:your-email@your-domain.com">쭈니와 칭구들@jbnu.ac.kr</a>
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