<%@ page language="java" contentType="text/html; charset=BIG5"
    pageEncoding="BIG5"%>

<!DOCTYPE html>
<html>
<head><title>���U</title>
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
  <h1 class="w3-margin w3-jumbo">���U</h1>
  </header>
<form action="signup-InsertInto.jsp" method="get" style="border:1px solid #ccc">
  <div class="container">
    <h1> �Х��إߤ@�ӱb��</h1>
  
    <hr>

    <label for="memberid"><b>�b��</b></label>
    <input type="text" placeholder="�п�J�b��(�q�l�H�c)" name="memberid" required><br>

    <label for="memberpwd"><b>�K�X</b></label>
    <input type="password" placeholder="�п�J�K�X" name="memberpwd" required>

    <div class="clearfix">
      <button type="submit" class="signupbtn">���U</button>
      <button class="cancelbtn"><botton onclick="document.location='loginCheck-Select.jsp'">����</botton></button>
    </div>
  </div>
</form>
</body>
</html>