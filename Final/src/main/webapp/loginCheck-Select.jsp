<%@page contentType="text/html"%>
<%@page pageEncoding="BIG5"%>
<%@page import="java.sql.*"%>
<jsp:useBean id='objDBConfig' scope='session' class='hitstd.group.tool.database.DBConfig' />

<% session.setAttribute("access","n");
if(request.getParameter("memberid") !=null &&
	request.getParameter("memberpwd") !=null){
	Class.forName("net.ucanaccess.jdbc.UcanaccessDriver");
	Connection con=DriverManager.getConnection("jdbc:ucanaccess://"+objDBConfig.FilePath()+";");
	Statement smt= con.createStatement
			(ResultSet.TYPE_SCROLL_INSENSITIVE,ResultSet.CONCUR_READ_ONLY);
	String getpaperdata = "SELECT * FROM member WHERE memberid='"+
			request.getParameter("memberid")+"' AND memberpwd='" +
			request.getParameter("memberpwd")+"'";
	ResultSet paperrs = smt.executeQuery(getpaperdata);
	if(paperrs.next()){
		session.setAttribute("access","y");
		session.setAttribute("accessid",request.getParameter("memberid"));
		session.setMaxInactiveInterval(5);
		response.sendRedirect("accesspage.jsp");
	}else
		out.println("�b���K�X���šI�Э��s�n�J");
}
%>
<html>
<head><title>�۵P�E��-�n�J</title></head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<style>
body {font-family: Arial, Helvetica, sans-serif;}
form {border: 3px solid #f1f1f1;}

input[type=text], input[type=password] {
  width: 50%;
  padding: 12px 20px;
  margin: 8px 0;
  display: inline-block;
 
  box-sizing: border-box;
}

button {
  background-color: #708090;
  color: white;
  padding: 14px 20px;
  margin: 8px 0;
  border: none;
  cursor: pointer;
  width: 53%;
}

button:hover {
  opacity: 0.8;
}

.signbtn {
  width: auto;
  padding: 10px 18px;
  background-color: #708090;
}

.imgcontainer {
  text-align: center;
  margin: 24px 0 12px 0;
}

img.avatar {
  width: 70%;
  border-radius: 50%;
}

.container {
  padding: 16px;
}

span.psw {
  float: right;
  padding-top: 50px;
}

/* Change styles for span and cancel button on extra small screens */
@media screen and (max-width: 300px) {
  span.psw {
     display: block;
     float: none;
  }
  .signbtn {
     width: 50%;
  }
}
</style>
<body>
<h2>�n�J</h2>
<form action="index.jsp" method="post">
<div class="container">
	<label for="memberid"><b>�b��</b></label>
    <input type="text" placeholder="�п�J�b��(�q�l�H�c)" name="memberid" required><br>
	<% if(request.getParameter("memberid")!= null){ %>
		value = '<%=request.getParameter("memberid") %>'
	<%}%>
    <label for="memberpwd"><b>�K�X</b></label>
    <input type="password" placeholder="�п�J�K�X" name="memberpwd" required>
    <% if(request.getParameter("memberpwd")!= null){ %>
		value = '<%=request.getParameter("memberpwd") %>'
	<%}%>
    <button type="submit" name="loginButton">�n�J</button>
</div>
<div class="container" style="background-color:#white">
	<a href="signup.jsp" class="signbtn">���U</a>
    
  </div>
</form>
</body>
</html>