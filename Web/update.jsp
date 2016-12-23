<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Update Profile(Student)</title>
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
<form  action="update.jsp" method="post" >
    <table  width="960" border="0" cellpadding="0" cellspacing="4" bgcolor="grey" align="center">
<tr>
 <td>
 <center><img src="nit.jpg" width="960"height="100" ></center>
</td>
</tr>
<tr>
<td align="left" style="word-spacing:6px;font-size:120%;padding-right:30px;color:#888888;white-space:nowrap;">
    <a href="profile.jsp" title="Home" class=" tablecontent menubar">Home </a>  | 
    <a href="update.jsp" title="update" class=" tablecontent menubar"> Edit Profile </a>  | 
    <a href="study.jsp" title="study" class=" tablecontent menubar">Study material</a>  | 
    <a href="video.jsp" title="video" class=" tablecontent menubar">Video Lectures</a>  | 
    <a href="question.jsp" title="ask" class=" tablecontent menubar">Ask doubts</a>  | 
    <a href="student_answer.jsp" title="tell" class=" tablecontent menubar">Answers</a>
  |<a href="main.jsp" title="tell" class=" tablecontent menubar">Logout</a>
</td>
</tr>
</table>



<%
String name=request.getParameter("name");
String username=request.getParameter("username");
String pas=request.getParameter("pass");

String branch=request.getParameter("branch");
String year=request.getParameter("year");
String phno=request.getParameter("ph_no");
String user =(String)session.getAttribute("user");
try{
		Class.forName("com.mysql.jdbc.Driver");
		Connection c= DriverManager.getConnection("jdbc:mysql://localhost:3306/virtual", "root", "12345");
		Statement s= c.createStatement();
		String sql="select * from student where user='"+user+"'";
		ResultSet rs= s.executeQuery(sql);
		rs.next();
		

%>


<center><table cellpadding=2 cellspacing=0 border=0>


<tr>  
    <td bgcolor="#FFFF99">
        <table cellpadding=0 cellspacing=0 border=1 width=100%>
            <tr>   
                <td bgcolor="green" align=center style="padding:2;padding-bottom:4">
                    <b><font size=-1 color="white" face="verdana,arial"> Edit Profile</font></b></</tr>
<tr><td bgcolor="#FFFF99" style="padding:5"><br>
<TABLE border=0 cellspacing=2 cellpadding=2 width="100%"> 

<tr>  <td bgcolor="#FFFF99"><table cellpadding=0 cellspacing=0 border=1 width=100%>   <tr>   <td bgcolor="green" align=center style="padding:2;padding-bottom:4">   <b><font size=-1 color="white" face="verdana,arial"> Profile picture</font></b><td bgcolor="green" align=center style="padding:2;padding-bottom:4"> <b><font size=-1 color="white" face="verdana,arial">Personal info</font></b>

<TR> 
   <TD width="50%"> 
      <TABLE  cellspacing=2 cellpadding=2 width="100%"> 
      <TR> 
         <TD>
	<center><img src="<% out.println(rs.getString(7)); %>" width=150 height=150  ></center>
	<center>
            <pre><input type="file" value="Changle Picture"></pre>
	</center>
	</TD> 
      </TR> 
      </TABLE> 
   </TD> 
   <TD> 
	<center><table>
	<tr><td>  <font face="verdana,arial" size=-1>  Name:</font></td>  <td>  <input type="text" name="name" value="<% out.println(rs.getString(3)); %>">  </td>  </tr>
	
        <tr><td>  <font face="verdana,arial" size=-1>   User_name:</font></td>  <td>   <input type="text" name="username" readonly="true" value="<% out.println(rs.getString(1)); %>">  </td>  </tr>
	
	<tr><td>  <font face="verdana,arial" size=-1>   Password:</font></td>  <td>   <input type="password" name="pass" value="<% out.println(rs.getString(2)); %>">  </td>  </tr>
	

	<tr><td>   <font face="verdana,arial" size=-1> Branch:</font></td>   <td><select name="branch">
									<option value="it">IT</option> 
									<option value="mech">MECH</option>
									<option value="comp">Comp</option>
									<option value="entc">Entc</option>
									</select></td></tr>
		
	<tr><td>   <font face="verdana,arial" size=-1> Year:</font></td>   <td><select name="year">
									<option value="fe">FE</option> 
									<option value="se">SE</option>
									<option value="te">TE</option>
									<option value="be">BE</option>
									</select></td></tr>
		
	<tr><td>  <font face="verdana,arial" size=-1>   Contact No..:</font></td>  <td>   <input type="text" name="ph_no" value="<% out.println(rs.getString(4)); %>">  </td>  </tr>
	
	<tr><td><font face="verdana,arial" size=-1>&nbsp;</font></td><td><font face="verdana,arial" size=-1><input type="submit" value="Update"   ></font>	
	</table></center>
</table>
</td>
<%		

String sql1="update student set user='"+username+"',pass='"+pas+"',name='"+name+"',ph_no='"+phno+"',year='"+year+"',branch='"+branch+"' where user='"+user+"'"; 

s.execute(sql1);
	%>
		<jsp:forward page="profile.jsp" />
	<%

    
		
			s.close();
		c.close();
	}
	catch(Exception e) {  }


 %>

</table>
</table>

</td>
</tr>
</table>
</center>

</form>


</body>
</html>
