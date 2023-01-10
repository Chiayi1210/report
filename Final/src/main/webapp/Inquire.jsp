<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    <%@include file ="menu.jsp" %>
    <jsp:useBean id='objDBConfig' scope='session' class='hitstd.group.tool.database.DBConfig' />
<!DOCTYPE html>
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
    <a href="#" class="w3-bar-item w3-button w3-hide-small w3-padding-large w3-white">查詢/更改/取消預約</a>
   </div>
  </div>
<body>
<header class="w3-container w3-red w3-center" style="padding:80px 16px">
  <h1 class="w3-margin w3-jumbo">查詢/更改/取消預約</h1>
  </header>

      <div>
      <center>
        <h3>病人姓名：<%out.print(session.getAttribute("accessname"));%></h3> 
        <h3>身分證字號：<%out.print(session.getAttribute("memberid"));%></h3>  
        <h3>領藥時段為：&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <%out.print(session.getAttribute("time"));%>
        <%out.print(session.getAttribute("date"));%></h3> 
        <h3>慢箋卡號為：<%out.print(session.getAttribute("pcnumber1"));%></h3>
        <button type="submit" class="w3-button w3-black w3-padding-large w3-large w3-margin-top" onclick="document.location='Homepage-e.jsp'">上一步</button>
        <button type="submit" class="w3-button w3-black w3-padding-large w3-large w3-margin-top" onclick="document.location='index.jsp'">確認</button>
      </center>
      </div>
      	<%Class.forName("net.ucanaccess.jdbc.UcanaccessDriver");
      Connection con=DriverManager.getConnection("jdbc:ucanaccess://"+objDBConfig.FilePath()+";");
      Statement stmt= con.createStatement
      (ResultSet.TYPE_SCROLL_INSENSITIVE,ResultSet.CONCUR_READ_ONLY);
      String getprescriptiondata = "SELECT * FROM prescription WHERE accessid='"+request.getParameter("accessid")
      +"' AND date='" +request.getParameter("date")
      +"' AND time='" +request.getParameter("time")
      +"' AND cnumber1='" +request.getParameter("cnumber1")
      +"' AND cnumber2='" +request.getParameter("cnumber2")
      +"' AND cnumber3='" +request.getParameter("cnumber3")+"'";
      //WHERE memberid='"+request.getParameter("memberid")+"' AND date='" +request.getParameter("date")+"'  AND time='" +request.getParameter("time")+"'";
      ResultSet pp = stmt.executeQuery("SELECT * FROM prescription");
      //SELECT * FROM prescription
      if (pp.next())
      session.setAttribute("access","y");
      session.setAttribute("pdate",pp.getString("date"));
      session.setAttribute("ptime",pp.getString("time"));
      session.setAttribute("pcnumber1",pp.getString("cnumber1"));
      session.setAttribute("pcnumber2",pp.getString("cnumber2"));
      session.setAttribute("pcnumber3",pp.getString("cnumber3"));
      %> 
      
</body>
</body>
</html>