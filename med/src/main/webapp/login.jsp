<%@page contentType="text/html"%>
<%@page pageEncoding="BIG5"%>
<%@page import="java.sql.*"%>

<%
if(request.getParameter("memberid") !=null &&
	request.getParameter("memberpwd") !=null){
        Class.forName("net.ucanaccess.jdbc.UcanaccessDriver");
	Connection con=DriverManager.getConnection("jdbc:ucanaccess://D:\\leelabnas\\Java\\course\\Access\\member.accdb;");
	Statement smt= con.createStatement
			(ResultSet.TYPE_SCROLL_INSENSITIVE,ResultSet.CONCUR_READ_ONLY);
	String getpaperdata = "SELECT * FROM member WHERE memberid='"+
			request.getParameter("memberid")+"' AND memberpwd='" +
			request.getParameter("memberpwd")+"'";
	ResultSet paperrs = smt.executeQuery(getpaperdata);
	if(paperrs.next()){
		response.sendRedirect("accesspage.jsp");
	}else
		out.println("�b���K�X���šI�Э��s�n�J");
}
%>
<html>
<head><title>�n�J����</title></head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- ��style�ѦҦ�www.w3schools.com -->
<style>
body {font-family: Arial, Helvetica, sans-serif;}
form {border: 3px solid #f1f1f1;}

input[type=text], input[type=password] {
  width: 100%;
  padding: 12px 20px;
  margin: 8px 0;
  display: inline-block;
  border: 1px solid #ccc;
  box-sizing: border-box;
}

button {
  background-color: #4CAF50;
  color: white;
  padding: 14px 20px;
  margin: 8px 0;
  border: none;
  cursor: pointer;
  width: 100%;
}

button:hover {
  opacity: 0.8;
}

.container {
  padding: 16px;
}

span.memberpwd {
  float: right;
  padding-top: 16px;
}

</style>
<body>
<h2>�n�J</h2>
<form method="post">
<div class="container">
	<label for="memberid"><b>�b��</b></label>
    <input type="text" placeholder="Enter Username" name="memberid" required>

    <label for="memberpwd"><b>�K�X</b></label>
    <input type="password" placeholder="Enter Password" name="memberpwd" required>
        
    <button type="submit" name="loginButton">�n�J</button>
</div>
</form>
</body>
</html>