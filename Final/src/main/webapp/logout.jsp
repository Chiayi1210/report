<%@ page language="java" contentType="text/html; charset=BIG5"
    pageEncoding="BIG5"%>
<html>
<head><title>�n�X</title></head>
<body>
<%
if(session.getAttribute("access") !="n"){
	session.removeAttribute("memberid");
	session.removeAttribute("membername");
	session.removeAttribute("access");
	//session.invalidate("memberid");
	out.println("�z�w���\�n�X�I<br>");
	out.println("<a href='index.jsp'>�^����</a>");
}else{
	response.sendRedirect("index.jsp");
}
%>	
</body>
</html>