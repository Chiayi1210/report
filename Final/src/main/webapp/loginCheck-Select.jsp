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
	String getmemberdata = "SELECT * FROM member WHERE memberid='"+
			request.getParameter("memberid")+"' AND memberpwd='" +
			request.getParameter("memberpwd")+"'";
	ResultSet members = smt.executeQuery(getmemberdata);
	
	if(members.next()){
		session.setAttribute("access","y");
		session.setAttribute("accessid",request.getParameter("memberid"));
		session.setAttribute("accessname",members.getString("name"));
		session.setAttribute("memberid",members.getString("id"));
		session.setAttribute("memberphone",members.getString("phone"));
		session.setMaxInactiveInterval(3600);
		response.sendRedirect("index.jsp");
	}else
		out.println("�b���K�X���šI�Э��s�n�J");
}
%>
<html>
<head><title>�۵P�ħ�-�n�J</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Lato">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Montserrat">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<style>
body,h1,h2,h3,h4,h5,h6 {font-family: "Lato", sans-serif}
.w3-bar,h1,button {font-family: "Montserrat", sans-serif}
.fa-anchor,.fa-coffee {font-size:200px}
</style>
</head>
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
  float: center;
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
<header class="w3-container w3-red w3-center" style="padding:25px 16px">
  <h1 class="w3-margin w3-jumbo">�n�J</h1>
  </header>
<form  method="post">

<center>
<div class="container">
	<label for="memberid"><b>�b��</b></label>
    <input type="text" placeholder="�п�J�b��(�q�l�H�c)" name="memberid" required><br>
	<% if(request.getParameter("memberid")!= null){ %>
		
	<%}%>
    <label for="memberpwd"><b>�K�X</b></label>
    <input type="password" placeholder="�п�J�K�X" name="memberpwd" required>
    <% if(request.getParameter("memberpwd")!= null){ %>
		
	<%}%>
    <button type="submit" name="loginButton">�n�J</button>
</div>
<div class="container" style="background-color:#white">
	<a href="signup.jsp" class="signbtn">���U</a>
	<a href="index.jsp" class="signbtn">����</a></div>
  </center>
</form>
</body>
</html>