<%@ page import="java.sql.*" %>
<%@ include file="../Make_Conn.jsp" %>
<%


 String pid=request.getParameter("pid");


 String d1=request.getParameter("Day1");
 String m1=request.getParameter("month1");
 String y1=request.getParameter("year1");
 String d2=request.getParameter("Day2");
 String m2=request.getParameter("month2");
 String y2=request.getParameter("year2");
String sd=d1+"-"+m1+"-"+y1;
String ed=d2+"-"+m2+"-"+y2;

System.out.println(sd);

System.out.println(ed);

String s="Update projects set status='started' where project_id='"+pid+"'";
System.out.println(s);

int i=st.executeUpdate(s);

System.out.println(i);

if(i>0){


System.out.println(i);
  String y="select exp_amount,username from projects where project_id='"+pid+"'";
    ResultSet rs=st.executeQuery(y);
	rs.next();
	int z=rs.getInt(1);
	String p=rs.getString(2);

	String t="insert into container values('"+p+"','"+pid+"','"+sd+"','"+ed+"',"+z+")";

	int j=st.executeUpdate(t);

	if(j>0)

{
%>
	Tender successFully started 
<jsp:include page="admin.html"/>

<%
}}%>

