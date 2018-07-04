<%@ page import="java.sql.*" %>
<%@ include file="Make_Conn.jsp" %>
<%
	String userName = request.getParameter("userName");
	String password = request.getParameter("password");
	String userType = request.getParameter("userType");
 

 if(userName.equals("admin") && password.equals("admin"))

{
    response.sendRedirect("Admin/admin.html");


}
		String q="select * from login where username='"+userName+"' and password='"+password+"' and usertype='"+userType+"'";

		System.out.println(q);


       ResultSet rs=st.executeQuery(q);

		
	 
        if(rs.next())
		{
			session.putValue("user",userName);
			session.putValue("usertype",userType);
			 
     if(userType.equals("buyer"))
			{
	             response.sendRedirect("User/buyer.html");
			}
			else
			{
				response.sendRedirect("Programmer/progr.html");
			}
       }
else
{

%>
<FONT SIZE="10" COLOR="#CC0066">Invalid user </FONT>
<jsp:include page="index2.html"/>
<%
}
 
%>
 
