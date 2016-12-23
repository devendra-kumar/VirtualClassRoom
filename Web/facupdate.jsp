<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Faculty Profile Update</title>
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
<form  action="facupdate.jsp" method="post" >
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
<a href="pptdel.jsp" title="faculty"class=" tablecontent menubar">PPT(del)</a>|
<a href="videoupload" title="faculty"class=" tablecontent menubar">Video(up)</a>|
<a href="videodel.jsp" title="faculty"class=" tablecontent menubar">Video(del)</a>|
<a href="fquestion.jsp" title="faculty"class=" tablecontent menubar">Question_By(Student)</a>|
<a href="fquestionadmin.jsp" title="faculty"class=" tablecontent menubar">Question_To(Admin)</a>|
<a href="answer_to_student.jsp" title="faculty"class=" tablecontent menubar">Answer_To(Student)</a>|
<a href="fanswer_by_admin.jsp" title="faculty"class=" tablecontent menubar">Answer_By(Admin)</a>|
|<a href="Logout.jsp" title="tell"class=" tablecontent menubar">Logout</a>
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


<center><table cellpadding=2 cellspacing=0 border=0>


<tr>  <td bgcolor="#FFFF99"><table cellpadding=0 cellspacing=0 border=1 width=100%>   <tr>   <td bgcolor="green" align=center style="padding:2;padding-bottom:4">   <b><font size=-1 color="white" face="verdana,arial"> Edit Profile</font></b></tr>
<tr><td bgcolor="#FFFF99" style="padding:5"><br>
<TABLE border=0 cellspacing=2 cellpadding=2 width="100%"> 

<tr>  <td bgcolor="#FFFF99"><table cellpadding=0 cellspacing=0 border=1 width=100%>   <tr>   <td bgcolor="green" align=center style="padding:2;padding-bottom:4">   <b><font size=-1 color="white" face="verdana,arial"> Profile picture</font></b><td bgcolor="green" align=center style="padding:2;padding-bottom:4"> <b><font size=-1 color="white" face="verdana,arial">Personal info</font></b>

<TR> 
   <TD width="50%"> 
      <TABLE  cellspacing=2 cellpadding=2 width="100%"> 
      <TR> 
         <TD>
	<center><img src="<%out.println(rs.getString(7));%>" width=150 height=150  ></center>
	<center>
            <pre><input type="file"></pre>
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
	
	<tr><td>  <font face="verdana,arial" size=-1>   Conform Password:</font></td>  <td>   <input type="password" name="pass1" >  </td>  </tr>
	
	<tr><td>   <font face="verdana,arial" size=-1> Branch:</font></td>   <td><select name="branch">
									<option value="it">IT</option> 
									<option value="mech">MECH</option>
									<option value="comp">Comp</option>
									<option value="entc">Entc</option>
									</select></td></tr>
	<tr><td>  <font face="verdana,arial" size=-1>   Subject:</font></td>  <td>   <input type="text" name="subject" value="<% out.println(rs.getString(5)); %>" >  </td>  </tr>
		
		
	<tr><td>  <font face="verdana,arial" size=-1>   Contact No..:</font></td>  <td>   <input type="text" name="ph_no" value="<% out.println(rs.getString(4)); %>">  </td>  </tr>
	
	<tr><td><font face="verdana,arial" size=-1>&nbsp;</font></td><td><font face="verdana,arial" size=-1><input type="submit" value="Update"   ></font>	
	</table></center>
</table>
</td>
<%		
String name=request.getParameter("name");
String username=request.getParameter("username");
String pas=request.getParameter("pass");
String pas1=request.getParameter("pass1");
String branch=request.getParameter("branch");
String subject=request.getParameter("subject");
String phno=request.getParameter("ph_no");


if(name!=null && username!=null)
{
String sql1="update faculty set user='"+username+"',pass='"+pas+"',name='"+name+"',ph_no='"+phno+"',subject='"+subject+"',branch='"+branch+"' where user='"+user+"'"; 

s.execute(sql1);
	%>
		<jsp:forward page="fac_profile.jsp" />
	<%

}
		
			s.close();
		c.close();
	}
	catch(Exception e) {out.println(e);   }


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
