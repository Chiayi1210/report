<%@ page language="java" contentType="text/html; charset=BIG5"
    pageEncoding="BIG5"%>
<%
if(session.getAttribute("access") !="y"){
 out.println("�z�L�v�s���������A�Х��n�J�I");
}else{
 out.println("�n�J���\<br>");
 out.println("�n�J�̡G"+
   session.getAttribute("naame")+"�I<br>");
}
%>
<html>
<head><title>�n�J����</title></head>
<body>
<form method="post" action="accesspagea.jsp">
 <%if(session.getAttribute("access") == "n"){%>
  <input type="submit" value="�n�J" name="login">
 <%}else{%>
 <a href="loginCheck-Select.jsp">�n�J</a>
 <%}%>
</form>
</body>
</html>