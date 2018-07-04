<%@ page  %>
<%@ include file="../Make_Conn.jsp" %>

<%

String pro_id =request.getParameter("project_id");
String pro_title =request.getParameter("project_title");
String pro_lang =request.getParameter("languageType");
String pro_db =request.getParameter("databaseName");
String pro_exp_amt =request.getParameter("exp_amount");
String pro_dec =request.getParameter("project_desc");

String user=(String)session.getValue("user");
String q="select project_id from projects where project_id='"+pro_id+"'";
ResultSet rs=st.executeQuery(q);
if(rs.next())
{
	%>    project id exist 
<jsp:include page="place_project.jsp"/>


<%

}
else
{
%>
	<% String p="insert into projects values('"+pro_id+"','"+pro_title+"','"+pro_lang+"','"+pro_db+"',"+pro_exp_amt+",'"+pro_dec+"','"+user+"','pending')";
System.out.println(p);
int t=st.executeUpdate(p);

  if(t>0)
    {%>
     	Project has been sucessfully updated
       <jsp:include page="buyer.html"/>
<%
	}
}
%>