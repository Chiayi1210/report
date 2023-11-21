<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    <%@include file ="menu.jsp" %>
    <jsp:useBean id='objDBConfig' scope='session' class='hitstd.group.tool.database.DBConfig' />
<!DOCTYPE html>
 <!--查詢/更改/取消預約網頁 -->
<html>


<body>
<% %>
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

</style>

<%
	
    
	Class.forName("net.ucanaccess.jdbc.UcanaccessDriver");
	Connection con=DriverManager.getConnection("jdbc:ucanaccess://"+objDBConfig.FilePath()+";");
	//out.println("Con= "+con);
	Statement smt= con.createStatement();
	String sql = "SELECT * FROM prescription WHERE id='"+session.getAttribute("numberid")+"'";
	ResultSet pp = smt.executeQuery(sql);
	pp.next();
	//if (pp.next()){
		//session.setAttribute("run","1");
		//}else{   
	      //out.println("<script>alert('查無預約資料，請先預約!!'); window.location='prescription.jsp' </script>");
	
    
	
	%>
<%if (pp.getString("date")!=null) {%>

<form action="Homepage-e.jsp" method="post"> 

    <center><br><h1>我的預約</h1>
       <table style="border:2px #111 solid;" width="20%" >
        <td align="center"><p><%out.print(session.getAttribute("membername"));%>，您好!<br>
        您預約的時間如下：<br>
    <%=pp.getString("date")%><br><%=pp.getString("time")%><br>慢箋號碼：<br>
 <%=pp.getString("cnumber1")%><br><%=pp.getString("cnumber2")%><br><%=pp.getString("cnumber3")%>
 </p></td></table> 

  <br><button type="button" onclick="window.location='Edit.jsp'">更改預約</button>
  <button type="button" onclick="window.location='Cancel.jsp'">取消預約</button>
  <button type="button" onclick="window.location='index2.jsp'">確認回首頁</button>     
      </center></form>
  <%}else{ %> 
   out.println("<script>alert('查無預約資料，請先預約!!'); window.location='prescription.jsp' </script>");

   <%}%>
</body>
</html>