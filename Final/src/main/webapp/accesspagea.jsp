<%@ page language="java" contentType="text/html; charset=BIG5"
    pageEncoding="BIG5"%>
<%
if(session.getAttribute("access") !="y"){
 out.println("您無權存取此網頁，請先登入！");
}else{
 out.println("登入成功<br>");
 out.println("登入者："+
   session.getAttribute("naame")+"！<br>");
}
%>
<html>
<head><title>登入網頁</title></head>
<body>
<form method="post" action="accesspagea.jsp">
 <%if(session.getAttribute("access") == "n"){%>
  <input type="submit" value="登入" name="login">
 <%}else{%>
 <a href="loginCheck-Select.jsp">登入</a>
 <%}%>
</form>
</body>
</html>