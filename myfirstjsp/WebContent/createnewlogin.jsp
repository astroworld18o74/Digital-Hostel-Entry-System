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
<script type="text/javascript" src="engine1/jquery.js"></script>
<style> .sa{
  color: #131313;
    background-color: #e7e5e4;
    font-size:20px}</style>
    <script type="text/javascript">
    function a(){
    var n=frm7.rn.value;
    if(n==""){
    alert("Username cannot be empty");
    return false;}
    
    
    
    var mob=frm7.pn.value;
   var digit = /^[0-9]+$/;
     if(!mob.match(digit)) {
     alert('Enter only digits in phone number');
      frm7.pn.focus();
      return false;
      } 
   var dig = /^\d{10}$/;
     if(!mob.match(dig)) {
 
      alert('Enter 10 digit phone number');
      frm7.pn.focus();
      return false;
      }
      var m=frm7.rn.value;
    if(m==""){
    alert("Address cannot be empty");
    return false;} }
    </script>
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
alert("Entry Not Done");</script>
<%}%>
<%String n=session.getAttribute("n").toString(); %>
<form name="frm7" method="post" action="securitytable.jsp" onsubmit="return a()">
	<div class="container">
		<div class="top">
			<h1 id="title" class="hidden"><span id="logo"><span>Welcome&nbsp;<%=n %></span></span></h1>
		</div>
		<div class="login-box animated fadeInUp">
			<div class="box-header">
				<h2>CREATE NEW LOGIN</h2>
			</div>
			<label for="username">Name</label>
		<br/>
			<input type="text" name="rn">
			<br/>
			<label for="pn">Phone number</label>
			<br/>
			<input type="text" name="pn">
			<br/>
			<label for="address">Address</label>
			<br/>
			<input type="text" name="a">
			<br/>
			<button type="submit" >OK</button> &nbsp;
			
			<button type="reset" >Cancel</button></br><br/>
			<h4><i><b>
    
    <a href="logout1.jsp">LOGOUT>></a></b></i></h4><br/><br/>
    <h4 align="center"><i><b>
    
    <a href="adminpage.jsp">Back>></a></b></i></h4><br/><br/>
    
		</div>
		<br/><br/><br/><br/><br/><br/><br/><br/><br/><br/>
	</div>
	<br/><br/>
	</form>
	<h4><i><b>
    
    <a href="logout.jsp">LOGOUT>></a></b></i></h4><br/><br/>
	<footer>
<div class="sa" align="center">
<br/><br/>
NIT Hamirpur website<br/>
<br/> </div>
</footer>
</body>

<script>
	$(document).ready(function () {
    	$('#logo').addClass('animated fadeInDown');
    	$("input:text:visible:first").focus();
	});
	
</script>

</html>