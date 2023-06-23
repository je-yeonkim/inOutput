<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
  session.invalidate();//세션 아래에 있는 것들 다 삭제 
  response.sendRedirect("index.jsp");
%>
 <script>
  alert('로그아웃');
  //location.href='index.jsp';
 </script>