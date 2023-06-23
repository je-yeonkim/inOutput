<%@page import="session.MemberDTO"%>
<%@page import="session.MemberDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
  request.setCharacterEncoding("utf-8");
  String id = request.getParameter("id");
  String pw = request.getParameter("pw");
  String confPw = request.getParameter("confirmPw");
  String name = request.getParameter("name");
  String email = request.getParameter("email");
  
  if(id == null || id.isEmpty()){
	  response.sendRedirect("register.jsp");
	  return;
  }
  if(pw == null || pw.isEmpty()){
	  response.sendRedirect("register.jsp");
	  return;
  }
  if(pw.equals(confPw)==false){
	  response.sendRedirect("register.jsp");
	  return;
  }
  
  
  MemberDAO memberDao = new MemberDAO();
  //아이디 중복 확인 
  MemberDTO memberDto = memberDao.selectId(id);
  String msg="",path="";
   if(memberDto==null){
	   //아이디가 중복이 아니면 테이블에 데이터 저장
	  memberDao.register(id,pw,name,email);
	 // MemberDTO member = new MemberDTO();
	  //member.setId(id);
	  //member.setPw(pw);
	  //member.setName(name);
	  //member.setEmail(email);
	  //memberDao.register(member);
	  
	  //회원가입 후 페이지 이동
	  //response.sendRedirect("index.jsp");
	  msg="회원가입";
	  path="index.jsp";
  }else{
	  //아이디 중복
	  //회원가입 후 페이지 이동
		msg = "회원 가입 실패";
		path = "register.jsp";
	}
   memberDao.disconnection();
%>

<script>alert('<%=msg%>'); location.href='<%=path%>';</script>

