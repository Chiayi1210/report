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
	String name = new String(request.getParameter("membername"));
	String id= new String(request.getParameter("numberid"));
	
	smt.executeUpdate("UPDATE member SET name ='" + membername+"', id ='" + numberid+"' WHERE id='"+session.getAttribute("numberid")+"'");
	response.sendRedirect("prescription.jsp?id='"+session.getAttribute("numberid")+"");
%>
</body>
</html>