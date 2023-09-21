<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>
<head><title>登出</title></head>
<body>
<%
if(session.getAttribute("access") !="n"){
	session.removeAttribute("memberid");
	session.removeAttribute("membername");
	session.removeAttribute("access");
	//session.invalidate("memberid");
	out.println("您已成功登出！<br>");
	out.println("<a href='index2.jsp'>回首頁</a>");
}else{
	response.sendRedirect("index2.jsp");
}
%>	
</body>
</html>