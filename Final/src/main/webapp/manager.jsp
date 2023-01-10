<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <!--管理者登入網頁 -->
<!DOCTYPE html>
<html>
<head>
<title>石牌藥局線上預約系統</title>
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
<body>
<div class="w3-top">
  <div class="w3-bar w3-red w3-card w3-left-align w3-large">
    <a class="w3-bar-item w3-button w3-hide-medium w3-hide-large w3-right w3-padding-large w3-hover-white w3-large w3-red" href="javascript:void(0);" onclick="myFunction()" title="Toggle Navigation Menu"><i class="fa fa-bars"></i></a>
    <a href="manager.jsp" class="w3-bar-item w3-button w3-padding-large w3-hover-white">首頁</a>
    <a href="index.jsp" class="w3-bar-item w3-button w3-padding-large w3-hover-white">系統首頁</a>
    <a href="managerP.jsp" class="w3-bar-item w3-button w3-hide-small w3-padding-large w3-white">預約資料列印</a></div>
   </div>
  </div>
<header class="w3-container w3-red w3-center" style="padding:100px 16px">
  <h1 class="w3-margin w3-jumbo">管理者入口</h1>
  <button class="w3-button w3-black w3-padding-large w3-large w3-margin-top"><botton onclick="document.location='managerloginCheck.jsp'"> 登入</button></button>
</header>
  
 
</body>
</html>