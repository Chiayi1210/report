<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<%@page import="java.io.*,java.util.*"%>
<jsp:useBean id='objDBConfig' scope='session' class='hitstd.group.tool.database.DBConfig' />
 <!--查詢/更改/取消預約網頁 -->
<html>
<head>
<meta charset="BIG5">
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
<title>查詢/更改/取消預約</title>
</head>
<body>
<div class="w3-top">
  <div class="w3-bar w3-red w3-card w3-left-align w3-large">
    <a class="w3-bar-item w3-button w3-hide-medium w3-hide-large w3-right w3-padding-large w3-hover-white w3-large w3-red" href="javascript:void(0);" onclick="myFunction()" title="Toggle Navigation Menu"><i class="fa fa-bars"></i></a>
    <a href="index.jsp" class="w3-bar-item w3-button w3-padding-large w3-hover-white">首頁</a>
    <a href="#" class="w3-bar-item w3-button w3-hide-small w3-padding-large w3-white">查詢/更改/取消預約</a></div>
    
<header class="w3-container w3-red w3-center" style="padding:40px 16px">
  <h1 class="w3-margin w3-jumbo">查詢/更改/取消預約</h1>
  </header>
   <%
	Class.forName("net.ucanaccess.jdbc.UcanaccessDriver");
    Connection con=DriverManager.getConnection("jdbc:ucanaccess://"+objDBConfig.FilePath()+";");
	Statement smt= con.createStatement(ResultSet.TYPE_SCROLL_INSENSITIVE,ResultSet.CONCUR_READ_ONLY);
	String sql = "SELECT * prescription left join member on prescription.time=time.date WHERE memberId ='" +request.getParameter("memberId")+"'";
	String option="SELECT * FROM prescription";
    ResultSet rs = smt.executeQuery(sql);
    ResultSet rs2 = smt.executeQuery(option);
	rs.next();
	%>
<form action="Edit-Update.jsp?prescription=<%=request.getParameter("memberId")%>" method="post" name="form" >

<h3 value="<%out.print(session.getAttribute("accessname"));%>">姓名：<%out.print(session.getAttribute("accessname"));%></h3>
        <h3>身分證字號：<%out.print(session.getAttribute("memberid"));%></h3>
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
                </script>
        <label for="time" >選擇時間：</label> <select required name="time" value="<%=rs.getString("time") %>" >

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
	 <button type="submit" class="w3-button w3-black w3-padding-large w3-large w3-margin-top" onclick="document.location='index.jsp'">確認修改</button>
</form>
</div>
</body>
</html>