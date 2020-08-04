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
<style type="text/css">
 .sa{
  color: #131313;
    background-color: #e7e5e4;
    font-size:20px}
h3 {letter-spacing: 6px;
font-family: "Avant Garde", Avantgarde, "Century Gothic", CenturyGothic, "AppleGothic", sans-serif;
  font-size: 40px;
  padding: 80px 50px;
  text-align: center;
  text-transform: uppercase;
  text-rendering: optimizeLegibility;}
  h4 {letter-spacing: 6px;
font-family: "Avant Garde", Avantgarde, "Century Gothic", CenturyGothic, "AppleGothic", sans-serif;
  font-size: 25px;
  padding: 50px 30px;
  text-align: center;
  text-transform: uppercase;
  text-rendering: optimizeLegibility;}
.w3-row-padding img {margin-bottom: 12px}
.insetshadow {
    color: #202020;
    background-color: #2d2d2d;
    letter-spacing: .1em;
    text-shadow: 
      -1px -1px 1px #111, 
      2px 2px 1px #363636;
  }
  .d {
  font-family: "Avant Garde", Avantgarde, "Century Gothic", CenturyGothic, "AppleGothic", sans-serif;
  font-size: 25px;
  background-color: #d5d5d5;
  padding: 80px 50px;
  text-align: center;
  text-transform: uppercase;
  text-rendering: optimizeLegibility;
  }
  .b {
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
  }
  .z {
    color: #202020;
    background-color: #2d2d2d;
    letter-spacing: .1em;
    text-shadow: 
      -1px -1px 1px #111, 
      2px 2px 1px #363636;
  }
  .form {
      padding-top: 20px;
      
      input[type="text"],
      input[type="password"],
      button {
        width: 80%;
        margin-left: 10%;
        margin-bottom: 25px;
        height: 40px;
        border-radius: 5px;
        outline: 0;
        -moz-outline-style: none;
      }
      
      input[type="text"],
      input[type="password"] {
        border: 1px solid #bbb;
        padding: 0 0 0 10px;
        font-size: 14px;
        &:focus {
          border: 1px solid #3498db;
        }
      }
      body{
	background-image:url(a8.jpg)}
    
</style>

  <SCRIPT type="text/javascript">
	window.history.forward();
	function noBack() { window.history.forward(); }
</SCRIPT>
</HEAD>
<BODY onload="noBack();" 
	onpageshow="if (event.persisted) noBack();" onunload="">
  <%String msg=request.getParameter("a");
  String msg1=request.getParameter("b");
  String msg2=request.getParameter("c");
  String msg3=request.getParameter("d");
  String msg4=request.getParameter("s");
  String a=session.getAttribute("u").toString();
if(msg==null && msg1==null && msg2==null && msg3==null && msg4==null)
{
msg=" ";
msg1=" ";
}
else if(msg!=null && msg1==null && msg2==null && msg3==null && msg4==null)
{%>
<script type="text/javascript">
alert("Entry Closed");</script>
<%} 
else if(msg==null && msg1!=null && msg2==null && msg3==null && msg4==null){
%><script type="text/javascript">
alert("Entry Already Closed");</script>
<%}
else if(msg==null && msg1==null && msg2!=null && msg3==null && msg4==null){
%><script type="text/javascript">
alert("Entry Done");</script>
<%}
else if(msg==null && msg1==null && msg2==null && msg3!=null && msg4==null){
%><script type="text/javascript">
alert("Entry Done");</script>
<%} 
else if(msg==null && msg1==null && msg2==null && msg3==null && msg4!=null){
%><script type="text/javascript">
alert("Welcome <%=a%>");</script>
<%} %>
  <div>
    <h3 class="b"  class=" w3-center" style="padding:90px 8px">Kailash Boys Hostel</h3></div>
    <h4 align="center"><i><b>
<a href="logout.jsp">LOGOUT>></a></b></i></h4>
    <div align="center"> <h1 class="z"><span class="w3-tag w3-wide"><a href="makeentry.jsp"><i>Make a new Entry</i></a></span></h1><br/>
     <h1 class="z"><span class="w3-tag w3-wide"><a href="closeentry.jsp"><i>Close Entry</i></a></span></h1><br/>
      <h1 class="z"><span class="w3-tag w3-wide"><a href="entryrecord2.jsp"><i>Check today's Entries</i></a></span></h1><br/>
      <h1 class="z"><span class="w3-tag w3-wide"><a href="previousrecord.jsp"><i>Check Previous Entries</i></a></span></h1>
</div>

<br/>
<footer>
<div class="sa" align="center">
<br/><br/>
NIT Hamirpur website<br/>
<br/> </div>
</footer>
  </body>
</html>