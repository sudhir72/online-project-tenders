<%@ page  %>
<%@ include file="Make_Conn.jsp" %>


<%


String un=request.getParameter("username");
String fn=request.getParameter("firstName");
String ln=request.getParameter("lastName");
String usertype=request.getParameter("userType");
String age=request.getParameter("age"); 
String sex=request.getParameter("sex");
String qualif=request.getParameter("qualification");
String occ=request.getParameter("occupation");
String cmp=request.getParameter("company");
String hadd=request.getParameter("homeAddress");
String cadd=request.getParameter("companyAddress");
String em=request.getParameter("email");
String ph=request.getParameter("phoneNo");
String pwd=request.getParameter("password");
String rpwd=request.getParameter("retypepassword");

String q="insert into registration values(' "+fn+"','"+ln+"','"+pwd+"','"+rpwd+"','"+age+"','"+sex+"','"+qualif+"','"+occ+"','"+cmp+"','"+cadd+"','"+ph+"','"+hadd+"','"+em+"','"+un+"')";
 
String p="insert into login values('"+pwd+"','"+usertype+"','"+un+"')";

int t=st.executeUpdate(q);

if(t>0)
{
	int n=st.executeUpdate(p);
	if(n>0)
	{
  %>
U R successFully Registerd
<jsp:include page="index3.html"/>
  <%
	}
	else
	{
		out.println("Registration Failed try agian");

 	}
}


%>


