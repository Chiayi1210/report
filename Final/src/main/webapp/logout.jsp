<%@ page language="java" contentType="text/html; charset=BIG5"
    pageEncoding="BIG5"%>
<html>
<head><title>�n�X</title></head>
<body>
<%
if(session.getAttribute("access") !="n"){
	session.removeAttribute("accessid");
	//session.invalidate();
	out.println("�z�w���\�n�X�I<br>");
	out.println("<a href='logina.jsp'>�n�J</a>");
}else{
	response.sendRedirect("logina.jsp");
}
%>	
</body>
</html>