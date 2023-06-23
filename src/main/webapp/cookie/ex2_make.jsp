<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ex2_make</title>
</head>
<body>
  <%
   Cookie cookie = new Cookie("cookieName", "cookieValue");//값을 무조건 갖는 생성자 (쿠키의 이름, 쿠키의 값)
   //쿠키 유효기간 
   cookie.setMaxAge(30);//(초) (30)30초 후에 사라짐 (60*60*24*7) 일주일 후에 사라짐
   
   //서버가 클라이언트(웹브라우저)에게 생성한 쿠키를 전달함.
   response.addCookie(cookie);
   
  
  %>
  <a href="ex2_check.jsp">쿠키 확인하러 가기</a>
</body>
</html>