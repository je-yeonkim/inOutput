<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ex3_make</title>
</head>
<body>
   <%
      //쿠키 생성 후 클라이언트에게 전달.
       Cookie cookie = new Cookie("popup", "popup");//값을 무조건 갖는 생성자 (쿠키의 이름, 쿠키의 값)
      cookie.setMaxAge(30);
      response.addCookie(cookie);
   %>
   <script>window.close()</script>
</body>
</html>