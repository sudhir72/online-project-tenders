<%@ page import="java.sql.*" %>
<%@ include file="../Make_Conn.jsp" %>
<html>
<body bgcolor="#6666FF">
<h1 align="center"><FONT SIZE="10" COLOR="#000033">Online project tenders</FONT></h1>

<%


String pid=request.getParameter("pid");
System.out.println(pid);
String s="Select Project_desc from projects where project_id='"+pid+"'";
System.out.println(s);

ResultSet rs=st.executeQuery(s);

if(rs.next())
{
    %>
	
	<form name="f1" action="start_proj.jsp?pid=<%=pid%>" method="post"  >
	<TABLE>
    <TR>
    	<TD><FONT SIZE="5" COLOR="#660033">project description</FONT></TD>
    	<TD><TEXTAREA NAME="Project_desc" ROWS="10" COLS="50"><%=rs.getString(1)%></TEXTAREA>
	 </TD>
    </TR>
    </TABLE>
     
<table>	 
<tr>
  <td>
    <b><pre> 
Start Date      :</b>
  </td>
 <td>
<table>
<tr>
<td><select name="Day1" size="1">
			<option value="1">1</option>
			<option value="2">2</option>
			<option value="3">3</option>
			<option value="4">4</option>
			<option value="5">5</option>
			<option value="6">6</option>
			<option value="7">7</option>
			<option value="8">8</option>
			<option value="9">9</option>
			<option value="10">10</option>
			<option value="11">11</option>
			<option value="12">12</option>
			<option value="13">13</option>
			<option value="14">14</option>
			<option value="15">15</option>
			<option value="16">16</option>
			<option value="17">17</option>
			<option value="18">18</option>
			<option value="19">19</option>
			<option value="20">20</option>
			<option value="21">21</option>
			<option value="22">22</option>
			<option value="23">23</option>
			<option value="24">24</option>
			<option value="25">25</option>
			<option value="26">26</option>
			<option value="27">27</option>
			<option value="28">28</option>
			<option value="29">29</option>
			<option value="30">30</option>
			<option value="31">31</option>
		</select></td>
<td>
   <select name="month1" size="1">
       <option value="jan">JAN</option>
	   <option value="feb">FEB</option>
		<option value="mar">MAR</option>
		<option value="apr">APR</option>
		<option value="may">MAY</option>
		<option value="jun">JUN</option>
		<option value="jul">JUL</option>
		<option value="aug">AUG</option>
		<option value="sep">SEP</option>
		<option value="oct">OCT</option>
		<option value="nov">NOV</option>
		<option value="dec">DEC</option>
     </select>
		</td>
<td>
   <select name="year1" size="1">
  
   <option value="2010">2010</option>
	<option value="2011">2011</option>
			<option value="2012">2012</option>
			<option value="2013">2013</option>
			<option value="2014">2014</option>
			<option value="2015">2015</option>
			<option value="2016">2016</option>
			<option value="2017">2017</option>
			<option value="2018">2018</option>
			<option value="2019">2019</option>
					
   </select>
   </select>
</td>
</tr>
</table></td>
</tr>
</table>
</pre>

<table>
<tr>
  <td>
    <b><pre> 
End Date        :</b>
  </td>
 <td>
<table>
<tr>
<td><select name="Day2" size="1">
			<option value="1">1</option>
			<option value="2">2</option>
			<option value="3">3</option>
			<option value="4">4</option>
			<option value="5">5</option>
			<option value="6">6</option>
			<option value="7">7</option>
			<option value="8">8</option>
			<option value="9">9</option>
			<option value="10">10</option>
			<option value="11">11</option>
			<option value="12">12</option>
			<option value="13">13</option>
			<option value="14">14</option>
			<option value="15">15</option>
			<option value="16">16</option>
			<option value="17">17</option>
			<option value="18">18</option>
			<option value="19">19</option>
			<option value="20">20</option>
			<option value="21">21</option>
			<option value="22">22</option>
			<option value="23">23</option>
			<option value="24">24</option>
			<option value="25">25</option>
			<option value="26">26</option>
			<option value="27">27</option>
			<option value="28">28</option>
			<option value="29">29</option>
			<option value="30">30</option>
			<option value="31">31</option>
		</select></td>
<td>
   <select name="month2" size="1">
       <option value="jan">JAN</option>
	   <option value="feb">FEB</option>
		<option value="mar">MAR</option>
		<option value="apr">APR</option>
		<option value="may">MAY</option>
		<option value="jun">JUN</option>
		<option value="jul">JUL</option>
		<option value="aug">AUG</option>
		<option value="sep">SEP</option>
		<option value="oct">OCT</option>
		<option value="nov">NOV</option>
		<option value="dec">DEC</option>
     </select>
		</td>
<td>
   <select name="year2" size="1">
   <option value="2010">2010</option>
	<option value="2011">2011</option>
			<option value="2012">2012</option>
			<option value="2013">2013</option>
			<option value="2014">2014</option>
			<option value="2015">2015</option>
			<option value="2016">2016</option>
			<option value="2017">2017</option>
			<option value="2018">2018</option>
			<option value="2019">2019</option>
					
   </select>
</td>
</tr>
</table></td>
</tr>

<TR>
	<TD><INPUT TYPE="submit" value="start" name="started"></TD>
</TR>

</table>

	<%
}
		%>
		</body>
		</html>