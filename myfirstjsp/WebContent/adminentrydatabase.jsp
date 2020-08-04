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
<SCRIPT type="text/javascript">
	window.history.forward();
	function noBack() { window.history.forward(); }
</SCRIPT>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<BODY onload="noBack();" 
	onpageshow="if (event.persisted) noBack();" onunload="">
   <%
   try{
   java.util.Date utilDate = new Date();
                java.sql.Date date = new java.sql.Date(utilDate.getTime());
                Calendar cal=Calendar.getInstance();
                Date d=cal.getTime();
                SimpleDateFormat df=new SimpleDateFormat("HH:mm:ss");
                String ton=df.format(date);
   String n=session.getAttribute("n").toString();
   
   int id=Integer.parseInt(request.getParameter("id"));
   
   Class.forName("com.mysql.jdbc.Driver");
   Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/test","root","root");
   
   String query="select * from security where lower(name)=lower(?) and id=?";
   PreparedStatement ps=con.prepareStatement(query);
   ps.setString(1,n);
   
   ps.setInt(2,id);
   ResultSet rs=ps.executeQuery();
   if(rs.next()){
   String query1="Update security set date=?,onduty=?,offduty=? where id=? and field=?";
   PreparedStatement ps1=con.prepareStatement(query1);
   ps1.setDate(1,date);
   ps1.setString(2,ton);
   ps1.setString(3,""); 
   ps1.setInt(4,id);
   ps1.setString(5,"admin");
   
   int r1=ps1.executeUpdate();
   
   session.setAttribute("u",n);
   session.setAttribute("id",id);
   response.sendRedirect("adminpage.jsp");}
   else{
   response.sendRedirect("adminguardlogin.jsp?d="+"d");}
   }
   catch(Exception e){
   out.println(e.getMessage());} %>
  </body>
</html>
