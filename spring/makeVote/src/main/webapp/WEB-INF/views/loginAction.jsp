<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ page import="com.bcvs.makevote.user.UserDAO"%>

<%@ page import="java.io.PrintWriter"%>

<%
	request.setCharacterEncoding("UTF-8");
%>

<jsp:useBean id="user" class="com.bcvs.makevote.user.User" scope="page" />
<jsp:setProperty name="user" property="userid" />
<jsp:setProperty name="user" property="pwd1" />

<!DOCTYPE html>

<html>

<head>

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<title>Insert title here</title>
</head>

<body>

	<%
		UserDAO userDAO = new UserDAO();
		int result = userDAO.login(user.getUserid(), user.getPwd1());
		String userid = request.getParameter("userid");
		
		if (result == 1) {
			
			session.setAttribute("userid", userid);
			PrintWriter script = response.getWriter();
			script.println("<script>");
			script.println("location.href = 'index.jsp'");
			script.println("</script>");
		}

		else if (result == 0) {
			PrintWriter script = response.getWriter();
			script.println("<script>");
			script.println("alert('아이디 또는 비밀번호가 다릅니다.')");
			script.println("history.back()");
			script.println("</script>");
		}

		else if (result == -1) {

			PrintWriter script = response.getWriter();
			script.println("<script>");
			script.println("alert('아이디 또는 비밀번호가 다릅니다.')");
			script.println("history.back()");
			script.println("</script>");
		}

		else if (result == -2) {

			PrintWriter script = response.getWriter();
			script.println("<script>");
			script.println("alert('데이터베이스 오류가 발생했습니다.')");
			script.println("history.back()");
			script.println("</script>");
		}
	%>

</body>

</html>