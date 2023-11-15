<%@page contentType="text/html"%>
<%@page pageEncoding="utf-8"%>
<%@page import="java.sql.*"%>
<%@page import="java.io.*,java.util.*"%>
<jsp:useBean id='objDBConfig' scope='session' class='hitstd.group.tool.database.DBConfig' />

<html>
<body>
	<%
	session.setAttribute("IM","n");	
	Class.forName("net.ucanaccess.jdbc.UcanaccessDriver");
	Connection con=DriverManager.getConnection("jdbc:ucanaccess://"+objDBConfig.FilePath()+";");
	Statement smt= con.createStatement
			(ResultSet.TYPE_SCROLL_INSENSITIVE,ResultSet.CONCUR_READ_ONLY);
	String name = new String(request.getParameter("name"));
	String id = request.getParameter("numberid");
	String phone =new String(request.getParameter("phone"));
	String memberid =new String(request.getParameter("memberid"));
	String date =request.getParameter("date");
	String time =request.getParameter("time");
	String cnumber1 =request.getParameter("cnumber1");
	String cnumber2 =request.getParameter("cnumber2");
	String cnumber3 =request.getParameter("cnumber3");
	
	smt.executeUpdate("UPDATE member SET name='" + name+"' , phone='" + phone+"' , memberid ='"+ memberid+"' WHERE id='"+session.getAttribute("numberid")+"'");
	
	
	
	//String sql;
	//sql="INSERT INTO member VALUES('"+memberid+"','"+memberpwd+"')";
	smt.execute("INSERT INTO prescription (name, id, phone, email,date,time, cnumber1, cnumber2, cnumber3) VALUES('"+name+"','"+session.getAttribute("numberid")+"','"+phone+"','"+memberid+"','"+date+"','"+time+"','"+cnumber1+"','"+cnumber2+"','"+cnumber3+"')");
	//,'"+cnumber2+"','"+cnumber3+"'	
	con.close();
	//session.setAttribute("IM","y");
	response.sendRedirect("success.jsp");
	

	
		 	
	//}else{
		//out.println("已有預約，請至查詢確認!!");
		//out.println("<a href='Inquire.jsp'>查詢</a>");
		 %>
 
</body>
</html>