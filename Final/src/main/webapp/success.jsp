<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
  <%@include file ="menu.jsp" %> 
    <!--連續處方簽預約成功網頁 -->
<html lang="en">

<body>

<header class="w3-container w3-red w3-center" style="padding:40px 16px">
  <h1 class="w3-margin w3-jumbo">慢性病連續處方笺預約</h1>
  </header>
<center><h1><%
if(session.getAttribute("access") !="y"){
 out.println("預約失敗！");
}else{
out.println("預約成功<br>");
 out.println("已預約成功，記得攜帶健保卡來店取藥，我們將以電子信箱提醒您" 
			+"！<br>");
}
%> </h1></center>
<center><button class="w3-button w3-black w3-padding-large w3-large w3-margin-top" onclick="document.location='index2.jsp'">回首頁</button></center>



</body>
</html>
 