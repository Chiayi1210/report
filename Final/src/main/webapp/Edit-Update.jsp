<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@page import="java.sql.*"%>
<%@page import="java.io.*,java.util.*"%>
<%@include file = "menu.jsp" %>
<jsp:useBean id='objDBConfig' scope='application' class='hitstd.group.tool.database.DBConfig' />
<html>
<body>
<%
	Class.forName("net.ucanaccess.jdbc.UcanaccessDriver");
	Connection con=DriverManager.getConnection("jdbc:ucanaccess://"+objDBConfig.FilePath()+";");
	Statement smt= con.createStatement(ResultSet.TYPE_SCROLL_INSENSITIVE,ResultSet.CONCUR_READ_ONLY);
	String date =request.getParameter("date");
	String time =request.getParameter("time");
	
	smt.executeUpdate("UPDATE prescription SET date ='" + date+"', time ='" + time+"' WHERE id='"+session.getAttribute("numberid")+"'");
	con.close();
	response.sendRedirect("Inquire.jsp?id='"+session.getAttribute("numberid")+"");
%>
<%out.println("<script>alert('預約已更改成功！！'); window.location='Inquire.jsp' </script>");%>
</body>
</html>