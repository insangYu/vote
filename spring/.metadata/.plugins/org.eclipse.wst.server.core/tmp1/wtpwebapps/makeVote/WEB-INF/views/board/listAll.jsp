<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page session="false" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
    var result ='${msg}';
    
    if(result == '성공'){
        alert(result+'입니다.');
    }else{
        alert(result+'게시판등록 실패입니다.');
    }
    
</script>
 
 
</head>
<body>
 
    <table class="table table-board" border="1px" width="80%" align="center">
        <tr>
            <th style="width:10%" >글 번호</th>
            <th style="width:30%">제목</th>
            <th style="width:20%">작성자</th>
            <th style="width:20%">날짜</th>
            <th style="width:20%">조회수</th>
        </tr>
 
 
    <c:forEach items="${boardList}" var="boardDTO">
        <tr>
            <td>${boardDTO.b_no}</td>
            <td><a href="/board/detail?b_no=${boardDTO.b_no}">${boardDTO.b_title}</a></td>
            <td>${boardDTO.b_writer}</td>
            <td><fmt:formatDate pattern="yyyy-MM-dd HH:mm" value="${boardDTO.b_date}" /> </td>
            <td><span> ${boardDTO.b_count}</span> </td>
        </tr>
    </c:forEach>
    </table>
    <a href="create">글 작성</a>
</body>
</html>
