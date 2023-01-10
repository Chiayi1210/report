<%@page contentType="text/html"%>
<%@page pageEncoding="BIG5"%>
<%@page import="java.sql.*"%>
<jsp:useBean id='objDBConfig' scope='session' class='hitstd.group.tool.database.DBConfig' />

<html>

<body>
<%if (request.getParameter("numberid") !=null){
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
	smt.execute("INSERT INTO member (name, id, phone, memberid, memberpwd) VALUES('"+name+"','"+id+"','"+phone+"','"+memberid+"','"+memberpwd+"')");
	con.close();
	response.sendRedirect("loginCheck-Select.jsp");%>
	<%}else{%> 
	此身分已被使用，無法註冊!!
	<br><a href='index.jsp'>回首頁</a>
<%}%>
</body>
</html>