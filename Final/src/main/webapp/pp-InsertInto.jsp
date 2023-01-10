<%@page contentType="text/html"%>
<%@page pageEncoding="utf-8"%>
<%@page import="java.sql.*"%>
<jsp:useBean id='objDBConfig' scope='session' class='hitstd.group.tool.database.DBConfig' />
<%Class.forName("net.ucanaccess.jdbc.UcanaccessDriver");
Connection con=DriverManager.getConnection("jdbc:ucanaccess://"+objDBConfig.FilePath()+";");
Statement stmt= con.createStatement
(ResultSet.TYPE_SCROLL_INSENSITIVE,ResultSet.CONCUR_READ_ONLY);
//WHERE memberid='"+request.getParameter("memberid")+"' AND date='" +request.getParameter("date")+"'  AND time='" +request.getParameter("time")+"'";
ResultSet pp = stmt.executeQuery("SELECT * FROM prescription WHERE id='"+request.getParameter("memberid")+"'");
//SELECT * FROM prescription
if (pp.next())
session.setAttribute("access","y");
session.setAttribute("pid",pp.getString("id"));
session.setAttribute("pdate",pp.getString("date"));
session.setAttribute("ptime",pp.getString("time"));
session.setAttribute("pcnumber1",pp.getString("cnumber1"));
session.setAttribute("pcnumber2",pp.getString("cnumber2"));
session.setAttribute("pcnumber3",pp.getString("cnumber3"));
//pp.getString
%> 
<html>
<body>
	<%
	Class.forName("net.ucanaccess.jdbc.UcanaccessDriver");
	Connection con=DriverManager.getConnection("jdbc:ucanaccess://"+objDBConfig.FilePath()+";");
	Statement smt= con.createStatement
			(ResultSet.TYPE_SCROLL_INSENSITIVE,ResultSet.CONCUR_READ_ONLY);
	String name =request.getParameter("accessname");
	String id =request.getParameter("memberid");
	String date =request.getParameter("date");
	String time =request.getParameter("time");
	String cnumber1 =request.getParameter("cnumber1");
	String cnumber2 =request.getParameter("cnumber2");
	String cnumber3 =request.getParameter("cnumber3");
	
	//String sql;
	//sql="INSERT INTO member VALUES('"+memberid+"','"+memberpwd+"')";
	smt.execute("INSERT INTO prescription (name, id, date, time, cnumber1, cnumber2, cnumber3) VALUES('"+session.getAttribute("accessname")+"','"+session.getAttribute("memberid")+"','"+date+"','"+time+"','"+cnumber1+"','"+cnumber2+"','"+cnumber3+"')");
	//,'"+cnumber2+"','"+cnumber3+"'
	con.close();
	response.sendRedirect("confirm-pp.jsp");
	%>
 
</body>
</html>