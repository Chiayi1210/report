<%@ page language="java" contentType="text/html; charset=BIG5"
    pageEncoding="utf-8"%>
<html lang="en">
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

<!-- Navbar -->
<div class="w3-top">
  <div class="w3-bar w3-red w3-card w3-left-align w3-large">
    <a class="w3-bar-item w3-button w3-hide-medium w3-hide-large w3-right w3-padding-large w3-hover-white w3-large w3-red" href="javascript:void(0);" onclick="myFunction()" title="Toggle Navigation Menu"><i class="fa fa-bars"></i></a>
    <a href="homepage.jsp" class="w3-bar-item w3-button w3-padding-large w3-white">首頁</a>
    <a href="prescription.jsp" class="w3-bar-item w3-button w3-hide-small w3-padding-large w3-hover-white">慢性病連續處方箋預約</a>
    <a href="Edit.jsp" class="w3-bar-item w3-button w3-hide-small w3-padding-large w3-hover-white">查詢/更改/取消預約</a>
    <a href="manager.jsp" class="w3-bar-item w3-button w3-hide-small w3-padding-large w3-hover-white">管理者入口</a>
  </div>
</div>

<!-- Header -->
<header class="w3-container w3-red w3-center" style="padding:128px 16px">
  <h1 class="w3-margin w3-jumbo">歡迎光臨</h1>
  <p class="w3-xlarge">石牌藥局預約系統</p>
  
</header>

<!-- First Grid -->
<div class="w3-row-padding w3-padding-64 w3-container">
  <div class="w3-content">
    <div class="w3-twothird">
      <h1>關於我們</h1>
      <h5 class="w3-padding-32">石牌藥局不單具有完好的醫療資源，還有豐富的照護經驗及專業的職員培訓，期望能夠帶給客戶安心、溫馨又仔細的保健服務， 而且石牌藥局擁有豐沛的醫療器材、母嬰用品與藥品等類別的產品，讓顧客能便利的挑選，同時，石牌藥局還會提供專業護理的概念給客人， 做為社區的健康好幫手，石牌藥局能夠使消費者擁有最專業、最安心、最齊全的體會，推薦給各位！</h5>

      <p class="w3-text-grey"></p>
    </div>

    <div class="w3-third w3-center">
      <i class="fa fa-anchor w3-padding-64 w3-text-red"></i>
    </div>
  </div>
</div>

<!-- Second Grid -->
<div class="w3-row-padding w3-light-grey w3-padding-64 w3-container">
  <div class="w3-content">
    <div class="w3-twothird">
      <h1>聯絡資訊</h1>
      <h5 class="w3-padding-32">電話:(02)2821-4986<br><br>地址:台北市北投區石牌路一段49號<br>
營業時間:<br>
星期一 09:00–23:00<br>
星期二 09:00–23:00<br>
星期三 09:00–23:00<br>
星期四 09:00–23:00<br>
星期五 09:00–23:00<br>
星期六 09:00–22:00<br>
星期日 休息</h5>

      <p class="w3-text-grey"></p>
    </div>

    <div class="w3-third w3-center">
      <i class=" w3-padding-64 "><img  src="pic/pic.png" ></i>
    </div>
  </div>
</div>
</body>
</html>