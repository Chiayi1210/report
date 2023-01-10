<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file ="menu.jsp" %>
<!DOCTYPE html>
    <!--連續處方簽預約網頁 -->
<html lang="en">
<body >
<header class="w3-container w3-red w3-center" style="padding:80px 16px">
  <h1 class="w3-margin w3-jumbo">慢性病連續處方笺預約</h1>
  </header>
<%if (session.getAttribute("access") == "y"){%>
<center><h1>確認您的資料</h1>
<h3>姓名：<%out.print(session.getAttribute("membername"));%></h3>
<h3>身分證字號：<%out.print(session.getAttribute("numberid"));%></h3>
<h3>電話號碼：<%out.print(session.getAttribute("memberphone"));%></h3>
<h3>電子信箱：<%out.print(session.getAttribute("email"));%></h3><br>
<button class="w3-button w3-black w3-padding-large w3-large w3-margin-top" onclick="document.location='prescription.jsp'">確認</button></center>
<%}else{%>
<h3>錯誤!!找不到資料，請至藥局確認資料</h3>

<%}%>
</body>
</html>
 