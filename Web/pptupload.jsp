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
<form  action="pptuploadupdate.jsp" method="post" >
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
<a href="videoupload.jsp" title="faculty"class=" tablecontent menubar">Video(up)</a>|
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
		String sql3="select distinct subject from subject";
                ResultSet rs3= s.executeQuery(sql3);

%>


<center><table>
	
        <tr><td align="center">   <font face="verdana,arial" size=-1> Subject:</font></td>   <td><select name="subject">
									 <% 
                
                                while(rs3.next())
                             {
                             %>
                            
                                <option><%out.println(rs3.getString(1));%></option> 		
                            
                             <%
                             }
                                %>
									</select></td></tr>
        <tr><td align="center">  <font face="verdana,arial" size=-1>   Unit:</font></td>  <td>   <select name="unit">
									<option value="I" >I</option> 
									<option value="II">II</option>
									<option value="III">III</option>
									<option value="IV">IV</option>
                                                                        <option value="V">V</option>
									</select> </td>  </tr>
		
		
        <tr><td align="center">  <font face="verdana,arial" size=-1>   Select PPT :</font></td>  <td>   <input type="file" name="file1">  </td>  </tr>
	
        <tr><td align="center"><font face="verdana,arial" size=-1>&nbsp;</font></td><td><font face="verdana,arial" size=-1><input type="submit" value="Update"   ></font>	
	</table></center>
</table>
</td>
		

<%	
                                
	}catch(Exception e) {out.println(e);   }


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
