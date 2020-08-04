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
<script type="text/javascript" src="engine1/jquery.js"></script>
<script type="text/javascript">
    function a(){
    var n=frm.p.value;
    if(n==""){
    alert("Place cannot be empty");
    return false;}}</script>
<style> .sa{
  color: #131313;
    background-color: #e7e5e4;
    font-size:20px}</style>
<!-- End WOWSlider.com HEAD section -->
<SCRIPT type="text/javascript">
	window.history.forward();
	function noBack() { window.history.forward(); }
</SCRIPT>
</HEAD>
<BODY onload="noBack();" 
	onpageshow="if (event.persisted) noBack();" onunload="">
<%String msg=request.getParameter("v");
String msg1=request.getParameter("l");
if(msg==null && msg1==null)
{
msg=" ";
msg1=" ";
}
else if(msg!=null && msg1==null)
{%>
<script type="text/javascript">
alert("Roll number doesn't exist");</script>
<%}else if(msg==null && msg1!=null)
{%>
<script type="text/javascript">
alert("Entry already exists");</script>
<%} %>
<form name="frm" method="post" onsubmit="return a()" action="insertentry.jsp">
	<div class="container">
		<div class="top">
			<h1 id="title" class="hidden"><span id="logo"><span>Welcome</span></span></h1>
		</div>
		<div class="login-box animated fadeInUp">
			<div class="box-header">
				<h2>Make Entry</h2>
			</div>
			<label for="username">Enter Roll No.</label>
		<br/>
			<input type="text" name="rn">
			<br/>
			<label for="place">Place</label>
			<br/>
			<input type="text" name="p">
			<br/>
			<button type="submit" >OK</button> &nbsp;
			
			<button type="reset" >Cancel</button></br><br/>
			<h4 align="center"><i><b>
<a href="guardpage.jsp">BACK>></a></b></i></h4><br/><br/><h4 align="center"><i><b>
<a href="logout.jsp">LOGOUT>></a></b></i></h4><br/><br/>
		</div>
		<br/><br/><br/><br/><br/><br/><br/><br/><br/><br/>
	</div>
	<br/><br/>
	</form>
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