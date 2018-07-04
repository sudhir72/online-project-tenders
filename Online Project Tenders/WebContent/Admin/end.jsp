<%@ page import="java.sql.*" %>
<%@ include file="../Make_Conn.jsp" %>
<html>
<body bgcolor="#6666FF">
<h1 align="center"><FONT SIZE="10" COLOR="#000033">Online project tenders</FONT></h1>
<%


	

		String q="select * from tenders1";

       ResultSet rs=st.executeQuery(q);
	   ResultSetMetaData rsmd=rs.getMetaData();

	   int n=rsmd.getColumnCount();

%>

<table border=2 align="center">
<FONT SIZE="5" COLOR="#FF00CC">
 <tr>

 <%
        for(int i=1;i<=n;i++)
		out.println("<td>" + rsmd.getColumnName(i) +"</td>");%>
</tr>
<%
		while(rs.next())
		{
			%><tr>
         <td><%=rs.getString(1)%></td>
		 <td><a href="proj_end.jsp?pid=<%=rs.getString(2)%>"><%=rs.getString(2)%></td>
		<td><%=rs.getString(3)%></td>
</tr>
			<%
		}
%>
</FONT>
   
 </table>
 </body>
 </html>