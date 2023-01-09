<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head><title>註冊</title>
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
<style>
body {font-family: Arial, Helvetica, sans-serif;}
form {border: 3px solid #f1f1f1;}

input[type=text], input[type=password] {
  width: 70%;
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
  width: 80%;
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
<header class="w3-container w3-red w3-center" style="padding:25px 16px">
  <h1 class="w3-margin w3-jumbo">註冊</h1>
  </header>
<form action="signup-InsertInto.jsp" method="get" style="border:1px solid #ccc">
  <div class="container">
    <center><h1> 請先建立一個帳號</h1>
  
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
</center>
</form>
</body>
</html>