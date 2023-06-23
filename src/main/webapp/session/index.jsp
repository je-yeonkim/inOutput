<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>index</title>
<style>
  a{
    text-decoration:none;
    color : black;
   }
</style>
</head>
<body>
 <h3>인덱스페이지</h3>
 <a href="register.jsp">회원등록</a>ㅣ
 <a href="list.jsp">회원 목록</a>ㅣ
 <a href="update.jsp">회원 수정</a>ㅣ
 <a href="delete.jsp">회원 삭제</a>ㅣ
 <a href="login.jsp">로그인</a>ㅣ
 <a href="logout.jsp">로그아웃</a>

 <!-- 
   login.jsp,loginService.jsp
   login.jsp입력값은 loginService.jsp전달.
   loginService.jsp에서 입력 값을 변수에 저장 후 검증("admin,1234")
   로그인 성공 시 session에 아이디 저장 후 index.jsp로 이동
   로그인 실패 시 login.jsp로 이동
  -->
</body>
</html>