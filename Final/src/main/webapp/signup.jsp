<%@ page language="java" contentType="text/html; charset=utf-8" 
pageEncoding="utf-8"%>
<%@page import="java.sql.*"%>
<%@include file ="menu.jsp" %>
<!DOCTYPE html>
<html>
<title>註冊 | 北護智慧藥局線上預約平台</title>

<style>

form {border: 0px solid #f1f1f1;}

input[type=text], input[type=password] {
  width: 70%;
  padding: 12px 20px;
  margin: 8px 0;
  display: inline-block;
 
  box-sizing: border-box;
}

button {
  background-color: #00c6a9;
  color: white;
  padding: 14px 20px;
  margin: 8px 0;
  border: none;
  cursor: pointer;
  width: 80%;
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


.container {
  padding: 16px;
}

span.memberpwd {
  float: center;
  padding-top: 16px;
}

</style>

<body>
<br><center><h1>註冊</h1>
<form action="signup-InsertInto.jsp" method="get" style="border:0px solid #ccc">
  <div class="container">
    <h3> 請先建立一個帳號</h3>
  
    <hr>
    <label for="name"><b>姓名&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;：</b></label>
      <input type="text" placeholder="請輸入姓名" name="name" required ><br>
    <label for="id"><b>身分證字號：</b></label>
      <input type="text" placeholder="請輸入身分證字號" name="id" required><br>
    <label for="phone"><b>連絡電話&nbsp;&nbsp;&nbsp;&nbsp;：</b></label>
      <input type="text" placeholder="請輸入連絡電話" name="phone" required><br>
    <label for="memberid"><b>帳號&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;：</b></label>
      <input type="text" placeholder="請輸入帳號(電子信箱)" name="memberid" required><br>
    <label for="memberpwd"><b>密碼&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;：</b></label>
      <input type="password" placeholder="請輸入密碼" name="memberpwd" required><br>

    <div class="clearfix">
       <button type="submit" class="signupbtn">註冊</button>
       <button class="cancelbtn" onclick="document.location='loginCheck-Select.jsp'">取消</button>
    </div>
</div>
</form>
</center>
</body>
</html>