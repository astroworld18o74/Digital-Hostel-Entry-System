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
<style> .sa{
  color: #131313;
    background-color: #e7e5e4;
    font-size:20px}</style>
<SCRIPT type="text/javascript">
	window.history.forward();
	function noBack() { window.history.forward(); }
</SCRIPT>
</HEAD>
<BODY onload="noBack();" 
	onpageshow="if (event.persisted) noBack();" onunload="">


<%String msg=request.getParameter("v");
if(msg==null)
{
msg=" ";
}
else
{%>
<script type="text/javascript">
alert("Entry doesn't exist");</script>
<%} %>
<form name="frm" method="post" action="closeentrydatabase.jsp">
	<div class="container">
		<div class="top">
			<h1 id="title" class="hidden"><span id="logo"><span>Welcome</span></span></h1>
		</div>
		<div class="login-box animated fadeInUp">
			<div class="box-header">
				<h2>Close Entry</h2>
			</div>
			<%try{
			 Class.forName("com.mysql.jdbc.Driver");
   Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/test","root","root");
    String array="Select * from kbh where tin=?";
    PreparedStatement ps=con.prepareStatement(array);
    ps.setString(1,"");
    ResultSet rs=ps.executeQuery(); %>
    <select name="id" ><%
    while(rs.next()){%> <option><%=rs.getInt(9) %></option><%}}
    catch(Exception e){
    out.println(e.getMessage());} %></select><br/>
    <br>
			
			<button type="submit" >OK</button> &nbsp;
			
			<button type="reset" >Cancel</button></br><br/><h4 align="center"><i><b>
<a href="guardpage.jsp">Back>></a></b></i></h4><br/><br/>
			<h4 align="center"><i><b>
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