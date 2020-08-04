<%@page language="java"  pageEncoding="ISO-8859-1"%>
<%@page import="java.util.* "%>
<%@page import="java.sql.*" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html>
<html>
<HEAD>


<script type="text/javascript" src="engine1/jquery.js"></script>
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
<%
String msg2=request.getParameter("a");
String msg3=request.getParameter("b");
String msg4=request.getParameter("d");
if(msg2==null && msg3==null && msg4==null){
msg2="";}
else if(msg2!=null && msg3==null && msg4==null)
{%>
<script type="text/javascript">
alert("You are logged out");</script>
<%}
else if(msg2==null && msg3!=null && msg4==null)
{%>
<script type="text/javascript">
alert("Wrong Login");</script>
<%}
else if(msg2==null && msg3==null && msg4!=null)
{%>
<script type="text/javascript">
alert("Wrong Login");</script>
<%}%>

<%String s=request.getParameter("s");
if(s==null){ %>
<form action="adminguardlogin.jsp" method="get"> 
<h1 class ="ba" align="center">Select option:</h1><br/>
<br/>
<br/>
<h1 align="center" class="da"><input type="radio" value="admin" name="a" />Admin&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<input type="radio"  value="security" name="a"/>Security Guard<br/></h1>
<div class="w3-container w3-full w3-margin-top">  

<form class="w3-container w3-card-4" action="createnewlogin1.jsp" method="get">

<p>USERNAME
<input class="w3-input" type="text" style="width:90%"  name="n">
</p>
<p><label>ID</label>
<input class="w3-input" type="text" name="id" style="width:90%" >
</p>




<p>
<input type="submit" value="OK" class="w3-button w3-section w3-teal w3-ripple" name="s"/><input type="reset" value="CANCEL"  class="w3-button w3-section w3-teal w3-ripple"/></p>
</form>
<h2 align="center"><i><b>
<a href="welcomepage.jsp">Back>></a></b></i></h2><br/>
<%}
 else{
 try{
    String n=request.getParameter("n");
    int id=Integer.parseInt(request.getParameter("id"));
    String field=request.getParameter("a");
    String field1;
    int k=0;
    Class.forName("com.mysql.jdbc.Driver");
    Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/test","root","root");
    String query="Select * from security where lower(name)=lower(?) and id=? and field=?";
    PreparedStatement ps=con.prepareStatement(query);
    ps.setString(1,n);
    ps.setInt(2,id);
    ps.setString(3,field);
    ResultSet rs=ps.executeQuery();
    
       if(rs.next()==true){
    field1=rs.getString(8);
    if(field.equals("admin")){
    session.setAttribute("n",n);
    response.sendRedirect("adminentrydatabase.jsp?id="+id);}
    else if(field.equals("security")){
    session.setAttribute("n",n);
    response.sendRedirect("guardentrydatabase2.jsp?id="+id);}}
    else{
   
    
    response.sendRedirect("adminguardlogin.jsp?b="+"b");
    
    }}
    catch(Exception e){
    out.println(e.getMessage());}
     }%>
     <footer>
<div class="sa" align="center">
<br/><br/>
NIT Hamirpur website<br/>
<br/> </div>
</footer>
</body>
</html> 
