<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    <!--連續處方簽預約網頁 -->
<%@include file ="menu.jsp" %>
<jsp:useBean id='objDBConfig' scope='session' class='hitstd.group.tool.database.DBConfig' />
<%Class.forName("net.ucanaccess.jdbc.UcanaccessDriver");
Connection con=DriverManager.getConnection("jdbc:ucanaccess://"+objDBConfig.FilePath()+";");
Statement stmt= con.createStatement
(ResultSet.TYPE_SCROLL_INSENSITIVE,ResultSet.CONCUR_READ_ONLY);
//WHERE memberid='"+request.getParameter("memberid")+"' AND date='" +request.getParameter("date")+"'  AND time='" +request.getParameter("time")+"'";
ResultSet pp = stmt.executeQuery("SELECT * FROM prescription WHERE id='"+session.getAttribute("id")+"' And name='"+session.getAttribute("name")+"' And date='"+session.getAttribute("date")+"'And time='"+session.getAttribute("time")+"'And cnumber1='"+session.getAttribute("cnumber1")+"'");
//SELECT * FROM prescription
 %>
 
<html lang="en">

<body>

<header class="w3-container w3-red w3-center" style="padding:40px 16px">
  <h1 class="w3-margin w3-jumbo">慢性病連續處方笺預約</h1>
  </header>
 
 <h2><center>確認預約資料</center></h2>

 <form action="success.jsp">

 
 <center>
 <br><table font size="8">
 <tr>
    <td>病人姓名：</td>
    <td><%out.print(session.getAttribute("accessname"));%></td>
 </tr>
 <tr>
    <td>身分證字號：</td>
    <td><%out.print(session.getAttribute("memberid"));%></td>
 </tr>
 <%while(pp.next()){ %>
 <tr>
   <td>日期:</td>
    <td><%=pp.getString("date") %><br></td>
 </tr>
 <tr>
    <td>時間:</td>
    <td><%=pp.getString("time") %><br></td>
 </tr>
 <tr>
    <td>慢箋卡號:</td>
    <td><%=pp.getString("pcnumber1") %></td>
 </tr>

 </table><br><%}%>  </center>
 
 
 </form>

<button type="submit" class="w3-button w3-black w3-padding-large w3-large w3-margin-top" onclick="document.location='success.jsp'">確認</button>


</body>
</html>