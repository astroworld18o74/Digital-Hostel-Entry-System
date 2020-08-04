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
			String rn=request.getParameter("rn");
			Integer s=Integer.parseInt(request.getParameter("id"));
			String u=session.getAttribute("u").toString();
			 String n,rmn;
   Long pn;
			try
			{
			 java.util.Date utilDate = new Date();
                java.sql.Date date = new java.sql.Date(utilDate.getTime());
                Calendar cal=Calendar.getInstance();
                Date d=cal.getTime();
                SimpleDateFormat df=new SimpleDateFormat("HH:mm:ss");
                String tin=df.format(date);
				Class.forName("com.mysql.jdbc.Driver");
				Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/test","root","root");
		 		String query="Select * from kbh where student_id=?";
		 		String tin1;
		 		PreparedStatement ps= con.prepareStatement(query);
		 		
		 		
		 		ps.setInt(1,s);
		 		ResultSet rs=ps.executeQuery();
		 		if(rs.next()==true)
		 		{
		 		tin1=rs.getString(8);
		 		if(tin1==""){
		 		String query1="Update kbh set tin=?,guard_name=? where student_id=? ";
		 		PreparedStatement ps1=con.prepareStatement(query1);
		 		ps1.setString(1,tin);
		 		ps1.setString(2,u);
		 		
		 		ps1.setInt(3,s);
		 		int r=ps1.executeUpdate();
		 		
		 		if(r>0){
		 		out.println("Entry Closed");
		 		String a="ec";
		 		response.sendRedirect("guardpage.jsp?a="+a);
		 		}
		 		else{
		 		out.println("Entry not closed");
		 		response.sendRedirect("closeentry.jsp");
		 		}
		 		
		 		}
		 		else{
		 		response.sendRedirect("guardpage.jsp?b="+"b");}
		 		
		 }		else
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
