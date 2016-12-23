<%@ page language="java" contentType="text/html; charset=ISO-8859-1"pageEncoding="ISO-8859-1" import="java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Admin</title>
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
<a href="videodel.jsp" title="faculty" class=" tablecontent menubar"> Video(del) </a>  |
<a href="see_question_admin.jsp" title="faculty" class=" tablecontent menubar"> Question </a>  |
<a href="answer_admin.jsp" title="faculty" class=" tablecontent menubar"> Answer </a>  |
<a href="Logout.jsp" title="faculty" class=" tablecontent menubar"> Logout </a>  
 

</td></tr>
</table>
    
    <%
String status="unans";



try{
		Class.forName("com.mysql.jdbc.Driver");
		Connection c= DriverManager.getConnection("jdbc:mysql://localhost:3306/virtual", "root", "12345");
		Statement s= c.createStatement();
		String sql="select * from questionadmin where status='"+status+"'";
	
		
			ResultSet rs= s.executeQuery(sql);
                        %>
                        <table border=0 cellspacing=2 cellpadding=2 width="1150" align="center"> 
                        <tr>
                            <td bgcolor="green" width="90" align="center">Question ID</td>
                            <td bgcolor="green" width="700" align="center">Question</td>
                            <td bgcolor="green" width="100" align="center">Subject</td>
                            <td bgcolor="green" width="100" align="center">Asked By</td>
                        </tr>
                    </table>
                    <%
		while(rs.next())
                {
                    %>
                    <table border=0 cellspacing=2 cellpadding=2 width="1350" align="center"> 
                        <tr>
                            <td bgcolor="white" align="center" width="90"><%out.println(rs.getString(4));%></td>
                            <td bgcolor="white"align="center" width="700"><%out.println(rs.getString(1));%></td>
                            <td bgcolor="white" align="center" width="100" ><%out.println(rs.getString(3));%></td>
                            <td bgcolor="white" align="center" width="100"><%out.println(rs.getString(2));%></td>
                        </tr>
                    </table>
                    <%
                }
		
}catch(Exception e)
{
}
%>
 
 
</form>
</body>
</html>
