<%@ page language="java" contentType="text/html; charset=BIG5"
    pageEncoding="BIG5"%>
<%
if(session.getAttribute("access") !="y"){
	out.println("�z�L�v�s���������A�ζW�L�s�������I");
}else{
	out.println("�n�J���\<br>");
	out.println("�n�J�̡G"+
			session.getAttribute("accessid")+"�I<br>");
}
%>
<html>
<head><title>�n�J����</title></head>
<body>
<form method="post" action="logoutcheak.jsp">
	<%if(session.getAttribute("access") == "y"){%>
		<input type="submit" value="�n�X" name="logout">
	<%}else{%>
	<a href="logincheak.jsp">�n�J</a>
	<%}%>
</form>
</body>
</html>