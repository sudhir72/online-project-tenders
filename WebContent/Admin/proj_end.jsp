<%@ page import="java.sql.*" %>
<%@ include file="../Make_Conn.jsp" %>

<%

    String pid=request.getParameter("pid");
       String k="select username from tenders1 where project_id='"+pid+"'";
		System.out.println(k);
		ResultSet rs1=st.executeQuery(k);
		rs1.next();
		String prog=rs1.getString(1);

		String e="select username from projects where project_id='"+pid+"'";
		System.out.println(e);
		ResultSet rs2=st.executeQuery(e);
		rs2.next();
		String buyer=rs2.getString(1);
		String x="select min(tender_amount) from tenders1 where project_id='"+pid+"'";
		System.out.println(x);
		ResultSet rs3 =st.executeQuery(x);
		rs3.next();
 
    String q="select * from tenders1 where tender_amount="+rs3.getInt(1)+" ";
    System.out.println(q);


	ResultSet rs=st.executeQuery(q);
        
	if(rs.next())
	{  
		
		String t="insert into inbox values('"+rs.getString(1)+"','"+rs.getInt(3)+"','Your tender is won by  this programer ' ,'"+pid+"')";
		 System.out.println(t);
		 st.executeUpdate(t);
   
		
		        
		 String r="insert into inbox1 values('"+buyer+"',' congrats!!! You hired project is of this client','"+pid+"')";
				System.out.println(r);
	    st.executeUpdate(r);

		 
		 String s="delete from tenders1 where project_id='"+pid+"'";
		 System.out.println(s);
		 int i=st.executeUpdate(s);
		
		 String z="delete from container where project_id='"+pid+"'";
		 System.out.println(z);
		 int j=st.executeUpdate(z);
  
		String y="Update projects set status='ended' where project_id='"+pid+"'";
		 System.out.println(y);
		 int h=st.executeUpdate(y);

		


 }
%>
ended the tender
<jsp:include page="pj.jsp"/>


