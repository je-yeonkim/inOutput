<%@page import="session_board.BoardDTO"%>
<%@page import="session_board.BoardDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>boardContent</title>
</head>
<body>
<%
String id = (String)session.getAttribute("id");
if(id == null){
	response.sendRedirect("../session_quiz/login.jsp");
	return;
}
 String num =(String) session.getAttribute("no");
 int no = Integer.parseInt(num);
 BoardDAO boardDao = new BoardDAO();
 BoardDTO boardDto = boardDao.selectContent(no);
%>
<%@ include file="/session_quiz/header.jsp"%>
 <div align="center">
    <h1>글 내용</h1>
     <table border=1>
       <tr>
         <th>작성자</th>
         <th><%=id %></th>
         <th>조회수</th>
         <td><%=boardDto.getHits() %></td>
       </tr>
       <tr>
         <th>작성일</th>
         <th><%=boardDto.getWriteDate() %></th>
         <th>다운로드</th>
         <td><%=boardDto.getFileName() %></td>
       </tr>
       <tr>
         <th>제목</th>
         <td colspan="3"><%=boardDto.getTitle() %></td>
       </tr>
         <tr>
         <th>문서내용</th>
         <td colspan="3"><%=boardDto.getContent() %></td>
       </tr>
       <tr>
       <td colspan="4">
         <input type="button"  value="목록">
         <input type="button"  value="수정">
         <input type="button"  value="삭제">
         </td>
       </tr>
     </table>
 </div> 

</body>
</html>