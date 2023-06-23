<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ex6_A</title>
</head>
<body>
<%
  pageContext.setAttribute("id", "pageId");//페이지에서만 유지
  request.setAttribute("id","requestId");//요청에서만 유지
  session.setAttribute("id", "sessionId");//웹브라우저 닫으면 삭제
  application.setAttribute("id", "applicationId");//서버가 사라져야 꺼짐
  
  request.getRequestDispatcher("ex6_B.jsp").forward(request,response);
%>
</body>
</html>