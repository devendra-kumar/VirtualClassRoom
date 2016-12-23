<%-- 
    Document   : Logout
    Created on : Mar 23, 2014, 1:16:04 AM
    Author     : Shreya
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@page import="java.util.*" %>
<%
 session.removeAttribute("user");
 session.removeAttribute("branch");
 session.removeAttribute("year");
 session.removeAttribute("pass");
 session.removeAttribute("fuser");
 response.setHeader("Cache-Control","no-cache"); 
response.setHeader("Cache-Control","no-store"); 
response.setDateHeader("Expires", 0); 
session.invalidate();
response.sendRedirect("main.jsp");
%>
