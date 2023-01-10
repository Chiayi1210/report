<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@include file ="menu.jsp" %>
    <jsp:useBean id='objDBConfig' scope='session' class='hitstd.group.tool.database.DBConfig' />
<!DOCTYPE html>
 <!--查詢/更改/取消預約網頁 -->
<html>


<body>
<header class="w3-container w3-red w3-center" style="padding:80px 16px">
  <h1 class="w3-margin w3-jumbo">查詢/更改/取消預約</h1>
  </header>
<%
	Class.forName("net.ucanaccess.jdbc.UcanaccessDriver");
	Connection con=DriverManager.getConnection("jdbc:ucanaccess://"+objDBConfig.FilePath()+";");
	//out.println("Con= "+con);
	Statement smt= con.createStatement();
	String sql = "SELECT * FROM prescription WHERE id='"+session.getAttribute("numberid")+"'";
	ResultSet pp = smt.executeQuery(sql);
	pp.next();
	%>
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
      	<%
      	//Class.forName("net.ucanaccess.jdbc.UcanaccessDriver");
      //Connection con=DriverManager.getConnection("jdbc:ucanaccess://"+objDBConfig.FilePath()+";");
      //Statement stmt= con.createStatement
      //(ResultSet.TYPE_SCROLL_INSENSITIVE,ResultSet.CONCUR_READ_ONLY);
      //String getprescriptiondata = "SELECT * FROM prescription WHERE accessid='"+request.getParameter("accessid")
      //+"' AND date='" +request.getParameter("date")
      //+"' AND time='" +request.getParameter("time")
      //+"' AND cnumber1='" +request.getParameter("cnumber1")
      //+"' AND cnumber2='" +request.getParameter("cnumber2")
      //+"' AND cnumber3='" +request.getParameter("cnumber3")+"'";
      //WHERE memberid='"+request.getParameter("memberid")+"' AND date='" +request.getParameter("date")+"'  AND time='" +request.getParameter("time")+"'";
     //ResultSet pp = stmt.executeQuery("SELECT * FROM prescription");
      //SELECT * FROM prescription
     // if (pp.next())
      //session.setAttribute("access","y");
      //session.setAttribute("pdate",pp.getString("date"));
      //session.setAttribute("ptime",pp.getString("time"));
      //session.setAttribute("pcnumber1",pp.getString("cnumber1"));
      //session.setAttribute("pcnumber2",pp.getString("cnumber2"));
      //session.setAttribute("pcnumber3",pp.getString("cnumber3"));
      %> 
      
</body>
</html>