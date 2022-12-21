<%@ page language="java" contentType="text/html; charset=BIG5"
    pageEncoding="utf-8"%>
<head>石牌藥局
<title>石牌藥局線上預約系統</title>
<body style="background-color:#D3D3D3;">
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="https://www.w3schools.com/lib/w3-theme-black.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<style>
html,body,h1,h2,h3,h4,h5,h6 {font-family: "Roboto", sans-serif;}
.w3-sidebar {
  z-index: 3;
  width: 250px;
  top: 43px;
  bottom: 0;
  height: inherit;
  
}

</style>

</head>



<div class="w3-top">
  <div class="w3-bar w3-theme w3-top w3-left-align w3-large">
    <a class="w3-bar-item w3-button w3-right w3-hide-large w3-hover-white w3-large w3-theme-l1" href="javascript:void(0)" onclick="w3_open()";><i class="fa fa-bars"></i></a>
    <a href="#" class="w3-bar-item w3-button w3-theme-l1">慢性病連續處方箋預約</a>
    <a href="#" class="w3-bar-item w3-button w3-hide-small w3-hover-white">快篩/口罩預約領取</a>
    <a href="#" class="w3-bar-item w3-button w3-hide-small w3-hover-white">藥品品項庫存及查詢</a>
    <a href="#" class="w3-bar-item w3-button w3-hide-small w3-hover-white">查尋/更改/取消預約</a>
  </div>
</div>

<nav class="w3-sidebar w3-bar-block w3-collapse w3-large w3-theme-l5 w3-animate-left" id="mySidebar">
  <a href="javascript:void(0)" onclick="w3_close()" class="w3-right w3-xlarge w3-padding-large w3-hover-black w3-hide-large" title="Close Menu">
    <i class="fa fa-remove"></i>
  </a>
  <h4 class="w3-bar-item"><b>服務內容</b></h4>
  <a class="w3-bar-item w3-button w3-hover-black" href="#">慢性病連續處方箋預約</a>
  <a class="w3-bar-item w3-button w3-hover-black" href="#">快篩/口罩預約領取</a>
  <a class="w3-bar-item w3-button w3-hover-black" href="#">藥品品項庫存及查詢</a>
  <a class="w3-bar-item w3-button w3-hover-black" href="#">查尋/更改/取消預約</a>
</nav>

<!-- Overlay effect when opening sidebar on small screens -->
<div class="w3-overlay w3-hide-large" onclick="w3_close()" style="cursor:pointer" title="close side menu" id="myOverlay"></div>

<!-- Main content: shift it to the right by 250 pixels when the sidebar is visible -->
<div class="w3-main" style="margin-left:250px">

  <div class="w3-row w3-padding-64">
    <div class="w3-twothird w3-container">
      <h1>藥局介紹</h1>
      <p>石牌藥局不單具有完好的醫療資源，還有豐富的照護經驗及專業的職員培訓，期望能夠帶給客戶安心、溫馨又仔細的保健服務，
      而且石牌藥局擁有豐沛的醫療器材、母嬰用品與藥品等類別的產品，讓顧客能便利的挑選，同時，石牌藥局還會提供專業護理的概念給客人，
      做為社區的健康好幫手，石牌藥局能夠使消費者擁有最專業、最安心、最齊全的體會，推薦給各位！</p>
    </div>
    <div class="w3-third w3-container">
      <p class="w3-border w3-padding-large w3-padding-32 w3-center">聯絡我們<br>電話:(02)2821-4986<br></p>
      <p class="w3-border w3-padding-large w3-padding-64 w3-center">營業時間:<br>星期一	09:00–23:00<br>星期二	09:00–23:00<br>星期三	09:00–23:00<br>星期四	09:00–23:00<br>星期五	09:00–23:00<br>星期六	09:00–22:00<br>星期日	休息<br>


      </p>
      <p class="w3-border w3-padding-large w3-padding-64 w3-center">地址:台北市北投區石牌路一段49號<br></p>
    </div>
  </div>

  <div class="w3-row">
    <div class="w3-twothird w3-container">
      <h1 class="w3-text-teal">Heading</h1>
      <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Lorem ipsum
        dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>
    </div>
    <div class="w3-third w3-container">
      <p class="w3-border w3-padding-large w3-padding-32 w3-center">AD</p>
      <p class="w3-border w3-padding-large w3-padding-64 w3-center">AD</p>
    </div>
  </div>

  <div class="w3-row w3-padding-64">
    <div class="w3-twothird w3-container">
      <h1 class="w3-text-teal">Heading</h1>
      <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Lorem ipsum
        dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>
    </div>
    <div class="w3-third w3-container">
      <p class="w3-border w3-padding-large w3-padding-32 w3-center">AD</p>
      <p class="w3-border w3-padding-large w3-padding-64 w3-center">AD</p>
    </div>
  </div>

  <!-- Pagination -->
  <div class="w3-center w3-padding-32">
    <div class="w3-bar">
      <a class="w3-button w3-black" href="#">1</a>
      <a class="w3-button w3-hover-black" href="#">2</a>
      <a class="w3-button w3-hover-black" href="#">3</a>
      <a class="w3-button w3-hover-black" href="#">4</a>
      <a class="w3-button w3-hover-black" href="#">5</a>
      <a class="w3-button w3-hover-black" href="#">»</a>
    </div>
  </div>



</body>
</html>
