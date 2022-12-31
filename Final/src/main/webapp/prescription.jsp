<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <!--連續處方簽預約網頁 -->
<!DOCTYPE html>
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
<div class="w3-top">
  <div class="w3-bar w3-red w3-card w3-left-align w3-large">
    <a class="w3-bar-item w3-button w3-hide-medium w3-hide-large w3-right w3-padding-large w3-hover-white w3-large w3-red" href="javascript:void(0);" onclick="myFunction()" title="Toggle Navigation Menu"><i class="fa fa-bars"></i></a>
    <a href="index.jsp" class="w3-bar-item w3-button w3-padding-large w3-hover-white">首頁</a>
    <a href="#" class="w3-bar-item w3-button w3-hide-small w3-padding-large w3-white">慢性病連續處方箋預約</a>
    <a href="Edit.jsp" class="w3-bar-item w3-button w3-hide-small w3-padding-large w3-hover-white">查詢/更改/取消預約</a></div>
    
<header class="w3-container w3-red w3-center" style="padding:40px 16px">
  <h1 class="w3-margin w3-jumbo">慢性病連續處方笺預約</h1>
  </header>
  <style>
    input.form-control {
        padding: 6px 12px;
        border: 1px solid #ccc;
        border-radius: 4px;
        -webkit-box-shadow: inset 0 1px 1px rgba(0,0,0,.075);
        box-shadow: inset 0 1px 1px rgba(0,0,0,.075);
        height:3em;
    }

    .input-group input.birthdayForm {
        width: 100px;
        float: initial;
    }

    .input-group .input-group-addon {
        border: 0;
        background: transparent;
        padding: 6px 15px 0px;
    }

    .input-group-addon {
        font-size: 2em;
    }

    form .row .form-group.floating-label-form-group.controls {
        border: 0px;
        margin: 5px 0;
    }

    section h2 {
        /*font-size: 24px;*/
        font-size: 2em;
    }

    section h3R {
        font-weight: bolder;
        color: red;
        /*font-size: 20px;*/
        font-size: 2em;
    }

    section h3 {
        /*font-size: 20px;*/
        font-size: 1.5em;
    }

    section h4 {
        /*font-size: 16px;*/
        font-size: 1.5em;
    }

    select {
        height:2em;
    }

</style>
 <h2><center>預約資料登記</center></h2>
 <center><label for='massage'>選擇預約日期：</label>
<input type="date" id="massage">
<script>
var date = document.getElementById('massage'),
function noSundays(e){
  // Days in JS range from 0-6 where 0 is Sunday and 6 is Saturday
  var day = new Date(e.target.value).getUTCDay();
  if ( day == 0 ){
    e.target.setCustomValidity('不可選擇週日！');
  } else {
    e.target.setCustomValidity('');
  }
}
date.addEventListener('input',noSundays);
</script></center>
<style>
input:invalid {
  background-color: #E00;
}
</style>
</html>
 