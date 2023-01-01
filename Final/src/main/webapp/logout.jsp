<%@ page language="java" contentType="text/html; charset=BIG5"
    pageEncoding="BIG5"%>
<html>
<head><title>登出</title></head>
<body>
<%
if(session.getAttribute("access") !="n"){
	session.removeAttribute("accessid");
	//session.invalidate("memberid");
	out.println("您已成功登出！<br>");
	out.println("<a href='index.jsp'>回首頁</a>");
}else{
	response.sendRedirect("index.jsp");
}
%>	
</body>
</html>