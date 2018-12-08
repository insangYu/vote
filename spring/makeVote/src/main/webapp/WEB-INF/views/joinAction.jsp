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
<jsp:setProperty name="user" property="fullname" />
<jsp:setProperty name="user" property="email" />
<jsp:setProperty name="user" property="tel" />



<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<title>Insert title here</title>
</head>
<body>

	<%
		if (user.getUserid() == null || user.getPwd1() == null || user.getFullname() == null
				|| user.getEmail() == null || user.getTel() == null) {

			PrintWriter script = response.getWriter();
			script.println("<script>");
			script.println("alert('입력이 안된 사항이 있습니다')");
			script.println("history.back()");
			script.println("</script>");

		} else {

			UserDAO userDAO = new UserDAO();

			int result = userDAO.join(user);

			if (result == -1) {

				PrintWriter script = response.getWriter();
				script.println("<script>");
				script.println("alert('이미 존재하는 아이디입니다')");
				script.println("history.back()");
				script.println("</script>");

			}

			else {

				PrintWriter script = response.getWriter();
				
				script.println("<script>");
				script.println("location.href='index.jsp'");
				//script.println("history.back()");
				script.println("</script>");
			}

		}
	%>

</body>

</html>
