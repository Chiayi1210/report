<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<jsp:useBean id='objDBConfig' scope='session' class='hitstd.group.tool.database.DBConfig' />

<html>
<body>
	<% if (request.getParameter("numberid") !=null){
	Class.forName("net.ucanaccess.jdbc.UcanaccessDriver");
	Connection con=DriverManager.getConnection("jdbc:ucanaccess://"+objDBConfig.FilePath()+";");
	Statement smt= con.createStatement
			(ResultSet.TYPE_SCROLL_INSENSITIVE,ResultSet.CONCUR_READ_ONLY);
	String name =request.getParameter("membername");
	String id =request.getParameter("numberid");
	String date =request.getParameter("date");
	String time =request.getParameter("time");
	String cnumber1 =request.getParameter("cnumber1");
	String cnumber2 =request.getParameter("cnumber2");
	String cnumber3 =request.getParameter("cnumber3");
	
	//String sql;
	//sql="INSERT INTO member VALUES('"+memberid+"','"+memberpwd+"')";
	smt.execute("INSERT INTO prescription (name, id, date, time, cnumber1, cnumber2, cnumber3) VALUES('"+session.getAttribute("membername")+"','"+session.getAttribute("numberid")+"','"+date+"','"+time+"','"+cnumber1+"','"+cnumber2+"','"+cnumber3+"')");
	//,'"+cnumber2+"','"+cnumber3+"'
	con.close();
	response.sendRedirect("confirm-pp.jsp");%>
	<%}else{%>
	已有預約，請至查詢確認!!
<a href='Inquire.jsp'>查詢</a> 
<%}%>
 
</body>
</html>