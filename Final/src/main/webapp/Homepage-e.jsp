<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@include file ="menu.jsp" %>
<!DOCTYPE html>
 <!--查詢/更改/取消預約網頁 -->
<%if (session.getAttribute("access") == "y"){%>
<html>

<body>

<header class="w3-container w3-red w3-center" style="padding:40px 16px">
  <center><h1>查詢/更改/取消預約</h1>
  
 <h4 class="w3-margin w3-jumbo">
<br><button type="submit" onclick="document.location='Inquire.jsp'">查詢預約</button>
<button type="submit" onclick="document.location='Edit.jsp'">修改預約時間</button>
<button type="submit" onclick="document.location='Cancel.jsp'">取消預約</button>
</center></h4></header>
</div>
<%}else{%>
	<%out.println("<script>alert('請先登入此系統！！'); window.location='loginCheck-Select.jsp' </script>");%>
	
	<%}%>
</body>
</html>