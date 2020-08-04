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
<SCRIPT type="text/javascript">
	window.history.forward();
	function noBack() { window.history.forward(); }
</SCRIPT>
</HEAD>
<BODY onload="noBack();" 
	onpageshow="if (event.persisted) noBack();" onunload="">
    <%
    String u=session.getAttribute("u").toString();
			String rn=request.getParameter("rn");
			String p=request.getParameter("p");
			 String n,rmn;
   Long pn;
			try
			{
			 java.util.Date utilDate = new Date();
                java.sql.Date date = new java.sql.Date(utilDate.getTime());
                Calendar cal=Calendar.getInstance();
                Date d=cal.getTime();
                SimpleDateFormat df=new SimpleDateFormat("HH:mm:ss");
                String tout=df.format(date);
				Class.forName("com.mysql.jdbc.Driver");
				Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/test","root","root");
		 		String query="Select * from studentkbh where rn=?";
		 		PreparedStatement ps= con.prepareStatement(query);
		 		
		 		ps.setString(1,rn);
		 		ResultSet rs=ps.executeQuery();
		 		if(rs.next()==true)
		 		{
		  String query2="Select * from studentkbh where rn=?";
   PreparedStatement ps2=con.prepareStatement(query2);
   ps2.setString(1,rn);
   ResultSet rs2=ps2.executeQuery();
   while(rs2.next()){
   n=rs2.getString(2);
   rmn=rs2.getString(3);
   pn=rs2.getLong(4);
   String query3="Select * from kbh where rn=?";
   PreparedStatement ps8=con.prepareStatement(query3);
   ps8.setString(1,rn);
   ResultSet rs3=ps8.executeQuery();
   if(rs3.next()==false){
   
   
	      String query1="Insert into kbh(rn,name,rmn,pn,tout,date,place,tin,guard_name) values(?,?,?,?,?,?,?,?,?)";
	   PreparedStatement ps1=con.prepareStatement(query1);
	   ps1.setString(1,rn);
	   ps1.setString(2,n);
	   ps1.setString(3,rmn);
	   ps1.setLong(4,pn);
	   ps1.setString(5,tout);
	   ps1.setDate(6,date);
	   ps1.setString(7,p);
	   ps1.setString(8,"");
	   ps1.setString(9,u);
	   int r=ps1.executeUpdate();		
   if(r>0){
   out.println("Entry Done");
   response.sendRedirect("guardpage.jsp?d="+"d");
   }else
   {
   }}
   else{
   String tin1=rs3.getString(8);
   if(tin1==""){
   out.println("Entry already exists");
   response.sendRedirect("makeentry.jsp?l="+"l");
   }
   else{
    
      String query1="Insert into kbh(rn,name,rmn,pn,tout,date,place,tin,guard_name) values(?,?,?,?,?,?,?,?,?)";
   PreparedStatement ps1=con.prepareStatement(query1);
   ps1.setString(1,rn);
   ps1.setString(2,n);
   ps1.setString(3,rmn);
   ps1.setLong(4,pn);
   ps1.setString(5,tout);
   ps1.setDate(6,date);
   ps1.setString(7,p);
   ps1.setString(8,"");
   ps1.setString(9,u);
   int r=ps1.executeUpdate();
   if(r>0){
   out.println("Entry Done");
   response.sendRedirect("guardpage.jsp?d="+"d");
   }
   }
   
   
   }
		 }}		else
		 		{
		 		
		 			response.sendRedirect("makeentry.jsp?v="+"not");
		 			//response.sendRedirect("login.jsp");
		 			//out.println("no");
		 		}
		 		con.close();
		 	}
		 	catch(Exception e)
		 	{
		 		out.println(e.getMessage());
		 	}
		 %>
  </body>
</html>