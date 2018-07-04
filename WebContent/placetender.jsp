<%@ page import="java.sql.*"%>
<%@ include file="Make_Conn.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<title>Online Project tenders</title>
<meta name="keywords" content="" />
<meta name="description" content="" />
<link href="styles.css" rel="stylesheet" type="text/css" media="screen" />
<head>
<script language="javascript">
function validate()
 {

	  if(document.f1.project_id.value=="")
     {
		  alert("enter id");
		  document.f1.project_id.focus();
		return false;
		}else
   
	  if(document.f1.tender_amount.value=="")
     {
		  alert("enter amount");
		  document.f1.tender_amount.focus();
		return false;
		}
		else
	 return true;
	 }
	 </script>
	 </head>
<link href="style.css" rel="stylesheet" type="text/css" media="screen" />
<style type="text/css">
.l { align:left}
.r { align:right }
</style>
</head>
<body onload="hello();">
<body onload="hello();">
<div id="content">
<div id="back">
<!-- header begins -->
<div id="header"> 
	<div id="logo">
		<h1 align="center"><a href="#"> <FONT SIZE="20" COLOR="#000000">Online Project tenders</FONT> </a></h1>
		<h2><a href="http://www.metamorphozis.com/" id="metamorph"><marquee>Globalize the world</marquee></a></h2>
	</div>
  <div id="menu">
		<ul>
			<li id="button1"><a href="index3.html" title="">Home</a></li>
			<li id="button4"><a href="#" title="">About</a></li>
			<li id="button5"><a href="#" title="">Contact</a></li>
		</ul>
 </div>
</div>

<form action="" method="post" name="f1" onsubmit="return validate()">
<table align="center">
<tr>
<td>projectid:</td>
<td><INPUT TYPE="text" NAME="pid"></td>
</tr>
<tr>
<td>tender_amount:</td>
<td><INPUT TYPE="text" NAME="tndAmt"></td>
</tr>
<tr>
<td><INPUT TYPE="submit" value="submit"></td>
</tr>
</table>
</form>
</body>
</html>
