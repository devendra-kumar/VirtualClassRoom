<%@page import="java.sql.*" %>
<%
try
{
   String status="answered";
   String answerby="admin";
   out.println(request.getParameter("qid"));
 int qid=Integer.parseInt(request.getParameter("qid"));
 String answer=request.getParameter("ans");
Class.forName("com.mysql.jdbc.Driver");

Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/virtual", "root", "12345");
 PreparedStatement ps=con.prepareStatement("insert into answeradmin(answerby,answer,qid)values(?,?,?)");
 ps.setString(1, answerby);
 ps.setString(2, answer);
ps.setInt(3, qid);
 ps.execute();
 ps.close();
PreparedStatement ps1=con.prepareStatement("update questionadmin set status='"+status+"' where qid='"+qid+"'");
ps1.execute();
 response.sendRedirect("answer_admin.jsp");
}catch(Exception e)
{
out.print("error answer update");
}
%>