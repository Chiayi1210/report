<%@page import="java.awt.Window"%>
<%@page import="java.io.PrintWriter"%>
<%@page contentType="text/html"%>
<%@page pageEncoding="utf-8"%>
<%@page import="java.sql.*"%>
<jsp:useBean id='objDBConfig' scope='session' class='hitstd.group.tool.database.DBConfig' />

<html>

<body>
<%
	Class.forName("net.ucanaccess.jdbc.UcanaccessDriver");
	Connection con=DriverManager.getConnection("jdbc:ucanaccess://"+objDBConfig.FilePath()+";");
	Statement smt= con.createStatement(ResultSet.TYPE_SCROLL_INSENSITIVE,ResultSet.CONCUR_READ_ONLY);
	String name =request.getParameter("name");
	String id =request.getParameter("id");
	String phone =request.getParameter("phone");
	String memberid =request.getParameter("memberid");
	String memberpwd =request.getParameter("memberpwd");
	//String sql;
	//sql="INSERT INTO member VALUES('"+memberid+"','"+memberpwd+"')";
	try{
	smt.execute("INSERT INTO member (name, id, phone, memberid, memberpwd,CK) VALUES('"+name+"','"+id+"','"+phone+"','"+memberid+"','"+memberpwd+"','0')");
	con.close();
	response.sendRedirect("loginCheck-Select.jsp");
	//response.sendRedirect("<script>alert('註冊成功，請登入！！'); window.open('loginCheck-Select.jsp')</script>");
	out.println("註冊成功，請登入！！");
}catch (Exception e){
		response.sendRedirect("signup.jsp?status=IDexist");
		//response.sendRedirect("<script>alert('註冊成功，請登入！！'); window.open('loginCheck-Select.jsp')</script>");
		out.println("此帳號已註冊，請重新輸入！！");
	}
	%>

</body>
</html>