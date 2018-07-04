<%@ page import="java.sql.*" %>

<%
Class.forName("com.mysql.jdbc.Driver").newInstance();
	
 Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/tender","root","");
Statement st=con.createStatement();
%>
