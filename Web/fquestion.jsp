<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>profile</title>
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

<form action="fquestion.jsp"  method="post" >

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
String status="unans";



try{
		Class.forName("com.mysql.jdbc.Driver");
		Connection c= DriverManager.getConnection("jdbc:mysql://localhost:3306/virtual", "root", "12345");
		Statement s= c.createStatement();
		String sql="select * from question where status='"+status+"'";
	
		
			ResultSet rs= s.executeQuery(sql);
                        %>
                        <table border=0 cellspacing=2 cellpadding=2 width="960" align="center"> 
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
                    <table border=0 cellspacing=2 cellpadding=2 width="960" align="center"> 
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
