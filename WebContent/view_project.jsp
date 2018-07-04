<%@ page import="java.sql.*" %>
<%@ include file="../Make_Conn.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<title>Online Project tenders</title>
<meta name="keywords" content="" />
<meta name="description" content="" />
<link href="../styles.css" rel="stylesheet" type="text/css" media="screen" />
</head>
<body>
<div id="content">
<div id="back">
<!-- header begins -->
<div id="header"> 
	<div id="logo">
		<h1 align="center"><a href="#"> <FONT SIZE="20" COLOR="#000000">Online Project tenders</FONT> </a></h1>
		<h2><a href="http://www.metamorphozis.com/" id="metamorph"><marquee>Globalize the world</marquee></a></h2>
	</div>
  <div id="menu">
		<ul>
			<li id="button1"><a href="../index3.html"  title="">Home</a></li>	
            <li id="button2"><a href="admin.html"  title="">back</a></li>
			<li id="button3"><a href="view_project.jsp" title="">View projects</a></li>
			<li id="button4"><a href="../logout.jsp"  title="">logout</a></li>
			<li id="button5"><a href="#" title="">About</a></li>
			<li id="button6"><a href="#" title="">Contact</a></li>
		</ul>
 </div>
</div>

<body>
<%


	String user=(String)session.getValue("user");



		String q="Select * from projects where status='pending'";
System.out.println(q);
       ResultSet rs=st.executeQuery(q);
	   ResultSetMetaData rsmd=rs.getMetaData();

	   int n=rsmd.getColumnCount();
%>
<table border="2" align="center">
 <tr>
     
 <%
        for(int i=1;i<=n;i++)
		{
			if(i!=6)
			{
		out.println("<td>" + rsmd.getColumnName(i) +"</td>");
		}

		}

		while(rs.next())
		{

			 
%>

</tr><tr>

 <%
	 
	   for(int i=1;i<=n;i++)
			{
		   if(i!=6)
				{
if(i==1)
{
	String pid=rs.getString(i);

%>
<td><A HREF="Show_Projects.jsp?pid=<%=pid %>"><pre>    <%=pid %>      </pre></A></td>

<%
}
else
	out.println("<td>" + rs.getString(i) +"</td>");
			}
		}

		
		}
%>


 </tr>

 </table>
 <br><br><br><br><br><br><br>
 <!-- header ends -->
<!-- content begins -->
 
<div id="footer">
Copyright &copy; 2008.Privacy Policy | Terms of Use
	</div>
<!-- footer ends-->
<div style="text-align: center; font-size: 0.75em;">Design downloaded from <a href="http://www.freewebtemplates.com/">free website templates</a>.</div></body>
</html>
  </body>

  </html>