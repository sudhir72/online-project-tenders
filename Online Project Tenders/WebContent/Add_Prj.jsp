<%@ page%>
<%@ include file="../Make_Conn.jsp"%>

<%
	String pid = request.getParameter("project_id");
	String ptit = request.getParameter("project_title");
	String lngt = request.getParameter("languageType");
	String dbnm = request.getParameter("databaseName");
	String examt = request.getParameter("exp_amount");
	String pjds = request.getParameter("project_desc");
	String un = request.getParameter("username");

	String q = "insert into projects values(' " + pid + "','" + ptit + "','" + lngt + "','" + dbnm + "','"
			+ examt + "','" + pjds + "','" + un + "')";
	int t = st.executeUpdate(q);

	if (t > 0) {
%>
U R successFully updated projects
<jsp:include page="buyer.html" />
<%
	} else {
		out.println("updating projects Failed try agian");
	}
%>


