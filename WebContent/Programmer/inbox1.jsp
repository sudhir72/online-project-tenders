<%@ page import="java.sql.*" %>
<%@ include file="../Make_Conn.jsp" %>
<html>
<body bgcolor="#6666FF">
<h1 align="center"><FONT SIZE="10" COLOR="#000033">Online project tenders</FONT></h1>

<%


	String  s="select username from inbox1";
	ResultSet rs1=st.executeQuery(s);
	rs1.next();
	String user=rs1.getString(1);


		String q="Select * from inbox1 where username='"+user+"'";
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
			
		
		out.println("<td>" + rsmd.getColumnName(i) +"</td>");
		

		}

		while(rs.next())
		{

			 System.out.println(rs.getString(1));
%>
</tr><tr>

 <%
	 
								for(int i=1;i<=n;i++)
			{
		   
	out.println("<td>" + rs.getString(i) +"</td>");
			}
		%>
		</tr>
			<%
		
		}

		
		
%>
</table>
</body>
</html>