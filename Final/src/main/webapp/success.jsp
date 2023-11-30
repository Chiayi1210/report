<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
  <%@include file ="menu.jsp" %> 
      <jsp:useBean id='objDBConfig' scope='session' class='hitstd.group.tool.database.DBConfig' />
    <!--連續處方簽預約成功網頁 -->
<html lang="en">
    <style>

  
        form {border: 0px solid #f1f1f1}    
        
        input[type=text], input[type=password] {
          width: 50%;
          padding: 12px 20px;
          margin: 8px 0;
          display: inline-block;
          box-sizing: border-box;
        }
        
        button {
          background-color: #00c6a9;
          color: white;
          padding: 10px 18px;
          margin: 8px 0;
          border: none;
          cursor: pointer;
          width: 20%;
        }
        
        button:hover {
          opacity: 0.8;
        }
        
        .signbtn {
          width: 28%;
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
        </style>
<body>

<center><h1><%

Class.forName("net.ucanaccess.jdbc.UcanaccessDriver");
Connection con=DriverManager.getConnection("jdbc:ucanaccess://"+objDBConfig.FilePath()+";");
//out.println("Con= "+con);
Statement smt= con.createStatement();
String sql = "SELECT * FROM prescription WHERE id='"+session.getAttribute("numberid")+"'";
ResultSet pp = smt.executeQuery(sql);
pp.next();



if(session.getAttribute("access") !="y"){
 out.println("預約失敗！");
}else{
out.println("預約成功<br>");
 out.println("已預約成功，記得攜帶健保卡來店取藥，我們將以電子信箱提醒您"+"！<br>");%> </h1>
			 <table style="border:2px #111 solid;"  width="25%" >
    <td align="center"><p>
    您預約的時間如下：<%=pp.getString("date")%><br><%=pp.getString("time")%>
&nbsp;&nbsp;&nbsp;<br>
慢性病卡號:<%=pp.getString("cnumber1")%></p></td></table>
<%}%> 
<button onclick="document.location='index2.jsp'">回首頁</button>
</center>


</body>
</html>
 