<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>MAIN</title>
</head>


<body bgcolor="red" > 
<form action="faclogin.jsp"  method="post" >

<marquee  ONMOUSEOVER="this.stop();" ONMOUSEOUT="this.start();"  scrollamount="20"  bgcolor="white"  >
	<H3> Virtual Class room </H3>
</MARQUEE>


 

<TABLE border=0 cellspacing=2 cellpadding=2 width="100%"> 
<TR> 
   <TD width="34%"> 
      <TABLE border=0 cellspacing=2 cellpadding=2 width="100%"> 
      <TR> 
         <TD>
	<marquee bgcolor="red"  style="position: relative;" behavior="scroll" " direction="up" scrollamount="8" scrolldelay="2" onmouseover="this.stop()" onmouseout="this.start()"width="350" height="200"><br>

	<img src="kk.jpg" width=250 height=250  title="ad " style="position: relative;" border="0"><br>
	<img src="kk2.jpg" width=250 height=250  title="ad  " style="position: relative;" border="0"><br>
	<img src="kk3.jpg" width=250 height=250  title="ad  " style="position: relative;" border="0"><br>
	<img src="kk4.jpg" width=250 height=250  title="ad  " style="position: relative;" border="0"><br>
	</TD> 
      </TR> 
      </TABLE> 
   </TD> 
   <TD> 
	<table cellpadding=2 cellspacing=0 border=0> 
 
 	<tr>  <td bgcolor="red"><table cellpadding=0 cellspacing=0 border=1 width=100%>   <tr>   <td bgcolor="green" align=center style="padding:2;padding-bottom:4">   <b><font size=-1 color="white" face="verdana,arial"> LOG IN</font></b></tr> 
	<tr><td bgcolor="white" style="padding:5"><br> 
	      <TABLE border=0 cellspacing=5 cellpadding=2 width="60%" bgcolor="white"> 
	      <TR> 
	         <TD>
		<tr><td>   <font face="verdana,arial" size=-1> Login_Type:</font></td>   <td><select name="type"><option value="Faculty">Faculty</option></select></td></tr>
		<tr><td>   <font face="verdana,arial" size=-1> Login:</font></td>    <td><input type="text" name="login" value=""></td></tr>
		<tr><td>   <font face="verdana,arial" size=-1> Password:</font></td>   <td><input type="password" name="password1"></td></tr>
		<tr><td>    <font face="verdana,arial" size=-1>&nbsp;</font></td>    <td><font face="verdana,arial" size=-1><input type="submit" value="Enter"></font></td></tr>
		<tr><td colspan=2><font face="verdana,arial" size=-1>&nbsp;</font></td>    </tr>
		<tr><td colspan=2><font face="verdana,arial" size=-1>Lost your username or password? Find it <a href="G:\study\seminar\ppt\ppt_for_05].ppt">here</a>!</font></td></tr>
                <tr><td colspan=2><font face="verdana,arial" size=-1>Not member yet? Click  <a href="facsignup.jsp">here</a>   to register.</font></td></tr>
                <tr><td colspan=2><font face="verdana,arial" size=-1>Return To <a href="main.jsp" text-decoration:none>Main Page</a></font></td></tr>
	  
     	</TABLE> 
  		 </TD> 
   		<TD>
		</table>
 
     
  	 </TD> 
	</TR> 
</TABLE> 
</TD>
<td>
    <h4>Developed By : </h4>
    <TABLE border=0 cellspacing=2 cellpadding=2 width="100%"> 
      <TR> 
         <TD>
	<marquee bgcolor="red"  style="position: relative;" behavior="scroll" " direction="up" scrollamount="8" scrolldelay="2" onmouseover="this.stop()" onmouseout="this.start()"width="350" height="200"><br>
        <img src="praveen.jpg" width=250 height=250  title="ad  " style="position: relative;" border="0"><br>
	<img src="dev1.jpg" width=250 height=250  title="ad " style="position: relative;" border="0"><br>
	<img src="kari.jpg" width=250 height=250  title="ad  " style="position: relative;" border="0"><br>
	<img src="Lavina007.jpg" width=250 height=250  title="ad  " style="position: relative;" border="0"><br>
	

	</marquee> 
	</TD> 
      </TR> 
      </TABLE>
</td>
</TR>
</TABLE>




<%

String str1=request.getParameter("login");
String str2=request.getParameter("password1");
if(str1!=null && str2!= null)
{
	int flag=0;

	try{
		Class.forName("com.mysql.jdbc.Driver");
		Connection c= DriverManager.getConnection("jdbc:mysql://localhost:3306/virtual", "root", "12345");
		Statement s= c.createStatement();
		out.println("user="+str1+" and pass= "+str2);
		String sql="select * from faculty where user='"+str1+"' and pass='"+str2+"'";
			ResultSet rs= s.executeQuery(sql);
			if(rs.next())
				flag=1;
			else
				flag=0;
			
			if(flag==1)
			{
                             
					session.setAttribute("fuser",str1);
					%>
					<jsp:forward page="fac_profile.jsp" />
					<%
			}
			else
					out.println("UserName/Password Not Valid");	
		rs.close();
		s.close();
		c.close();
		}catch(Exception e) {  out.println(e);}
}

 




%>
</form>
</body>
</html>
