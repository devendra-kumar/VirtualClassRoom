<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<SCRIPT type="text/javascript">
    window.history.forward();
    function noBack() { window.history.forward(); }
</SCRIPT>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Pending Faculty Request(Admin)</title>
<link href="StyleSheet1.css" type="text/css" rel="Stylesheet" />
        <style>
a:link {color:#FF0000;}    /* unvisited link */
a:visited {color:#00FF00;} /* visited link */
a:hover {color:#FF00FF;}   /* mouse over link */
a:active {color:#0000FF;}  /* selected link */
</style>
</head>
<body bgcolor="#FFFF99" > 

<form action="facultysignup.jsp"  method="post" >

    <table  width="960" border="0" cellpadding="0" cellspacing="4" bgcolor="black" align="center">
<tr>
 <td>
 <center><img src="nit.jpg" width="960" height="100" ></center>
</td>
</tr>
<tr>
<td align="left" style="word-spacing:6px;font-size:120%;padding-right:30px;color:#888888;white-space:nowrap;">
    <a href="student.jsp" title="student" class=" tablecontent menubar">Student </a>  | 
    <a href="studentsignup.jsp" title="studensignupt" class=" tablecontent menubar">Student req </a>  | 
    <a href="faculty.jsp" title="faculty" class=" tablecontent menubar"> Faculty </a>  | 
    <a href="facultysignup.jsp" title="faculty signup requests" class=" tablecontent menubar">Faculty req </a>  | 
    <a href="pptuploadadmin.jsp" title="faculty" class=" tablecontent menubar"> PPT(upload) </a>  | 
    <a href="pptdeladmin.jsp" title="faculty" class=" tablecontent menubar"> PPT(del) </a>  |
    <a href="videouploadadmin.jsp" title="faculty" class=" tablecontent menubar"> Video(up) </a>  |
    <a href="videodeladmin.jsp" title="faculty" class=" tablecontent menubar"> Video(del) </a>  |
    <a href="see_question_admin.jsp" title="faculty" class=" tablecontent menubar"> Question </a>  |
    <a href="answer_admin." title="faculty" class=" tablecontent menubar"> Answer </a>  |
    <a href="Logout.jsp" title="faculty" class=" tablecontent menubar"> Logout </a>  
 
</td></tr>
</table>
<br>
<br>
<h4 align="center"><b>User Name   :  </b><input type="text" value="" name="user"> &emsp; &emsp; <input type="submit" value="ADD"   >
</h4><br>
<br>
<table  width="960" border="0" cellpadding="0" cellspacing="4" border=2 background="G:\Classroom1.jpg" align="center">
<tr>
 <td>

 <%
	try{
		Class.forName("com.mysql.jdbc.Driver");
		Connection c= DriverManager.getConnection("jdbc:mysql://localhost:3306/virtual", "root", "12345");
		Statement s= c.createStatement();
		String sql="select * from facultysignup ";
			ResultSet rs= s.executeQuery(sql);
%>
<tr><td><b>USERNAME</b><td><b>PASSWORD</b><td><b>NAME</b><td><b>PHONE NO</b><td><b>SUBJECT</b><td><b>BRANCH</b> 
<%			
			while( rs.next() )
			{
%>
				<tr><td>
<%					
					out.println(rs.getString(1));
%>
<td>
<%					
		     		out.println(rs.getString(2));
%>
<td>
<%					
		
					out.println(rs.getString(3));
%>
<td>
<%					

					out.println(rs.getString(4));
%>
<td>
<%					
		
					out.println(rs.getString(5));
%>
<td>
<%					

					out.println(rs.getString(6));
					
					
			}	
		rs.close();
		
		String user=request.getParameter("user");
		String sql1;
		if(user!=null)
		{	
			sql1="select * from facultysignup where user='"+user+"' ";
			ResultSet rs1= s.executeQuery(sql1);
			rs1.next();
			String pic=rs1.getString(1);
                        pic=pic+".jpg";
			sql1="insert into faculty values('"+rs1.getString(1)+"','"+rs1.getString(2)+"','"+rs1.getString(3)+"','"+rs1.getString(4)+"','"+rs1.getString(5)+"','"+rs1.getString(6)+"','"+pic+"' )"; 
			s.execute(sql1);
		
			sql="delete from facultysignup where user='"+user+"'";
			s.execute(sql);
			rs1.close();
		}
			
		
		s.close();
		c.close();
		}catch(Exception e) {  out.println(e);}
%>
</td>
</tr>
</table> 

</form>

</body>
</html>
