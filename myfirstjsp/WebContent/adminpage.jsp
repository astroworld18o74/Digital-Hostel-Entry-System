<%@page language="java"  pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.DriverManager" %>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.PreparedStatement" %>
<%@page import="java.sql.Statement" %>
<%@page import="java.util.* "%>
<%@page import="java.sql.*" %>
<%@page import="java.util.Date" %>
<%@page import="java.text.SimpleDateFormat "%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<style> .sa{
  color: #131313;
    background-color: #e7e5e4;
    font-size:20px}
    .ba{
  color: #131313;
    background-color: #a7e5e4;
    font-size:50px}
    .da{
     font-family: "Avant Garde", Avantgarde, "Century Gothic", CenturyGothic, "AppleGothic", sans-serif;
  color: #131313;
    background-color: #f7e5e4;
    font-size:30px}
      .b {
      font-family: "Avant Garde", Avantgarde, "Century Gothic", CenturyGothic, "AppleGothic", sans-serif;
      font-size:50px
    color: #131313;
    background-color: #e7e5e4;
    letter-spacing: .15em;
    text-shadow: 
      1px -1px 0 #767676, 
      -1px 2px 1px #737272, 
      -2px 4px 1px #767474, 
      -3px 6px 1px #787777, 
      -4px 8px 1px #7b7a7a, 
      -5px 10px 1px #7f7d7d, 
      -6px 12px 1px #828181, 
      -7px 14px 1px #868585, 
      -8px 16px 1px #8b8a89, 
      -9px 18px 1px #8f8e8d, 
      -10px 20px 1px #949392, 
      -11px 22px 1px #999897, 
      -12px 24px 1px #9e9c9c, 
      -13px 26px 1px #a3a1a1, 
      -14px 28px 1px #a8a6a6, 
      -15px 30px 1px #adabab, 
      -16px 32px 1px #b2b1b0, 
      -17px 34px 1px #b7b6b5, 
      -18px 36px 1px #bcbbba, 
      -19px 38px 1px #c1bfbf, 
      -20px 40px 1px #c6c4c4, 
      -21px 42px 1px #cbc9c8, 
      -22px 44px 1px #cfcdcd, 
      -23px 46px 1px #d4d2d1, 
      -24px 48px 1px #d8d6d5, 
      -25px 50px 1px #dbdad9, 
      -26px 52px 1px #dfdddc, 
      -27px 54px 1px #e2e0df, 
      -28px 56px 1px #e4e3e2;
  }</style>
<!-- End WOWSlider.com HEAD section -->

<SCRIPT type="text/javascript">
	window.history.forward();
	function noBack() { window.history.forward(); }
</SCRIPT>
</HEAD>
<BODY onload="noBack();" 
	onpageshow="if (event.persisted) noBack();" onunload="">
<%String msg=request.getParameter("a");

if(msg==null)
{
msg="";}
else
{%>
<script type="text/javascript">
alert("Entry Done");</script>
<%}%>
<%try{
String n=session.getAttribute("n").toString();
 %>
 <h1 class="b" align="center">WELCOME &nbsp;<%=n%><%}
catch(Exception e){
out.println(e.getMessage());}%><br/>
<br/> </h1>
<br/>
<br/>
<br/>
<h4 align="center"><i><b>
    
    <a href="logout1.jsp">LOGOUT>></a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    
    </b></i></h4><br/><br/>

<div class="da" align="center">
<a href="createnewlogin1.jsp"><b><i>Create new login</i></b></a>
</div>
<br/>
<div class="da" align="center">
<a href="guardentryrecord.jsp"><b><i>View Guard Entries</i></b></a>
</div></br>
<div class="da" align="center">
<a href="adminentryrecord.jsp"><b><i>View Admin Entries</i></b></a>
</div>
<br/>
<div class="da" align="center">
<a href="entryrecord3.jsp"><b><i>View Today's Entries</i></b></a>
</div>
<br/>
<div class="da" align="center">
<a href="previousrecord2.jsp"><b><i>View Previous Entries</i></b></a>
</div>



<br/><br/>
     <footer>
<div class="sa" align="center">
<br/><br/>
NIT Hamirpur website<br/>
<br/> </div>
</footer>
</body>
</html> 
