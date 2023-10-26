<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    <!--連續處方簽預約網頁 -->
<%@include file ="menu.jsp" %>
<jsp:useBean id='objDBConfig' scope='session' class='hitstd.group.tool.database.DBConfig' />
<%
Class.forName("net.ucanaccess.jdbc.UcanaccessDriver");
Connection con=DriverManager.getConnection("jdbc:ucanaccess://"+objDBConfig.FilePath()+";");
Statement stmt= con.createStatement
(ResultSet.TYPE_SCROLL_INSENSITIVE,ResultSet.CONCUR_READ_ONLY);
ResultSet pp = stmt.executeQuery("SELECT * FROM prescription WHERE id='"+session.getAttribute("numberid")+"'");
//SELECT * FROM prescription
%>

<html lang="en">
<style>
form {border: 0px solid #f1f1f1}    

input[type=text], input[type=password] {
  width: auto;
  padding: 12px 20px;
  margin: 8px 0;
  display: inline-block;
  box-sizing: border-box;
}

input[type=submit] {
  background-color: #00c6a9;
  color:white;
  width: 30%;
  padding: 14px 20px;
  margin: 8px 0;
  display: inline-block;
  border: none;
}


button {
  background-color: #00c6a9;
  color: white;
  padding: 14px 15px;
  margin: 8px 0;
  border: none;
  cursor: pointer;
  width: 30%;
}

button-1 {
  background-color: #00c6a9;
  color: white;
  padding: 5px 5px;
  margin: 8px 0;
  border: none;
  cursor: pointer;
  width: 10%;
}

button:hover {
  opacity: 0.8;
}

.signbtn {
  width: auto;
  color:white;
  padding: 10px 18px;
  background-color: #00c6a9;
}

.imgcontainer {
  text-align: center;
  margin: 24px 0 12px 0;
}

img.avatar {
  width: 70%;
  border-radius: 50%;
}

.container {
  padding: 16px;
}

span.psw {
  float: center;
  padding-top: 50px;
}

/* Change styles for span and cancel button on extra small screens */
@media screen and (max-width: 300px) {
  span.psw {
     display: block;
     float: none;
  }
  .signbtn {
     width: 50%;
  }
}

#window-container{
    display: none;
    position: fixed;
    left: 0;
    top: 0;
    width: 100%;
    height: 100%;
    background-color: rgba(0,0,0,0.5);
}
       
#window-pop{
    background: white;
    width:70%;
    z-index: 1;
    margin: 12% auto;
    overflow: visible;
    border-radius: 10px;
}
        
.window-content {
    width: auto;
    height: 480px;
    line-height: 200px
    overflow : visible;
    text-align: center;
 
  }

span {
    display: inline-block;
    vertical-align: middle;
    line-height: normal;
}

</style>
<body>

<header style="padding:40px 16px">
  <h1>慢性病連續處方笺預約</h1>
  </header>
 
 <h2><center>確認預約資料</center></h2>

 <form action="success.jsp">
 <center>
 <br>
 <%while(pp.next()){ %> 
 <h3><table>
 <tr>
    <td>病人姓名：</td>
    <td><%=pp.getString("name")%></td>
 </tr>
 <tr>
    <td>身分證字號：</td>
    <td><%=pp.getString("id")%></td>
 </tr>
 
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
    <td><%=pp.getString("cnumber1") %></td>
</tr>
</table></h3><br><%}%>
<button type="submit" class="w3-button w3-black w3-padding-large w3-large w3-margin-top" onclick="document.location='success.jsp'">確認</button> 
 </form>
</body>
</html>