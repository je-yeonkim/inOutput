<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ex3</title>
</head>
<body>
   <%--주석
       <%@ Directive %> : 자바 페이지 환경 설정(exam: include file, import)include file하면 복사 붙여넣기처럼 된다. 1번파일/ 2번파일에 1번 파일 include 하면 복붙됨
       <%! Declaration%> : 자바 코드 작성(클래스에 작성 방식, field, method)
       <%= Expression %> : out.print()와 같은 출력문 작성
       <% Scriptlet %> : 자바 코드 작성(메서드 안에 작성 방식)
    --%>
    <%
      String data1= "100";
      String data2="1.2";
      
      int intData=Integer.parseInt(data1);
      double doubleData = Double.parseDouble(data2);
      double result = intData + doubleData;
    %>
    
    <h3>결과는 <%= intData+doubleData %> 입니다.</h3>
    <h3>결과는 <% out.print(intData+doubleData);%> 입니다.</h3>
    
</body>
</html>