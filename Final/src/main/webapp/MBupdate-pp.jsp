<%@ page language="java" contentType="text/html; charset=BIG5" pageEncoding="utf-8"%>
<%@page import="java.sql.*"%>
<%@include file = "menu.jsp" %>
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
	Statement smt= con.createStatement();
	String name = new String(request.getParameter("name").getBytes("ISO-8859-1"));
	String id = new String(request.getParameter("id").getBytes("ISO-8859-1"));
	String phone = new String(request.getParameter("phone").getBytes("ISO-8859-1"));
	String memberid = new String(request.getParameter("memberid").getBytes("ISO-8859-1"));
	string memberpwd = new String(request.getParameter("memberpwd").getBytes("ISO-8859-1"));
	//String position = new String(request.getParameter("position"));
    , memberid ='" + memberid +"'smt.executeUpdate("UPDATE prescription SET name ='" + name+"', id ='" + id+"', phone ='" + phone +"', memberid ='" + memberid +"', memberpwd ='" + memberpwd +"' WHERE memberId ='" + request.getParameter("memberId")+"' ");	response.sendRedirect("prescriprion.jsp?memberId="+request.getParameter("")+"");
%>
</body>
</html>