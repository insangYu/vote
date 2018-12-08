<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>

<html>

<head>

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<meta name="viewport" content="width=device-width" , initial-scale="1.0">

<link rel="stylesheet" href="css/bootstrap.css">

<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">



<title>Insert title here</title>

</head>

<body>
	<nav class="navbar navbar-default">
		<div class="naver-header">
			<button type="button" class="navbar-toggle collapsed"
				data-toggle="collapse" data-target="#bs-example-navbar-collapse-1"
				aria-expanded="false">

				<span class="icon-bar"></span> <span class="icon-bar"></span> <span
					class="icon-bar"></span>

			</button>

			<a class="navbar-brand" href="index.jsp">메인페이지</a>

		</div>

	</nav>

	<div class="container">

		<div class="col-lg-4"></div>

		<div class="col-lg-4">

			<div class="jumbotron" style="padding-top: 20px;">

				<form method="post" action="joinAction.jsp">

					<h3 style="text-align: center;">회원가입 화면</h3>

					<div class="form-group">

						<input type="text" class="form-control" placeholder="학번"
							name="userid" maxlength="20">

					</div>

					<div class="form-group">

						<input type="text" class="form-control" placeholder="비밀번호"
							name="pwd1" maxlength="20">

					</div>

					<div class="form-group">

						<input type="text" class="form-control" placeholder="이름"
							name="fullname" maxlength="20">

					</div>

					<div class="form-group">

						<input type="text" class="form-control" placeholder="메일"
							name="email" maxlength="20">

					</div>

					<div class="form-group">

						<input type="text" class="form-control" placeholder="전화번호"
							name="tel" maxlength="20">

					</div>

					<input type="submit" value="회원가입" />
				</form>