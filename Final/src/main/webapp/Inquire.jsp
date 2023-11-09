<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    <%@include file ="menu.jsp" %>
    <jsp:useBean id='objDBConfig' scope='session' class='hitstd.group.tool.database.DBConfig' />
<!DOCTYPE html>
 <!--查詢/更改/取消預約網頁 -->
<html>


<body>
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

<form action="Homepage-e.jsp" method="post"> 
<% 
	Class.forName("net.ucanaccess.jdbc.UcanaccessDriver");
	Connection con=DriverManager.getConnection("jdbc:ucanaccess://"+objDBConfig.FilePath()+";");
	//out.println("Con= "+con);
	Statement smt= con.createStatement();
	String sql = "SELECT * FROM prescription WHERE id='"+session.getAttribute("numberid")+"'";
	ResultSet pp = smt.executeQuery(sql);
	pp.next();
	
	%>
    <center><h1>我的預約</h1>
       <table style="border:2px #111 solid;"  width="20%" >
        <td align="center" ><p><%out.print(session.getAttribute("membername"));%>，您好!<br>
        您預約的時間如下：<br>
    <%=pp.getString("date")%><br><%=pp.getString("time")%><br>
<%=pp.getString("cnumber1")%><%=pp.getString("cnumber2")%><%=pp.getString("cnumber3")%></p></td></table> 
   

  
  <br><button type="button" onclick="window.location='Edit.html'">更改預約</button>
  <button type="button" onclick="window.location='Cancel.html'">取消預約</button>
  <br><button type="button" onclick="window.location='index2.html'">確認回首頁</button>
<!--  <center><header>
  <h1 >查詢預約</h1>
  </header></center><
  

	
      <div>
      <center><h3>
      <table>
             <tr>
                 <td align="center">病人姓名：<%out.print(session.getAttribute("membername"));%></td>
                 
             </tr>
      <tr>
           <td align="center">身分證字號：<%out.print(session.getAttribute("numberid"));%></td>
                
             </tr>
      <tr>
           <tdalign="center">領藥日期為：<%=pp.getString("date")%></td>
          
             </tr>
             <tr>
              <td align="center">領藥時間為：<%=pp.getString("time")%></td>
              </tr>
      <tr>
           <td align="center">慢箋卡號為：<%=pp.getString("cnumber1")%></td>
                 
             </tr>
      
      </table>
   </h3>
        
       
        <button type="submit"  onclick="document.location='index2.jsp'">確認</button>
      </center>
      </div>-->
    
 <!--    //Class.forName("net.ucanaccess.jdbc.UcanaccessDriver");
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
      //session.setAttribute("pcnumber3",pp.getString("cnumber3")); --> 
     
      
</body>
</html>