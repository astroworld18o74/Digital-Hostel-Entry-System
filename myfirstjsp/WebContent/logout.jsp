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
</head>
<body>
     <%
    
     try{
   java.util.Date utilDate = new Date();
                java.sql.Date date = new java.sql.Date(utilDate.getTime());
                Calendar cal=Calendar.getInstance();
                Date d=cal.getTime();
                SimpleDateFormat df=new SimpleDateFormat("HH:mm:ss");
                String toff=df.format(date);
   String u=session.getAttribute("u").toString();
   int id=Integer.parseInt(session.getAttribute("id").toString());
   Class.forName("com.mysql.jdbc.Driver");
   Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/test","root","root");
   String query1="Update security set offduty=? where id=?";
   PreparedStatement ps1=con.prepareStatement(query1);
   ps1.setString(1,toff); 
   ps1.setInt(2,id);
   int r1=ps1.executeUpdate();
   }
   catch(Exception e){
   out.println(e.getMessage());}
   session.invalidate();
    response.sendRedirect("adminguardlogin.jsp?a="+"a");
     %>
  </body>
</html>
