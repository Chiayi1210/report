<%@ page language="java" contentType="text/html; charset=BIG5"
    pageEncoding="BIG5"%>

<!DOCTYPE html>
<html>
<head><title>���U</title></head>
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
  background-color: #708090;
  color: white;
  padding: 14px 20px;
  margin: 8px 0;
  border: none;
  cursor: pointer;
  width: 70%;
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
<form action="loginCheck-Select.jsp" method="get" style="border:1px solid #ccc">
  <div class="container">
    <h1>���U</h1>
    <p>�Х��إߤ@�ӱb��</p>
    <hr>

    <label for="memberid"><b>�b��</b></label>
    <input type="text" placeholder="�п�J�b��" name="memberid" required>

    <label for="memberpwd"><b>�K�X</b></label>
    <input type="password" placeholder="�п�J�K�X" name="memberpwd" required>

    <div class="clearfix">
      <button type="submit" class="signupbtn">���U</button>
      <button type="reset" class="cancelbtn">����</button>
    </div>
  </div>
</form>
</body>
</html>