<%@ page language="java" contentType="text/html; charset=BIG5"
    pageEncoding="BIG5"%>
<%
if(session.getAttribute("access") !="y"){
	out.println("您無權存取此網頁，或超過存取期限！");
}else{
	out.println("登入成功<br>");
	out.println("登入者："+
			session.getAttribute("accessid")+"！<br>");
}
%>
<html>
<head><title>登入網頁</title></head>
<body>
<form method="post" action="logoutcheak.jsp">
	<%if(session.getAttribute("access") == "y"){%>
		<input type="submit" value="登出" name="logout">
	<%}else{%>
	<a href="logincheak.jsp">登入</a>
	<%}%>
</form>
</body>
</html>