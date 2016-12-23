<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
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
    function valid(){alert("Thank You for Asking Question. We will get back to you Soon :)"); return true;}
</SCRIPT>
<body bgcolor="#FFFF99" > 

<form action="questionupdate.jsp"  method="post" >

    <table  width="960" border="0" cellpadding="0" cellspacing="4" bgcolor="grey" align="center">
<tr>
 <td>
 <center><img src="nit.jpg" width="960"height="100" ></center>
</td>
</tr>
<tr>
<td align="left" style="word-spacing:6px;font-size:120%;padding-right:30px;color:#888888;white-space:nowrap;">
    <a href="profile.jsp" title="Home" class=" tablecontent menubar">Home </a>  | 
    <a href="update.jsp" title="update" class=" tablecontent menubar"> Edit Profile </a>  | 
<a href="study.jsp" title="study" class=" tablecontent menubar">Study material</a>  | 
<a href="video.jsp" title="video" class=" tablecontent menubar">Video Lectures</a>  | 
<a href="question.jsp" title="ask" class=" tablecontent menubar">Ask doubts</a>  | 
<a href="student_answer.jsp" title="tell" class=" tablecontent menubar">Answers</a>
|<a href="Logout.jsp" title="tell" class=" tablecontent menubar">Logout</a>
    </td>
</tr>
</table>       
    <table>
    
                <tr>
                    <td align="center">
                        <b><font color="Black">Subject Title:</b>
                    </td>
                    <td>
                        <input type="text" name="sub" placeholder="Subject Title"><br/>
                    </td>
                </tr>
                
                <tr>
                    <td align="center">
                        <b><font color="Black">Question:</b>
                    </td>
                    <td>
                        <textarea rows="12" cols="80" name="ques" placeholder="Write Your Query Here...."></textarea><br/>
                    </td>
                </tr>
                
            </table>
    <pre>                                                                  <input type="submit" value="Submit" onclick="return valid();"> <input type="reset" value="Reset"></pre> 
                    
</form>
</body>
</html>
