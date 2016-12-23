<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Video Study Material</title>
<link href="StyleSheet1.css" type="text/css" rel="Stylesheet" />
        <style>
a:link {color:#FF0000;}    /* unvisited link */
a:visited {color:#00FF00;} /* visited link */
a:hover {color:#FF00FF;}   /* mouse over link */
a:active {color:#0000FF;}  /* selected link */
</style>
</head>
<body bgcolor="#FFFF99" > 
<SCRIPT type="text/javascript">
    window.history.forward();
    function noBack() { window.history.forward(); }
    function call(){
alert("No course material is uploaded Yet");        
    }
</SCRIPT>
<form action="videosub1.jsp" method="post" >
<%
String branch =(String)session.getAttribute("branch");
String year =(String)session.getAttribute("year");
try{
		Class.forName("com.mysql.jdbc.Driver");
		Connection c1= DriverManager.getConnection("jdbc:mysql://localhost:3306/virtual", "root", "12345");
		Statement s1= c1.createStatement();
		String sql="select subject from subject where branch='"+branch+"' and year='"+year+"' ";
		String temp=null;
		ResultSet rs= s1.executeQuery(sql);
		
		if(rs.next())
                {
                
                }else
                {
                response.sendRedirect("profile.jsp");    
                }
		temp=rs.getString(1);

%>
  
<table  width="960" border="0" cellpadding="0" cellspacing="4" bgcolor="black" align="center">
<tr>
 <td>
     <center><img src="nit.jpg" width="960"height="100" align="center"></center>
</td>
</tr>
<tr>
<td align="left" style="word-spacing:6px;font-size:120%;padding-right:30px;color:#888888;white-space:nowrap;">
    <a href="profile.jsp" title="home" class=" tablecontent menubar">Home</a>|
    <a href="videosub1.jsp?value=<% out.println(temp); %>" title="<% out.println(temp); %>" class=" tablecontent menubar"><% out.println(temp); %> </a>  | 
<%	rs.next();
temp=rs.getString(1);
%>
<a href="videosub2.jsp?value=<% out.println(temp); %>" title="<% out.println(temp); %>" class=" tablecontent menubar"><% out.println(temp); %> </a>  | 
<%	rs.next();
temp=rs.getString(1);
%>
<a href="videosub3.jsp?value=<% out.println(temp); %>" title="<% out.println(temp); %>" class=" tablecontent menubar"><% out.println(temp); %> </a>  | 
<%	rs.next(); 
temp=rs.getString(1);
%>
<a href="videosub4.jsp?value=<% out.println(temp); %>" title="<% out.println(temp); %>" class=" tablecontent menubar"><% out.println(temp); %> </a>  | 
<%	rs.next(); 
temp=rs.getString(1);
%>
<a href="videosub5.jsp?value=<% out.println(temp); %>" title="<% out.println(temp); %>" class=" tablecontent menubar"><% out.println(temp); %> </a>  | 
<%rs.close(); %>
|<a href="Logout.jsp" title="tell" class=" tablecontent menubar">Logout</a>
</td>
</tr>
</table>

<%		
		String sub_name=request.getParameter("value");
                
                String sql1="select * from video where subject='"+sub_name+"'";
                ResultSet rs1= s1.executeQuery(sql1);
                while(rs1.next()){
                                %>
                                <br/>
                                <center> <a href="<%out.println(rs1.getString(2));%>"><%out.println(rs1.getString(2));%></a> <br/> </center> 
                                <%
                }
		s1.close();
		c1.close();
	}
	catch(Exception e) {out.println(e); }


 




%>

</form>
</body>
</html>
