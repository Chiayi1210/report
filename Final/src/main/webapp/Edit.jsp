<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@page import="java.sql.*"%>
<%@page import="java.io.*,java.util.*"%>
<%@include file ="menu.jsp" %>
<jsp:useBean id='objDBConfig' scope='session' class='hitstd.group.tool.database.DBConfig' />
 <!--更改預約網頁 -->
<html>
<body>
<style>
form {border: 0px solid #f1f1f1}    

input[type=text], input[type=password] {
  width: auto;
  padding: 12px 20px;
  margin: 8px 0;
  display: inline-block;
  box-sizing: border-box;
}

input[type=submit] {
  background-color: #00c6a9;
  color:white;
  width: 30%;
  padding: 14px 20px;
  margin: 8px 0;
  display: inline-block;
  border: none;
}


button {
  background-color: #00c6a9;
  color: white;
  padding: 14px 15px;
  margin: 8px 0;
  border: none;
  cursor: pointer;
  width: 30%;
}

button-1 {
  background-color: #00c6a9;
  color: white;
  padding: 5px 5px;
  margin: 8px 0;
  border: none;
  cursor: pointer;
  width: 10%;
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

#window-container{
    display: none;
    position: fixed;
    left: 0;
    top: 0;
    width: 100%;
    height: 100%;
    background-color: rgba(0,0,0,0.5);
}
       
#window-pop{
    background: white;
    width:70%;
    z-index: 1;
    margin: 12% auto;
    overflow: visible;
    border-radius: 10px;
}
        
.window-content {
    width: auto;
    height: 480px;
    line-height: 200px
    overflow : visible;
    text-align: center;
 
  }

span {
    display: inline-block;
    vertical-align: middle;
    line-height: normal;
}

</style>
<header class="w3-container w3-red w3-center" style="padding:40px 16px">
  <h1 class="w3-margin w3-jumbo">查詢/更改/取消預約</h1>
  </header>
   <%
	Class.forName("net.ucanaccess.jdbc.UcanaccessDriver");
    Connection con=DriverManager.getConnection("jdbc:ucanaccess://"+objDBConfig.FilePath()+";");
    Statement smt= con.createStatement
	(ResultSet.TYPE_SCROLL_INSENSITIVE,ResultSet.CONCUR_READ_ONLY);
	String date =request.getParameter("date");
	String time =request.getParameter("time");
	String cnumber1 =request.getParameter("cnumber1");
	String cnumber2 =request.getParameter("cnumber2");
	String cnumber3 =request.getParameter("cnumber3");
	String sql1 = "SELECT * FROM prescription WHERE id='"+session.getAttribute("numberid")+"'";
	
    ResultSet rs = smt.executeQuery(sql1);
    
	rs.next();
	%>
<form action="Edit-Update.jsp?id=<%=session.getAttribute("numberid")%>" method="post" name="form" >

<center><h3 value="">姓名：<%out.print(session.getAttribute("membername"));%></h3>
        <h3>身分證字號：<%out.print(session.getAttribute("numberid"));%></h3>
        <label for='massage'>選擇預約日期：</label><input type="date" name="date" value="<%=rs.getString("date")%>" required>
				<script>
                  var date = document.getElementById('massage'),
                  function noSundays(e){
                  var day = new Date(e.target.value).getUTCDay();
                  if ( day == 0 ){
                  e.target.setCustomValidity('不可選擇週日！');
                  } else {
                  e.target.setCustomValidity('');
                  date.addEventListener('input',noSundays);
                  }
                  }
                </script><br><br>
        <label for="time" >選擇時間：</label> <select required name="time" value="<%=rs.getString("ptime") %>" >

				<option value="">請選擇</option>
				<option >11:00~12:00</option>
				<option >12:00~13:00</option>
				<option >14:00~15:00</option>
				<option >15:00~16:00</option>
				<option >16:00~17:00</option>
				<option >17:00~18:00</option>
				<option >19:00~20:00</option>
				<option >20:00~21:00</option>
				<option >21:00~22:00</option>
				<option >22:00~23:00</option>
			</select><br>
	 <button type="submit" class="w3-button w3-black w3-padding-large w3-large w3-margin-top" onclick="document.location='Homepage-e.jsp'">上一步</button>
	 <button type="submit" class="w3-button w3-black w3-padding-large w3-large w3-margin-top" onclick="document.location='index2.jsp'">確認修改</button>
</center>
</form>
</div>
</body>
</html>