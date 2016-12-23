<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Faculty</title>
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

<form action="fac_profile.jsp"  method="post" >

    <table  width="960" border="0" cellpadding="0" cellspacing="4" bgcolor="grey" align="center">
<tr>
 <td>
 <center><img src="nit.jpg" width="1180"height="100" ></center>
</td>
</tr>
<tr>
<td align="left" style="word-spacing:6px;font-size:120%;padding-right:30px;color:#888888;white-space:nowrap;">
    <a href="fac_profile.jsp" title="Home" class=" tablecontent menubar">Home </a>  | 
<a href="facupdate.jsp" title="update" class=" tablecontent menubar">Edit Profile</a>|  
<a href="pptupload.jsp" title="faculty" class=" tablecontent menubar">PPT(upload)</a>| 
<a href="pptdel.jsp" title="faculty" class=" tablecontent menubar">PPT(del)</a>|
<a href="videoupload.jsp" title="faculty" class=" tablecontent menubar">Video(up)</a>|
<a href="videodel.jsp" title="faculty" class=" tablecontent menubar">Video(del)</a>|
<a href="fquestion.jsp" title="faculty" class=" tablecontent menubar">Question_By(Student)</a>|
<a href="fquestionadmin.jsp" title="faculty" class=" tablecontent menubar">Question_To(Admin)</a>|
<a href="answer_to_student.jsp" title="faculty" class=" tablecontent menubar">Answer_To(Student)</a>|
<a href="fanswer_by_admin.jsp" title="faculty" class=" tablecontent menubar">Answer_By(Admin)</a>
|<a href="Logout.jsp" title="tell" class=" tablecontent menubar">Logout</a>
</td>
</tr>
</table>






<%
String user =(String)session.getAttribute("fuser");



try{
		Class.forName("com.mysql.jdbc.Driver");
		Connection c= DriverManager.getConnection("jdbc:mysql://localhost:3306/virtual", "root", "12345");
		Statement s= c.createStatement();
		String sql="select * from faculty where user='"+user+"'";
	
		
			ResultSet rs= s.executeQuery(sql);
		rs.next();
		

%>
  
  

<br>
<br>
<br>
 <table border=0 cellspacing=2 cellpadding=2 width="100%"> 
<tr>  <td bgcolor="#FFFF99"><table cellpadding=0 cellspacing=0 border=1 width=100%>   <tr>   <td bgcolor="green" align=center style="padding:2;padding-bottom:4">   <font size=-1 color="white" face="verdana,arial"> <b>Profile</b></font></tr>
<TR> 
      <TD width="50%"> 
      <TABLE  cellspacing=2 cellpadding=2 width="100%"> 
      <TR>
      <td>
     
			<center> <img src="<% out.println(rs.getString(7)); %>" width=100 height= 100 > </center>
		</td>
		</TR>
			<tr><td>Logged in as <input type="text" name="user" readonly="true" value="<% out.println(rs.getString(1)); %>"></td></tr> 
		
   
      </TABLE> 
   </TD> 
   <TD> 
      <TABLE border=0 cellspacing=2 cellpadding=2 width="100%"> 
      <TR> 
         <TD>
	<tr><td>  <font face="verdana,arial" size=-1>  Name: </font></td>  <td>  <input type="text" name="name" readonly="true" value="<% out.println(rs.getString(3)); %>">  </td>  </tr>
        <tr><td>  <font face="verdana,arial" size=-1>   Branch:</font></td>  <td>   <input type="text" name="branch" readonly="true" value="<% out.println(rs.getString(6)); %>">  </td>  </tr>

	<tr><td>  <font face="verdana,arial" size=-1>   Subject:</font></td>  <td>   <input type="text" name="subject" readonly="true" value="<% out.println(rs.getString(5)); %>">  </td>  </tr>

	<tr><td>  <font face="verdana,arial" size=-1>   Contact No..:</font></td>  <td>   <input type="text" name="phno" readonly="true" value="<% out.println(rs.getString(4)); %>">  </td>  </tr>
 
	      </TABLE> 
   </TD>    
</TABLE> 

</td>
</tr>
</table>

<%		
		
		String branch=rs.getString(6);
		String year=rs.getString(5);
		session.setAttribute("branch",branch);
		session.setAttribute("year",year);
		rs.close();
		s.close();
		c.close();
	}
	catch(Exception e) { out.println(e);  }

%>


</form>
</body>
</html>
