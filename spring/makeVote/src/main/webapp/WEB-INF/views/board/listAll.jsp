<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset="UTF-8">   
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	<title>Block Chain Voting</title>
	
	<script type="text/javascript">
    var result ='${msg}';
    
    if(result == '성공'){
        alert(result+'입니다.');
    }else{
        alert(result+'게시판등록 실패입니다.');
    }
    
</script>
	<!-- 부트스트랩 CSS 추가 -->
	<link rel="stylesheet" href="//maxcdn.bootstrapcdn.com/bootstrap/latest/css/bootstrap.min.css">
	
	<!-- 커스텀 CSS 추가 -->
	<link rel="stylesheet" href="./css/login.css">
	<link rel="stylesheet" href="./css/login.min.css">
</head>

<body>
  <nav class="navbar navbar-expand-lg navbar-light fixed-top" id="mainNav">
      <div class="container">
        <a class="navbar-brand js-scroll-trigger" href="./index.jsp">전북대학교 투표시스템 </a>
        <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarResponsive">
          <ul class="navbar-nav ml-auto">
            <li class="nav-item">
              <a class="nav-link js-scroll-trigger" href="./votemainpage.jsp">Vote</a>
            </li>
            <li class="nav-item">
              <a class="nav-link js-scroll-trigger" href="#">Introduction</a>
            </li>
            <li class="nav-item">
              <a class="nav-link js-scroll-trigger" href="#contact">Contact Us</a>
            </li>
            <li class="nav-item">
              <a class="nav-link js-scroll-trigger" 
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
            </li>
          </ul>
        </div>
      </div>
    </nav>

    <header class="masthead text-center text-white d-flex">
      <div class="container">
	<section id="content">
		<form action="">
			<h1>VoteMainPage</h1><br><br>
			<hr>
			<center>
			<table class="table table-board" border="1px" width="80%" align="center">
        <tr>
            <th style="width:10%" >글 번호</th>
            <th style="width:30%">선거</th>

        </tr>
 
 
    <c:forEach items="${boardList}" var="boardDTO">
        <tr>
            <td>${boardDTO.b_no}</td>
            <td><a href="/board/detail?b_no=${boardDTO.b_no}">${boardDTO.b_title}</a></td>

        </tr>
    </c:forEach>
    </table>
    <a href="create">글 작성</a>
			</center>
		</form><!-- form -->
		
	</section><!-- content -->
</div><!-- container -->
    </header>

    <section id="contact">
      <div class="container">
        <div class="row">
          <div class="col-lg-8 mx-auto text-center">
            <h2 class="section-heading">Let's Get In Touch!</h2>
            <hr class="my-4">
            <p class="mb-5">Ready to start your next project with us? That's great! Give us a call or send us an email and we will get back to you as soon as possible!</p>
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
<script src="//maxcdn.bootstrapcdn.com/bootstrap/latest/js/bootstrap.min.js"></script>

</body>
</html>