<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
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
	
	
	smt.executeUpdate("DELETE FROM prescription WHERE id='"+session.getAttribute("numberid")+"'");
	response.sendRedirect("DELETE.jsp?id='"+session.getAttribute("numberid")+"");
%>
<%out.println("預約已取消！請重新預約");
out.println("<a href='index.jsp'>回首頁</a>");
%>
</body>
</html>