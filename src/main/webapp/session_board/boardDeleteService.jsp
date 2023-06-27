<%@page import="java.io.File"%>
<%@page import="session_board.BoardDTO"%>
<%@page import="session_board.BoardDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
  String id = (String)session.getAttribute("id");
   if(id == null){
	response.sendRedirect("../session_quiz/login.jsp");
	return;
}
 
 
   String n = request.getParameter("no");
	out.print("n : " + n);
	int no = 0;
	try{
		no = Integer.parseInt(n);
	}catch(Exception e){
		response.sendRedirect("boardContent.jsp?no="+no);
		return;
	}
	
	 BoardDAO boardDao= new BoardDAO();
	 BoardDTO board = boardDao.searchForModify(no);
	 if(board == null){
		 response.sendRedirect("boardContent.jsp?no="+no);
		 return;
	 }
  
  if(id.equals(board.getId()) == false){
	  response.sendRedirect("boardContent.jsp?no="+no);
	  return; 
  }
  boardDao.delete(no);
  boardDao.disConnection();
  
  String saveDir = "C:\\javas\\upload\\" + id + "\\" + board.getFileName();
	File f = new File(saveDir);
	if(f.exists() == true){
		f.delete();	
	}
	
	response.sendRedirect("boardForm.jsp");
%>