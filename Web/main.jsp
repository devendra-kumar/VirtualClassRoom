<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Virtual Class Room</title>
<link href="StyleSheet1.css" type="text/css" rel="Stylesheet" />
        <style>
a:link {color:#FF0000;}    /* unvisited link */
a:visited {color:#00FF00;} /* visited link */
a:hover {color:#FF00FF;}   /* mouse over link */
a:active {color:#0000FF;}  /* selected link */
</style>
</head>
<SCRIPT type="text/javascript">
    window.history.forward();
    function noBack() { window.history.forward(); }
</SCRIPT>
<body bgcolor="#FFFF99" > 


<form action="main.jsp"  method="post" >

    <table  width="960" border="0" cellpadding="0" cellspacing="0" bgcolor="grey" align="center">
        <tr align="center">
 <td>        
 <center><img src="nit.jpg" width="960"height="100"/></center>
</td>
</tr>
<tr align="center">
<td align="left" style="word-spacing:6px;font-size:120%;padding-right:30px;color:#888888;white-space:nowrap;">
    <a href="studlogin.jsp" title="student" class=" tablecontent menubar">Student login </a>  | 
    <a href="faclogin.jsp" title="faculty" class=" tablecontent menubar"> Faculty login </a>  | 
 

</td></tr>
</table>


    <table align="center">
        
        <tr align="center"><td>Admin Login</td>
        <tr align="center"><td><input type="password" value="" name="pass" >
        <tr align="center"><td><input type="submit" value="Login" onclick="fu(this.form)" >
	</td></tr>	
</table>
    <br/><br/>
    <img src="Cover.jpg" width="960" height="250"/>
<%

String pass1=request.getParameter("pass");
try{
	Class.forName("com.mysql.jdbc.Driver");
	Connection c= DriverManager.getConnection("jdbc:mysql://localhost:3306/virtual", "root", "12345");
	Statement s= c.createStatement();
 	String sql="select pass from admin";
	ResultSet rs= s.executeQuery(sql);
	rs.next();
	if( pass1.equalsIgnoreCase(rs.getString(1)) )
	{
		%>
		<jsp:forward page="admin.jsp"></jsp:forward>
		<%
	}
	rs.close();
	s.close();
	c.close();
	}
	catch(Exception e) {}
%>
</form><br><br>
<jsp:include page="framebottom.jsp"></jsp:include>
</body>
</html>
