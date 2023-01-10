<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@include file ="menu.jsp" %>
<jsp:useBean id='objDBConfig' scope='session' class='hitstd.group.tool.database.DBConfig' />
<%%>
<!DOCTYPE html>
 <!--查詢/更改/取消預約網頁 -->
<html>

<title>查詢/更改/取消預約</title>
</head>
<body>
<header class="w3-container w3-red w3-center" style="padding:40px 16px">
  <h1 class="w3-margin w3-jumbo">查詢/更改/取消預約</h1>
  </header>
     <%
	Class.forName("net.ucanaccess.jdbc.UcanaccessDriver");
    Connection con=DriverManager.getConnection("jdbc:ucanaccess://"+objDBConfig.FilePath()+";");
    Statement smt= con.createStatement
	(ResultSet.TYPE_SCROLL_INSENSITIVE,ResultSet.CONCUR_READ_ONLY);
	String date =request.getParameter("date");
	String time =request.getParameter("time");
	String cnumber1 =request.getParameter("cnumber1");
	String cnumber2 =request.getParameter("cnumber2");
	String cnumber3 =request.getParameter("cnumber3");
	String sql1 = "SELECT * FROM prescription WHERE id='"+session.getAttribute("numberid")+"'";
	
    ResultSet rs = smt.executeQuery(sql1);
    
	rs.next();
	%>
<br>
 
<div>
      <center><h3><table>
             <tr>
                 <td>病人姓名：</td>
                 <td><%out.print(session.getAttribute("membername"));%></td>
             </tr>
      <tr>
           <td>身分證字號：</td>
                 <td><%out.print(session.getAttribute("numberid"));%></td>
             </tr>
      <tr>
           <td>領藥時段為：</td>
                 <td><%=pp.getString("date")%><br><%=pp.getString("time")%></td>
             </tr>
      <tr>
           <td>慢箋卡號為：</td>
                 <td><%=pp.getString("cnumber1")%></td>
             </tr>
      
      </table>
   </h3>
        
        <button type="submit" class="w3-button w3-black w3-padding-large w3-large w3-margin-top" onclick="document.location='Homepage-e.jsp'">上一步</button>
        <button type="submit" class="w3-button w3-black w3-padding-large w3-large w3-margin-top" onclick="document.location='index.jsp'">確認</button>
      </center>
      </div>





<br><center>
<button type="submit" class="w3-button w3-black w3-padding-large w3-large w3-margin-top" onclick="document.location='Homepage-e.jsp'">上一步</button>
<button type="submit" class="w3-button w3-black w3-padding-large w3-large w3-margin-top" onclick="document.location='index.jsp'">確認</button>
</center>
</div>
</body>
</html>