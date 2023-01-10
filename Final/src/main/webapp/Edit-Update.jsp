<%@ page language="java" contentType="text/html; charset=BIG5" pageEncoding="BIG5"%>
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
	String date = new String(request.getParameter("date").getBytes("ISO-8859-1"));
	String time= new String(request.getParameter("time").getBytes("ISO-8859-1"));
	String cnumber1 = new String(request.getParameter("cnumber1").getBytes("ISO-8859-1"));
	String cnumber2 = new String(request.getParameter("cnumber2"));
	smt.executeUpdate("UPDATE prescription SET date ='" + date+"', time ='" + time+"', cnumber1 ='" + cnumber1 +"', cnumber2 ='" + cnumber2 +"' WHERE time ='" + request.getParameter("time")+"' ");
	response.sendRedirect("Inquire.jsp?prescription="+request.getParameter("pdate")+"");
%>
</body>
</html>