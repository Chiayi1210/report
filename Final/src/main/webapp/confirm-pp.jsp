<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    <!--連續處方簽預約網頁 -->
<%@include file ="menu.jsp" %>
<html lang="en">

<body>
<header class="w3-container w3-red w3-center" style="padding:40px 16px">
  <h1 class="w3-margin w3-jumbo">慢性病連續處方笺預約</h1>
  </header>
  <style>
    input.form-control {
        padding: 6px 12px;
        border: 1px solid #ccc;
        border-radius: 4px;
        -webkit-box-shadow: inset 0 1px 1px rgba(0,0,0,.075);
        box-shadow: inset 0 1px 1px rgba(0,0,0,.075);
        height:3em;
    }

    .input-group input.birthdayForm {
        width: 100px;
        float: initial;
    }

    .input-group .input-group-addon {
        border: 0;
        background: transparent;
        padding: 6px 15px 0px;
    }

    .input-group-addon {
        font-size: 2em;
    }

    form .row .form-group.floating-label-form-group.controls {
        border: 0px;
        margin: 5px 0;
    }

    section h2 {
        /*font-size: 24px;*/
        font-size: 2em;
    }

    section h3R {
        font-weight: bolder;
        color: red;
        /*font-size: 20px;*/
        font-size: 2em;
    }

    section h3 {
        /*font-size: 20px;*/
        font-size: 1.5em;
    }

    section h4 {
        /*font-size: 16px;*/
        font-size: 1.5em;
    }

    select {
        height:2em;
    }

</style>
 <h2><center>確認預約資料</center></h2>
 <form action="success.jsp">
 <%if (session.getAttribute("access") == "y"){%>
 <div>
 <center><h3>病人姓名：<%out.print(session.getAttribute("accessname"));%></h3> 
<h3>身分證字號：<%out.print(session.getAttribute("memberid"));%></h3> 
<h3>連絡電話：<%out.print(session.getAttribute("memberphone"));%></h3>   
<h3>電子信箱：<%out.print(session.getAttribute("accessid"));%></h3> 
<h3>領藥時段為：<%out.print(session.getAttribute("time"));%></h3> 
<h3><%out.print(session.getAttribute("date"));%></h3>       <!-- value="<%out.print(session.getAttribute("date"));%>  -->

<br><button type="submit" class="w3-button w3-black w3-padding-large w3-large w3-margin-top" onclick="document.location='success.jsp'">確認</button>
</center>
</div>
<%}else{%>
<h3>錯誤!!找不到資料，請至藥局確認資料</h3>

<%}%>

</form>
</body>
</html>