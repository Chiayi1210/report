<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@page import="java.sql.*"%>

<jsp:useBean id='objDBConfig' scope='session' class='hitstd.group.tool.database.DBConfig' />
<html>
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <title>修改資料</title>
  
</head>
<body>
<%
	Class.forName("net.ucanaccess.jdbc.UcanaccessDriver");
	Connection con=DriverManager.getConnection("jdbc:ucanaccess://"+objDBConfig.FilePath()+";");
	Statement smt= con.createStatement
	(ResultSet.TYPE_SCROLL_INSENSITIVE,ResultSet.CONCUR_READ_ONLY);
	String name = new String(request.getParameter("membername").getBytes("ISO-8859-1"));
	String id = request.getParameter("numberid");
	String phone = new String(request.getParameter("phone"));
	String memberid = new String(request.getParameter("email"));
	String memberpwd = new String(request.getParameter("memberpwd"));
	//String position = new String(request.getParameter("position"));
   smt.executeUpdate("UPDATE member SET name='" + name+"' , phone='" + phone+"' , memberid ='"+ memberid+"', memberpwd ='"+ memberpwd+"' WHERE id='"+session.getAttribute("numberid")+"'");
   out.println("<script>alert('資料修改成功!!'); window.location='member-profile.jsp' </script>");
%>
</body>
</html>