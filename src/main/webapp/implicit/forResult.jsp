<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>forResult</title>
</head>
<body>
 <h2>계산 결과</h2>
  <%
   String number = request.getParameter("num");
 
   int num =0;
   try{
	   num= Integer.parseInt(number);
   }catch(Exception e){
	   
   %>
  <!--    <script>
     alert('숫자만 입력하세요.');
     location.href='forForm.jsp';
   </script>-->
   
   <% 	   
	  response.sendRedirect("forForm.jsp");
	   //return;//jsp 페이지를 종료
   }
   out.print("<script>alert('코드실행')</script>");
   int total =0;
   for(int i =1; i<=num;i++){
	 total = total+i;
      out.print(i);
      if(i<num)
    	  out.print("+");
 }
   out.print("=" +total);
 
 %>
</body>
</html>