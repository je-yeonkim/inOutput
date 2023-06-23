<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ex2</title>
</head>
<body>
   <%--주석
       <%@ Directive %> : 자바 페이지 환경 설정(exam: include file, import)include file하면 복사 붙여넣기처럼 된다. 1번파일/ 2번파일에 1번 파일 include 하면 복붙됨
       <%! Declaration%> : 자바 코드 작성(클래스에 작성 방식, field, method)
       <%= Expression %> : out.print()와 같은 출력문 작성
       <% Scriptlet %> : 자바 코드 작성(메서드 안에 작성 방식)
    --%>
    <%
      String name= "홍길동";
    %>
    
    <h1>이름은 <%= 10+30 %> 입니다.</h1><%--표현식은 ;붙지 않는다. --%>
    <h1>이름은 <%out.print(name); %> 입니다.</h1>
    
</body>
</html>