<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ex5_A</title>
</head>
<body>
 <%
 //forward는 url이 바뀌지 않고 ex5_B의 화면을 보여줌 클라이언트의 요청이 전달되지 않음 트래픽이 줄어든다
  request.getRequestDispatcher("ex5_B.jsp").forward(request,response);
 %>
</body>
</html>