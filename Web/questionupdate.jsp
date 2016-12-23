<%-- 
    Document   : questionupdate
    Created on : Oct 21, 2014, 2:33:56 PM
    Author     : Shreya
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" import="java.sql.*"%>
<!DOCTYPE html>
<%
String user=(String)session.getAttribute("user");
String sub=request.getParameter("sub");
String ques=request.getParameter("ques");
try{
Class.forName("com.mysql.jdbc.Driver");

Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/virtual", "root", "12345");
PreparedStatement ps=con.prepareStatement("insert into question(que,askedby,subject,status) values(?,?,?,?)");
ps.setString(1, ques);
ps.setString(2, user);
ps.setString(3, sub);
ps.setString(4, "unans");
ps.execute();
response.sendRedirect("question.jsp");
con.close();
}catch(Exception e)
{
out.println("hello error");
}
%>

