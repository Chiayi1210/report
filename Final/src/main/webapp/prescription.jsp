<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    <!--連續處方簽預約網頁 -->
<%@include file ="menu.jsp" %>
<html lang="en">

<body>

<header class="w3-container w3-red w3-center" style="padding:80px 16px">
  <h1 class="w3-margin w3-jumbo">慢性病連續處方笺預約</h1>
  </header>
 
 <h2><center>預約資料登記</center></h2>
	<form action="pp-InsertInto.jsp">
		<div>
		  <center><h3 value="<%out.print(session.getAttribute("accessname"));%>">姓名：<%out.print(session.getAttribute("accessname"));%></h3>
		  <h4 value="<%out.print(session.getAttribute("memberid"));%>">身分證字號：<%out.print(session.getAttribute("memberid"));%></h4><br>
				<label for='massage'>選擇預約日期：</label><input type="date" name="date" required>
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
			</center>
			<br>
		</div>
		<center>
			<label for="time" >選擇時間：</label> <select required name="time">

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
			<br> <label for="cnumber1">慢性病卡號1：</label> <input type="text"
				name="cnumber1" required><br>
			<br> <label for="cnumber2">慢性病卡號2：</label> <input type="text"
				name="cnumber2"><br>
			<br> <label for="cnumber3">慢性病卡號3：</label> <input type="text"
				name="cnumber3"><br>
			<br>
			<button type="submit"
				class="w3-button w3-black w3-padding-large w3-large w3-margin-top"
				>確認</button>
	</form></html>
 