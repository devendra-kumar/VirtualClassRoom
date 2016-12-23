<%-- 
    Document   : pptuploadupdate
    Created on : Dec 6, 2014, 3:42:20 PM
    Author     : Shreya
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" import="java.sql.*"%>
<%
try{
		Class.forName("com.mysql.jdbc.Driver");
		Connection c= DriverManager.getConnection("jdbc:mysql://localhost:3306/virtual", "root", "12345");
		Statement s= c.createStatement();
                                String subject=request.getParameter("subject");
                                String unit=request.getParameter("unit");
                                String filename="PPT\\\\"+request.getParameter("file1");
                                String sql="insert into ppt values('"+subject+"','"+filename+"','"+unit+"')"; 
                                s.execute(sql);
                                response.sendRedirect("pptupload.jsp");
	}catch(Exception e) {out.println(e);   }
%>
