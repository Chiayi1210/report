<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    <!--連續處方簽預約網頁 -->
<%@page import="java.sql.*"%>
<%@include file ="menu.jsp" %>
<jsp:useBean id='objDBConfig' scope='session' class='hitstd.group.tool.database.DBConfig' />
<body>
<%
	//Class.forName("net.ucanaccess.jdbc.UcanaccessDriver");
	//Connection con=DriverManager.getConnection("jdbc:ucanaccess://"+objDBConfig.FilePath()+";");
	//Statement smt= con.createStatement();
	//String sql = "SELECT * FROM leelab left join position on leelab.positionId=position.positionId WHERE memberId ='" +request.getParameter("memberId")+"'";
	//String option="SELECT * FROM position";
	//ResultSet rs = smt.executeQuery(sql);
	//ResultSet rs2 = smt.executeQuery(option);
	//rs.next();
	//%>
<html>
<title>慢性病連續處方笺預約| 北護智慧藥局線上預約平台</title>
<%if (session.getAttribute("access") == "y"){%>

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

</style>
<center> <br><h1>預約資料登記</h1>
	<form action="pp-InsertInto.jsp">
		<div>
		  <table style="border:2px #ccc solid" width="40%">
		  <form ><td><label for="name" value="<%out.print(session.getAttribute("accessname"));%>">&nbsp;&nbsp;&nbsp;&nbsp;姓名：</label><br><br> 
               <label for="numberid">&nbsp;&nbsp;&nbsp;&nbsp;身分證字號：</label><br><br> 
              <label for="memberphone"  readonly="readonly">&nbsp;&nbsp;&nbsp;&nbsp;電話號碼：</label><br><br> 
              <label for="memberid">&nbsp;&nbsp;&nbsp;&nbsp;E-mail：</label>
          </td>
          <td>
          <input type="text" name="name"value="<%out.print(session.getAttribute("membername"));%>" readonly="readonly"><br>  
          <input type="text" name="id" value="<%out.print(session.getAttribute("numberid"));%>" readonly="readonly"><br>  
          <input type="text" name="phone" value="<%out.print(session.getAttribute("memberphone"));%>" readonly="readonly"><br> 
          <input type="text" name="memberid" value="<%out.print(session.getAttribute("email"));%>" readonly="readonly">
          </td>
         </form>
    </center>
    <!-- function pic(){  
				document.form.action="MBupdate-pp.jsp";
				document.form.enctype="multipart/form-data";
				document.form.submit();
			}  -->
			
     <!--  <h3 value="<%out.print(session.getAttribute("membername"));%>">姓名：<%out.print(session.getAttribute("membername"));%></h3>
		  <h4 value="<%out.print(session.getAttribute("numberid"));%>">身分證字號：<%out.print(session.getAttribute("numberid"));%></h4><br>-->
    <td><button-1 onclick="customizeWindowEvent()" >修改資料</button-1></td></table>
     
     <!-- 修改視窗 ，修改為寫入資料庫-->
     <div id="window-container">
        <div id="window-pop">
            <div class="window-content">
           <form>   
                <span><br><br><h6><b>修改資料</b></h6>


          <table >
          <td ><label for="name">姓名：</label><br><br><br>
            <label for="id">身分證字號：</label><br><br><br>
            <label for="phone">電話號碼：</label><br><br><br>
            <label for="Email">E-mail：</label>
          </td>
 
              <td>    
                <input type="text" value=""> <br>
                <input type="text" name="memberid"><br><br> 
                <input type="text"name="phone"><br><br> 
                <input type="text" name="Email">
			 </td> 
			 
			</table>
			<button type="submit" name="submitButton">確認修改</button>
			<button onclick="document.location='prescription.jsp'">取消</button>
			</span>
			</div>
			</div> 
			</div>
			
			
				<br><label for='massage'>選擇預約日期：</label><input type="date"  name="date" required>
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
                </script>
                <br><br><label >選擇預約時間：<p id="demo" name="time" value=""></p></label>
			</center>
			<br>
    <center><table width="70%">
    <td width="auto"  align="center"><button type="button" onclick='document.getElementById("demo").innerHTML = "9:30-10:00"' required  for="time" value="9:30-10:00">9:30-10:00</button>
    <br>目前已預約3人</td> 
    <td  width="auto" align="center"><button type="button" onclick='document.getElementById("demo").innerHTML = "10:00-10:30" ' required name="time" for="time" value="10:00-10:30">10:00-10:30</button>
    <br>目前已預約0人</td>
    <td width="auto"align="center"><button type="button" onclick='document.getElementById("demo").innerHTML = "10:30-11:00"'required name="time" for="time" value="">10:30-11:00</button>
    <br>目前已預約0人</td>
    <td width="auto"align="center"><button type="button" onclick='document.getElementById("demo").innerHTML = "11:30-12:00"' required name="time" for="time" value="">11:30-12:00</button>
    <br>目前已預約2人</td>
  <tr>
    <td width="200"align="center"><button type="button" onclick='document.getElementById("demo").innerHTML = "12:00-12:30"' required name="time" for="time" value="">12:00-12:30</button><br>目前已預約4人</td>
    <td width="200"align="center"><button type="button" onclick='document.getElementById("demo").innerHTML = "13:00-13:30"' required name="time" for="time" value="">13:00-13:30</button><br>目前已預約0人</td>
    <td width="200"align="center"><button type="button" onclick='document.getElementById("demo").innerHTML = "13:30-14:00"' required name="time" for="time" value="">13:30-14:00</button><br>目前已預約1人</td>
    <td width="200"align="center"><button type="button" onclick='document.getElementById("demo").innerHTML = "14:30-15:00"' required name="time" for="time" value="">14:30-15:00</button><br>目前已預約2人</td>     
  </tr>
  <tr>
    <td width="200"align="center"><button type="button" onclick='document.getElementById("demo").innerHTML = "15:30-16:00"' required name="time" for="time" value="">15:30-16:00</button><br>目前已預約0人</td>
    <td width="200"align="center"><button type="button" onclick='document.getElementById("demo").innerHTML = "16:30-17:00"' required name="time" for="time" value="">16:30-17:00</button><br>目前已預約1人</td>
    <td width="200"align="center"><button type="button" onclick='document.getElementById("demo").innerHTML = "17:30-18:00"' required name="time" for="time" value="">17:30-18:00</button><br>目前已預約3人</td>
      <td width="200"align="center"><button type="button" onclick='document.getElementById("demo").innerHTML = "18:00-18:30"' required name="time" for="time" value="">18:00-18:30</button><br>目前已預約4人</td>     
   </tr>
    <tr><td width="200"align="center"><button type="button" onclick='document.getElementById("demo").innerHTML = "19:00-19:30"' required name="time" for="time" value="">19:00-19:30</button><br>目前已預約1人</td>
   <td width="200"align="center"><button type="button" onclick='document.getElementById("demo").innerHTML = "19:30-20:00"' required name="time" for="time" value="">19:30-20:00</button><br>目前已預約3人</td>
   <td width="200"align="center"><button type="button" onclick='document.getElementById("demo").innerHTML = "20:30-21:00"' required name="time" for="time" value="">20:30-21:00</button><br>目前已預約0人</td>
    <td width="200"align="center"><button type="button" onclick='document.getElementById("demo").innerHTML = "21:00-21:30"' required name="time" for="time" value="">21:00-21:30</button><br>目前已預約1人</td>  
    </tr></table>
			
			<br> <label for="cnumber1">慢性病卡號1：</label> <input type="text"
				name="cnumber1" required><br>
			<br> <label for="cnumber2">慢性病卡號2：</label> <input type="text"
				name="cnumber2"><br>
			<br> <label for="cnumber3">慢性病卡號3：</label> <input type="text"
				name="cnumber3"><br>
			<br>
			<button type="submit">確認</button></form>
	</center>
	<%}else{%>
	<%out.println("<script>alert('請先登入此系統！！'); window.location='loginCheck-Select.jsp' </script>");%>
	
	<%}%>
	<script>
  function customizeWindowEvent() {
      var popup_window = document.getElementById("window-container");

      popup_window.style.display = "block";

      
          
      button.onclick = function close(e) {
                if (e.target == popup_window) {
                    popup_window.style.display = "none";
                } 
            }
          }
        
  
</script>
	</html>

	
	</html>

 