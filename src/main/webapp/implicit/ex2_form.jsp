<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ex2_form</title>
</head>
<body>
  <!--<form action="http://localhost:8085/jsp_exam/implicit/ex2_result.jsp"> 절대경로(서버가 다를때 쓸 수 있음)-->
  <!-- http://localhost:8085/jsp_exam/implicit/ex2_result.jsp?asd=admin&pw=1234 -->
  <form action="ex2_result.jsp" method="post">
      <input type="text" placeholder="아이디" name="id"><br>
      <input type="password" placeholder="비밀번호" name="pw"/> <br>
      <input type="submit" value="로그인" />  <!-- form태그와 submit은 짝이다. 입력값을 전달할 수 있다. -->
      <input type="button" value="취소" onclick="javascript:location.href='ex1.jsp'"/> 
      <input type="reset" value="지우기" />  
   </form>
</body>
</html>