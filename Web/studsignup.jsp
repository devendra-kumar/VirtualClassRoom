<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.sql.*" buffer="100kb"%>
<%@page import="java.lang.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Student Sign up</title>

</head>
<body background="G:\Classroom1.jpg" bgcolor="red" >


<script language="javascript">
function fu(form)
{
	 alert('A request is sent to the admin to approve your signup ');
}
	function fun1(form)
	{

	var l=form.pass.value.length;

	for(var i=0; i < l ; i++)
	{
		if(form.pass1.value.substr(i,1) != form.pass.value.substr(i,1) )
		{
			form.pass.value="";
			form.pass1.value="";
			alert('passwords Not Equal');
			break;
		}
	
	}
	}

function fun2(form)
	{

	var l=form.phno.value.length;
	for(var i=0; i < l ; i++)
	{
		if( (form.phno.value.substr(i,1)>= 'a' && form.phno.value.substr(i,1)>= 'z'  ) ||(form.phno.value.substr(i,1)>= 'A' && form.phno.value.substr(i,1)>= 'Z'  ) )
		{
			form.pass.value="";
			form.pass1.value="";
			alert('invalid phone no.');
			break;
		}
	
	}
	}

		
</script>
<form action="studsignup.jsp" method="post" >

<marquee  ONMOUSEOVER="this.stop();" ONMOUSEOUT="this.start();" bgcolor="white" scrollamount=15 >
 <h2>  <font face="verdana,arial" size=-1 > <a href="main.jsp">Click here</a> to return to home page .</font>
  </h2>      
</MARQUEE>


    <table cellpadding=2 cellspacing=0 border=0 align="center">


<tr>  <td bgcolor="red"><table cellpadding=0 cellspacing=0 border=1 width=100%>   <tr>   <td bgcolor="green" align=center style="padding:2;padding-bottom:4">   <font size=-1 color="white" face="verdana,arial"> <b>Sign Up</b></font></tr>
<tr><td bgcolor="white" style="padding:5"><br>
        <center><table align="center">
	<tr><td>  <font face="verdana,arial" size=-1>  Name:</font></td>  <td>  <input type="text" name="name" value="">  </td>  </tr>
	
	<tr><td>  <font face="verdana,arial" size=-1>   User_name:</font></td>  <td>   <input type="text" name="username" value="" > </td>  </tr>
	
	<tr><td>  <font face="verdana,arial" size=-1>   Password:</font></td>  <td>   <input type="password" name="pass" value="">  </td>  </tr>
	
	<tr><td>  <font face="verdana,arial" size=-1>   Conform Password:</font></td>  <td>   <input type="password" name="pass1" value="">  </td>  </tr>
	<tr><td>  <font face="verdana,arial" size=-1>   Phone NO.:</font></td>  <td>   <input type="text" name="phno" value="" onblur="fun1(this.form)">  </td>  </tr>
	
	<tr><td>   <font face="verdana,arial" size=-1> Year:</font></td> <td><select name="year">
									<option value="fe">FY</option> 
									<option value="se">SY</option>
									<option value="te">TY</option>
									<option value="be">FY</option>
									</select> </td>  </tr>
	
	<tr><td>   <font face="verdana,arial" size=-1> Branch:</font></td>   <td><select name="branch" >
									<option value="it">IT</option> 
									<option value="mech">Mech</option>
									<option value="entc">ENTC</option>
									<option value="comp">Comp</option>
									</select></td></tr>
		
    
	
	
	<tr><td><font face="verdana,arial" size=-1>&nbsp;</font></td><td><font face="verdana,arial" size=-1><input type="submit" value="Register" onclick="fu(this.form)" ></font></td></tr>
	
</table></center>



</td></tr></table></td></tr></table>
 

<%

String name=request.getParameter("name");
String username=request.getParameter("username");
String pas=request.getParameter("pass");
String branch=request.getParameter("branch");
String year=request.getParameter("year");
String phno=request.getParameter("phno");
  

	  

	try{
			Class.forName("com.mysql.jdbc.Driver");
			Connection c= DriverManager.getConnection("jdbc:mysql://localhost:3306/virtual", "root", "12345");
			Statement s= c.createStatement();
			String sql="insert into studentsignup values('"+username+"','"+pas+"','"+name+"','"+phno+"','"+year+"','"+branch.toUpperCase()+"' )"; 
			if(name!=""&&name!=null)
			{
			s.execute(sql);
                        response.sendRedirect("main.jsp");
			}
			s.close();
			c.close();
			}
			catch(Exception e) {}



%>


</form>

</body>
</html>
