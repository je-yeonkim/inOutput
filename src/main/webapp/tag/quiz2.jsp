<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>quiz1</title>
</head>
<body>
 <h2>합계 구하기</h2>
 <%
 int total=0; int tmp=0; int odd=0;
 for(int i= 1; i <101;i++){
	 total = total+i;
	 if(i % 2 ==0){
		 tmp = tmp + i;
	 }else{
		 odd = odd +i;
	 }
 }
 %>
<br>1~100까지의 합 : <%=total %>
<br>짝수의 합 : <%=tmp%>
<br>홀수의 합 : <%=odd%>
<br>

<form action="ex1.html" method="post"></form>
 

</body>
</html>