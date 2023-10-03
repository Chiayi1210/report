<%@ page language="java" contentType="text/html; charset=utf-8" 
pageEncoding="utf-8"%>
<%@page import="java.sql.*"%>
<%@include file ="menu.jsp" %>
<jsp:useBean id='objDBConfig' scope='session' class='hitstd.group.tool.database.DBConfig' />

<!-- 登入主體 -->
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
//memberid 帳號 memberpwd 密碼 email 電子信箱	membername 姓名 numberid 身分證字號 memberphone電話
	if(members.next()){
		session.setAttribute("access","y");
		session.setAttribute("email",request.getParameter("memberid"));
		session.setAttribute("membername",members.getString("name"));
		session.setAttribute("numberid",members.getString("id"));
		session.setAttribute("memberphone",members.getString("phone"));
		
		session.setMaxInactiveInterval(3600);
		response.sendRedirect("index2.jsp");
	}else
		out.println("<script>alert('帳號密碼不符！請重新登入'); window.location='loginCheck-Select.jsp' </script>");
		//out.println("帳號密碼不符！請重新登入");
}
%>
<html>
<title>登入 | 北護智慧藥局線上預約平台</title>
<style>

  
form {border: 0px solid #f1f1f1}    

input[type=text], input[type=password] {
  width: 50%;
  padding: 12px 20px;
  margin: 8px 0;
  display: inline-block;
  box-sizing: border-box;
}

button {
  background-color: #00c6a9;
  color: white;
  padding: 14px 15px;
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
  color:white;
  padding: 10px 18px;
  background-color: #00c6a9;
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
<form action="loginCheck-Select.jsp">
<center>
<h1>登入</h1>
	<label for="memberid"><b>帳號</b></label>
    <input type="text" class="message-box" placeholder="請輸入帳號(電子信箱)" name="memberid" required><br>
	
	<% if(request.getParameter("memberid")!= null){ %>
		
	<%}%>
    <label for="memberpwd"><b>密碼</b></label>
    <input type="password" class="message-box" placeholder="請輸入密碼" name="memberpwd" required>
    <% if(request.getParameter("memberpwd")!= null){ %>
		
	<%}%>
	
    <button  type="submit" name="loginButton">登入</button>
<br><br>
	<a href="signup.jsp" class="signbtn">註冊</a>
	<br><br><a href="">忘記密碼?</a>
	</center>
</form>
</body>
</html>