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
<body bgcolor="#FFFF99"> 

<form action="answer_admin_update.jsp"  method="post" >

    <table  width="960" border="0" cellpadding="0" cellspacing="4" bgcolor="black" align="center">
<tr>
 <td>
 <center><img src="nit.jpg" width="960" height="100" ></center>
</td>
</tr>
<tr>
<td align="left" style="word-spacing:6px;font-size:120%;padding-right:30px;color:#888888;white-space:nowrap;">
    <a href="student.jsp" title="student" class=" tablecontent menubar">Student </a>  | 
    <a href="studentsignup.jsp" title="studensignupt" class="menubar tablecontent">Student req </a>  | 
    <a href="faculty.jsp" title="faculty" class="menubar tablecontent"> Faculty </a>  | 
    <a href="facultysignup.jsp" title="faculty signup requests" class=" tablecontent menubar">Faculty req </a>  | 
    <a href="pptuploadadmin.jsp" title="faculty" class=" tablecontent menubar"> PPT(upload) </a>  | 
    <a href="pptdeladmin.jsp" title="faculty" class=" tablecontent menubar"> PPT(del) </a>  |
    <a href="videouploadadmin.jsp" title="faculty" class=" tablecontent menubar"> Video(up) </a>  |
    <a href="videodeladmin.jsp" title="faculty" class=" tablecontent menubar"> Video(del) </a>  |
    <a href="see_question_admin.jsp" title="faculty" class=" tablecontent menubar"> Question </a>  |
    <a href="answer_admin.jsp" title="faculty" class=" tablecontent menubar"> Answer </a>  |
    <a href="Logout.jsp" title="faculty" class=" tablecontent menubar"> Logout </a>  
 

</td></tr>
</table>
    <table>
    
                <tr>      
                    
                    <td align="center">
                        <b><font color="Black">Select Question ID:</b>
                        <%
                        try{
                            String status="unans";
                            Class.forName("com.mysql.jdbc.Driver");
                            Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/virtual", "root", "12345");
                            Statement st=con.createStatement();
                            ResultSet rs=st.executeQuery("select * from questionadmin where status='"+status+"'");
                            %><select name="qid" >
                                <% while(rs.next())
                             {
                             %>
                            
                                <option><%out.println(rs.getString(4));%></option> 		
                            
                             <%
                             }
                                %>
                         </select><%
                        }catch(Exception e){
                          out.println("error in question selection");
                        }
                        %>
                    </td>
                </tr>
                
                <tr>
                    
                    <td align="center">
                        <b><font color="Black">Answer:</b><br><textarea rows="12" cols="80" name="ans" placeholder="Post Your Answer Here...."></textarea><br/>
                    </td>
                </tr>
                 
            
            </table>
                    <pre>                                                                     <input type="submit" value="Submit" onclick="return valid();">  <input type="reset" value="Reset">
                        </pre>
</form>
</body>
</html>
