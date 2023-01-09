<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    <!--連續處方簽預約網頁 -->
<%@include file ="menu.jsp" %>
<jsp:useBean id='objDBConfig' scope='session' class='hitstd.group.tool.database.DBConfig' />


<html lang="en">

<body>
<header class="w3-container w3-red w3-center" style="padding:40px 16px">
  <h1 class="w3-margin w3-jumbo">慢性病連續處方笺預約</h1>
  </header>
 
 <h2><center>確認預約資料</center></h2>
 <form action="success.jsp">
 <%Class.forName("net.ucanaccess.jdbc.UcanaccessDriver");
Connection con=DriverManager.getConnection("jdbc:ucanaccess://"+objDBConfig.FilePath()+";");
Statement smt= con.createStatement
(ResultSet.TYPE_SCROLL_INSENSITIVE,ResultSet.CONCUR_READ_ONLY);
String getprescriptiondata = "SELECT * FROM prescription WHERE memberid='"+
		request.getParameter("memberid")+"' AND date='" +
		request.getParameter("date")+"'  AND time='" +
				request.getParameter("time")+"'";
ResultSet prescriptions = smt.executeQuery(getprescriptiondata);
if (prescriptions.next())
	session.setAttribute("access","y");
session.setAttribute("pdate",request.getParameter("date"));
session.setAttribute("ptime",request.getParameter("time"));
session.setAttribute("pcnumber1",request.getParameter("cnumber1"));
session.setAttribute("pcnumber2",request.getParameter("cnumber2"));
session.setAttribute("pcnumber3",request.getParameter("cnumber3"));
%>
 <div>
 <center><h3>病人姓名：<%out.print(session.getAttribute("accessname"));%></h3> 
         <h3>身分證字號：<%out.print(session.getAttribute("memberid"));%></h3> 
         <h3>連絡電話：<%out.print(session.getAttribute("memberphone"));%></h3>   
         <h3>電子信箱：<%out.print(session.getAttribute("accessid"));%></h3> 
         <h3>領藥日期為：<%out.print(session.getAttribute("pdate"));%></h3> 
         <h3>領藥時段為：<%out.print(session.getAttribute("ptime"));%></h3> 
         <h3>慢箋號碼為：<%out.print(session.getAttribute("pcnumber1"));%><%out.print(session.getAttribute("pcnumber2"));%><%out.print(session.getAttribute("pcnumber3"));%></h3><br>
<button type="submit" class="w3-button w3-black w3-padding-large w3-large w3-margin-top" onclick="document.location='success.jsp'">確認</button>
</center>
</div>


</form>
</body>
</html>