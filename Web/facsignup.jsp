<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.sql.*" buffer="100kb"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
    <script language="javascript">

        function isNumber(evt) {
    evt = (evt) ? evt : window.event;
    var charCode = (evt.which) ? evt.which : evt.keyCode;
    if (charCode > 31 && (charCode < 48 || charCode > 57)) {
        return false;
    }
    return true;
}
  function validate()
  {
      if(document.form.name.value==="")
      {
          alert("Please enter the name");
          document.form.name.focus();
          return false;
      }
      alert("A request is sent to ADMIN for approval");
      retun true;
  }      

		
</script>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>faculty signup</title>

</head>

<body background="G:\Classroom1.jpg" bgcolor="red" >
    <form  method="post" name="form" onsubmit="return validate();" action="facsignup.jsp">

<marquee  ONMOUSEOVER="this.stop();" ONMOUSEOUT="this.start();" bgcolor="white" scrollamount=15 >
 <h2>  <font face="verdana,arial" size=-1 > <a href="main.jsp">Click here</a> to return to home page .</font>
  </h2>      
</MARQUEE>


        <table cellpadding=2 cellspacing=0 border=0 align="center">


<tr>  <td bgcolor="red"><table cellpadding=0 cellspacing=0 border=1 width=100%>   <tr>   <td bgcolor="green" align=center style="padding:2;padding-bottom:4">   <font size=-1 color="white" face="verdana,arial"> <b>Sign Up</b></font></tr>
<tr><td bgcolor="white" style="padding:5"><br>
<center><table>
	<tr><td>  <font face="verdana,arial" size=-1>  Name:</font></td>  <td>  <input type="text" name="name" value="">  </td>  </tr>
	
	<tr><td>  <font face="verdana,arial" size=-1>   User_name:</font></td>  <td>   <input type="text" name="username" value="" > </td>  </tr>
	
	<tr><td>  <font face="verdana,arial" size=-1>   Password:</font></td>  <td>   <input type="password" name="pass" value="">  </td>  </tr>
	
	<tr><td>  <font face="verdana,arial" size=-1>   Conform Password:</font></td>  <td>   <input type="password" name="pass1" value="">  </td>  </tr>
        <tr><td>  <font face="verdana,arial" size=-1>   Phone NO.:</font></td>  <td>   <input type="text" name="phno" value="" onkeypress="return isNumber(event)">  </td>  </tr>
	
	<tr><td>   <font face="verdana,arial" size=-1> Subject:</font></td> <td>   <input type="text" name="subject" value="">  </td>  </tr>
	
	<tr><td>   <font face="verdana,arial" size=-1> Branch:</font></td>   <td><select name="branch" >
									<option value="it">IT</option> 
									<option value="mech">Mech</option>
									<option value="entc">ENTC</option>
									<option value="comp">Comp</option>
									</select></td></tr>
		
    
	
	
	<tr><td><font face="verdana,arial" size=-1>&nbsp;</font></td><td><font face="verdana,arial" size=-1><input type="submit" value="Register"></font></td></tr>
	
</table></center>



</td></tr></table></td></tr></table>
 

<%

String name=request.getParameter("name");
String username=request.getParameter("username");
String pas=request.getParameter("pass");
String pas1=request.getParameter("pass1");
String branch=request.getParameter("branch");
String subject=request.getParameter("subject");
String phno=request.getParameter("phno");
	  

	try{
			Class.forName("com.mysql.jdbc.Driver");
			Connection c= DriverManager.getConnection("jdbc:mysql://localhost:3306/virtual", "root", "12345");
			Statement s= c.createStatement();
			String sql="insert into facultysignup values('"+username+"','"+pas+"','"+name+"','"+phno+"','"+subject+"','"+branch+"' )"; 
			
			if(name!=""&&name!=null)
			{
			s.execute(sql);
                        response.sendRedirect("main.jsp");
			}
			s.close();
			c.close();
			}
			catch(Exception e) {
                        out.println("User name already exist.Please choose another one.");
                        }



%>


</form>

</body>
</html>
