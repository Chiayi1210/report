<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@page import="java.sql.*"%>
<%@page import="java.io.*,java.util.*"%>
<%@include file ="menu.jsp" %>
<jsp:useBean id='objDBConfig' scope='session' class='hitstd.group.tool.database.DBConfig' />
 <!--更改預約網頁 -->
<html>
<body>
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
  padding: 6px 0px;
    padding-top: 6px;
    padding-right: 0px;
    padding-bottom: 3px;
    padding-left: 0px;
    border-radius: 3px;
  margin: 0px 0px 10px;
  border: 1px solid #00c6a9;
  cursor: pointer;
  width: 50%;
  font-size: 16px;
  font-weight: 300;
   -webkit-box-pack: center;
    justify-content: center;
    -webkit-box-align: center;
  text-align: center;
  display: flex;    
  align-items: center;
  box-sizing: border-box;
     height: 45px;
    
}
 
 .button:active {
    background-color: #fff;
  transition: all 0.2s ease-in-out 0s;
    transition-behavior: normal;
    transition-duration: 0.2s;
    transition-timing-function: ease-in-out;
    transition-delay: 0s;
    transition-property: all;}

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
    width:75%;
    z-index: 1;
    margin: 3em;;
    overflow: visible;
    border-radius: 10px;
}
        
.window-content {
    width: 70%;
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


.buttonSS {
    padding: 6px 0px;
    padding-top: 6px;
    padding-right: 0px;
    padding-bottom: 6px;
    padding-left: 0px;
    border-radius: 3px;
    cursor: pointer;
    font-weight: 300;
    text-align: center;
    transition: all 0.2s ease-in-out 0s;
    transition-behavior: normal;
    transition-duration: 0.2s;
    transition-timing-function: ease-in-out;
    transition-delay: 0s;
    transition-property: all;
    display: flex;
    -webkit-box-pack: center;
    justify-content: center;
    -webkit-box-align: center;
    align-items: center;
    font-size: 16px;
    box-sizing: border-box;
    width: 100%;
    margin: 0px 0px 10px;
    height: 45px;
    border: 1px solid #00c6a9;
    background: #00c6a9;
    color: rgb(255, 255, 255);}
    
.button:active{
background-color:#fff;
 color: #fff;
}

</style>
<center>
<header >
  <h1><br>更改預約</h1>
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
<form action="Edit-Update.jsp?id=<%=session.getAttribute("numberid")%>" method="post" name="form" >


<table style="border:2px #111 solid;" width="20%" >
        <td align="center"><p><%out.print(session.getAttribute("membername"));%>，您好!<br>
        您預約的時間如下：<br>
   <%=rs.getString("date")%><br><%=rs.getString("time")%><br>慢箋號碼：<br>
<%=rs.getString("cnumber1")%><br><%=rs.getString("cnumber2")%><br><%=rs.getString("cnumber3")%>
</p></td></table>


<br>
        
        <label for='massage'>選擇預約日期：</label><input type="date" name="date" value="<%=rs.getString("date")%>" required>
				<script>
                  var date = document.getElementById('massage'),
                  function noSundays(e){
                  var day = new Date(e.target.value).getUTCDay();
                  if ( day == 0 ){
                  e.target.setCustomValidity('不可選擇週日！');
                  } else {
                  e.target.setCustomValidity('');
                  date.addEventListener('input',noSundays);
                  }
                  }
                </script><br><br>
                
                <label >選擇預約時間：<input type="text" id="demo" name="time" value="<%=rs.getString("time")%>" readonly="readonly" required>
			
    <table width="100%"><tr>
    <td width="auto"  align="center"><button type="button" class="button" onclick='document.getElementById("demo").value= "9:30-10:00"'  for="time" >9:30-10:00</button>
    目前已預約<% %>人</td> 
    <td  width="auto" align="center"><button type="button" onclick='document.getElementById("demo").value = "10:00-10:30" ' for="time" >10:00-10:30</button>
    目前已預約0人</td>
    <td width="auto"align="center"><button type="button" onclick='document.getElementById("demo").value = "10:30-11:00"'  for="time" >10:30-11:00</button>
    目前已預約0人</td>
    <td width="auto"align="center"><button type="button" onclick='document.getElementById("demo").value = "11:30-12:00"'   for="time" >11:30-12:00</button>
    目前已預約0人</td></tr>
  <tr>
    <td width="200"align="center"><button type="button" onclick='document.getElementById("demo").value = "12:00-12:30"'   for="time" >12:00-12:30</button>目前已預約0人</td>
    <td width="200"align="center"><button type="button" onclick='document.getElementById("demo").value = "13:00-13:30"'  for="time" >13:00-13:30</button>目前已預約0人</td>
    <td width="200"align="center"><button type="button" onclick='document.getElementById("demo").value = "13:30-14:00"'  for="time" >13:30-14:00</button>目前已預約0人</td>
    <td width="200"align="center"><button type="button" onclick='document.getElementById("demo").value= "14:30-15:00"'   for="time" >14:30-15:00</button>目前已預約0人</td>     
  </tr>
  <tr>
    <td width="200"align="center"><button type="button" onclick='document.getElementById("demo").value = "15:30-16:00"'   for="time" >15:30-16:00</button>目前已預約0人</td>
    <td width="200"align="center"><button type="button" onclick='document.getElementById("demo").value = "16:30-17:00"'   for="time" >16:30-17:00</button>目前已預約0人</td>
    <td width="200"align="center"><button type="button" onclick='document.getElementById("demo").value = "17:30-18:00"'   for="time" >17:30-18:00</button>目前已預約0人</td>
      <td width="200"align="center"><button type="button" onclick='document.getElementById("demo").value = "18:00-18:30"'   for="time" >18:00-18:30</button>目前已預約0人</td>     
   </tr>
    <tr><td width="200"align="center"><button type="button" onclick='document.getElementById("demo").value = "19:00-19:30"'   for="time" >19:00-19:30</button>目前已預約0人</td>
   <td width="200"align="center"><button type="button" onclick='document.getElementById("demo").value = "19:30-20:00"'   for="time" >19:30-20:00</button>目前已預約0人</td>
   <td width="200"align="center"><button type="button" onclick='document.getElementById("demo").value = "20:30-21:00"'   for="time" >20:30-21:00</button>目前已預約0人</td>
    <td width="200"align="center"><button type="button" onclick='document.getElementById("demo").value = "21:00-21:30"'   for="time" >21:00-21:30</button>目前已預約0人</td>  
    </tr></table>
                
        <!--  <label for="time" >選擇時間：</label> <select required name="time" value="<%=rs.getString("ptime") %>" >

				<option value="">請選擇</option>
				<option >11:00~12:00</option>
				<option >12:00~13:00</option>
				<option >14:00~15:00</option>
				<option >15:00~16:00</option>
				<option >16:00~17:00</option>
				<option >17:00~18:00</option>
				<option >19:00~20:00</option>
				<option >20:00~21:00</option>
				<option >21:00~22:00</option>
				<option >22:00~23:00</option>
			</select>-->
			<br>
	 <button type="submit"  onclick="document.location='Homepage-e.jsp'">上一步</button>
	 <button type="submit"  onclick="document.location='index2.jsp'">確認修改</button>
</center>
</form>
</div>
</body>
</html>