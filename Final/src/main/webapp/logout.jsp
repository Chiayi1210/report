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
	out.println("<script>alert('您已成功登出!!'); window.location='index2.jsp' </script>");
	
}else{
	response.sendRedirect("index2.jsp");
}
%>	
</body>
</html>