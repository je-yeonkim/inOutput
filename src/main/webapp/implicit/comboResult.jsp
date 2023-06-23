<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%
 String serch = request.getParameter("search");
 response.sendRedirect(serch);
 %>
