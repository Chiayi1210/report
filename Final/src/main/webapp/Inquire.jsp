
<%@page import="java.security.DrbgParameters.NextBytes"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    <%@include file ="menu.jsp" %>
    <jsp:useBean id='objDBConfig' scope='session' class='hitstd.group.tool.database.DBConfig' />
<!DOCTYPE html>
 <!--查詢/更改/取消預約網頁 -->
<html>




<style>
button {
  background-color: #00c6a9;
  color: white;
  padding: 6px 0px;
    padding-top: 6px;
    padding-right: 0px;
    padding-bottom: 3px;
    padding-left: 0px;
    border-radius: 3px;
  margin: 0px 0px 10px;
  border: 1px solid #00c6a9;
  cursor: pointer;
  width: 15%;
  font-size: 18px;
  font-weight: 300;
   -webkit-box-pack: center;
    justify-content: center;
    -webkit-box-align: center;
  text-align: center;
  display: flex;    
  align-items: center;
  box-sizing: border-box;
     height: 50px;
    
}
 
 .button:active {
    background-color: #fff;
  transition: all 0.2s ease-in-out 0s;
    transition-behavior: normal;
    transition-duration: 0.2s;
    transition-timing-function: ease-in-out;
    transition-delay: 0s;
    transition-property: all;}
<!--表格樣式-->
table {
  border: 0;
  border-collapse: collapse;
  border-radius: 8px;
  width: 100%;
}
th {
  border: solid 1px #00c6a9;
  padding: 16px 8px;
}
td {
  border: solid 1px #00c6a9;
  text-align: center;
  padding: 8px;
  color: #000000;
}
table td a{
  background-color: rgb(74, 225, 255);
  color: white;
  padding:5px 20px;
  border-radius: 30px;
  font-weight: bold;
 
}



.basic {
  background-color: #00c6a9;
}
.standard {
  background-color: rgb(3, 229, 195);
  border: 1px solid rgb(3, 229, 195);
  color: rgb(0, 0, 0);
}
.premium {
  border: 1px solid #2e3a4d;
  background-color: #2e3a4d;
  color: white;
}
.price {
  font-size: 20px;
  font-weight: 800;
}
.price td {
  color: black;
}
.main {
  width: 80%;
  margin: 20px auto;
  justify-content: center;
  align-items: center;
}
</style>
<body>
<%
	Class.forName("net.ucanaccess.jdbc.UcanaccessDriver");
	Connection con=DriverManager.getConnection("jdbc:ucanaccess://"+objDBConfig.FilePath()+";");
	//out.println("Con= "+con);
	Statement smt= con.createStatement();
	String sql = "SELECT * FROM prescription WHERE id='"+session.getAttribute("numberid")+"'AND prescription.cnumber1 <>' ' ";
	ResultSet pp = smt.executeQuery(sql);
	
	pp.next();
	
	  
	%>
	
	
<center>	
<form action="Homepage-e.jsp" method="post"> 

       
  <%if (pp.next()){ 
      int count=0 ;
      while (pp.next()){ 
    	count =count+1;  
     
        if (count == 1 ){%>
           <br><br><table style="padding:30px;"><tr align="center"><th>慢箋號碼</th><th>日期</th><th>時間</th></tr>
           <tr>        
      <%}else{ %>
          </tr><tr>
      <%}%>
     
       <td><%=pp.getString("cnumber1")%></td><td><%=pp.getString("date")%></td><td><%=pp.getString("time")%></td>
       
     <%}%>
        </tr></table>    
  <br><button type="button" onclick="window.location='Edit.jsp'">更改預約</button>
  <button type="button" onclick="window.location='Cancel.jsp'">取消預約</button>
  <button type="button" onclick="window.location='index2.jsp'">確認回首頁</button>
  <%}else{out.println("查無預約資料，請先預約!!"); %>
   <button type="button" onclick="window.location='prescription.jsp'">預約</button>
<%} %>


    
     
     </form></center>

 
</body>
</html>