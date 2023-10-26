<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    <%@page import="java.sql.*"%>
<%@page import="java.io.*,java.util.*"%>
    <%@include file ="menu.jsp" %>
<jsp:useBean id='objDBConfig' scope='session' class='hitstd.group.tool.database.DBConfig' />

<!DOCTYPE html>
 <!--取消預約網頁 -->
<html>
<title>查詢/更改/取消預約</title>
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
	
    ResultSet pp = smt.executeQuery(sql1);
    
	pp.next();
	%>
<br>
 
<div>
<form action="remove.jsp?id=<%=session.getAttribute("numberid")%>" method="post" name="form" >
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
                 <td><%=pp.getString("cnumber1")%><br><%=pp.getString("cnumber2")%><br><%=pp.getString("cnumber3")%></td>
             </tr>
      
      </table>
   </h3>
        <button type="submit" class="w3-button w3-black w3-padding-large w3-large w3-margin-top" onclick="document.location='Homepage-e.jsp'">上一步</button>
        <button type="submit" class="w3-button w3-black w3-padding-large w3-large w3-margin-top" onclick="document.location='Homepage-e.jsp'">確認取消</button>
        
      </center>
      </form>
      </div>
</body>
</html>