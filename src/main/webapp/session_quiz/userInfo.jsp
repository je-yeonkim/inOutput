<%@page import="session_quiz.MemberDTO"%>
<%@page import="session_quiz.MemberDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/session_quiz/header.jsp" %>

	<%      String sessionId = (String)session.getAttribute("id");
	        if(sessionId == null){
	        	response.sendRedirect("login.jsp");
	        	return;
	        }
	        String reqId = request.getParameter("id");
	        if(reqId == null){
	        	response.sendRedirect("memberInfo.jsp");
	        	return;
	        }
	        if(reqId.equals(sessionId) == false){
	        	response.sendRedirect("memberInfo.jsp");
	        	return;
	        }
			MemberDAO memberDao = new MemberDAO();
			MemberDTO memberDto = memberDao.selectId(reqId);
            memberDao.disConnection();
		%>
<div align="center">
	<h1>개인정보</h1>
	<form action="loginService.jsp" method="post" id="f">
		아이디 : <%=memberDto.getId() %><br>
		비밀번호 : <%=memberDto.getPw() %><br>
		이름 : <%=memberDto.getUserName() %><br>
		주소 : <%=memberDto.getAddress() %><br>
		전화번호 : <%=memberDto.getMobile() %><br>
		<button type="button" onclick="location.href='update.jsp'">회원수정</button>
		<button type="button" onclick="location.href='delete.jsp'">회원삭제</button>
	</form>
	
</div>

<%@ include file="footer.jsp" %>