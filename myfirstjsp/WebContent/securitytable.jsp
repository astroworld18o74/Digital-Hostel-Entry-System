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
<SCRIPT type="text/javascript">
	window.history.forward();
	function noBack() { window.history.forward(); }
</SCRIPT>
</HEAD>
<BODY onload="noBack();" 
	onpageshow="if (event.persisted) noBack();" onunload="">
   <%try{
   java.util.Date utilDate = new Date();
                java.sql.Date date = new java.sql.Date(utilDate.getTime());
   String u=session.getAttribute("n").toString();
   String n=request.getParameter("rn");
   String pn=request.getParameter("pn");
   String a=request.getParameter("a");
   String field=request.getParameter("field");
   Class.forName("com.mysql.jdbc.Driver");
   Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/test","root","root");
   String query="Insert into security(name,pn,date,onduty,offduty,address,field) values(?,?,?,?,?,?,?)";
   PreparedStatement ps=con.prepareStatement(query);
   ps.setString(1,n);
   ps.setString(2,pn);
   ps.setDate(3,date);
   ps.setString(4,"");
   ps.setString(5,"");
   ps.setString(6,a);
   ps.setString(7,field);
   int r=ps.executeUpdate();
   if(r>0){
   response.sendRedirect("adminpage.jsp?a="+"a");}
   else{response.sendRedirect("createnewlogin.jsp?a="+"a");}}catch(Exception e){
   out.println(e.getMessage());}
   
    %>
  </body>
</html>
