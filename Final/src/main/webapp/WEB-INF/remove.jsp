<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import="java.sql.*"%>
    <%@page import="java.io.*,java.util.*"%>
    <jsp:useBean id='objDBConfig' scope='application' class='hitstd.group.tool.database.DBConfig' />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>DELETE</title>
</head>
<body>
<%
	Class.forName("net.ucanaccess.jdbc.UcanaccessDriver");
	Connection con=DriverManager.getConnection("jdbc:ucanaccess://"+objDBConfig.FilePath()+";");
	Statement smt= con.createStatement(ResultSet.TYPE_SCROLL_INSENSITIVE,ResultSet.CONCUR_READ_ONLY);

	
	smt.executeUpdate("DELETE FROM prescription WHERE id='"+session.getAttribute("numberid")+"'");
	response.sendRedirect("index.jsp?id='"+session.getAttribute("numberid")+"");
	%>
<%out.println("預約已取消！請重新預約"); %>

</body>
</html>