<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
  <%@include file ="menu.jsp" %> 
    <!--連續處方簽預約成功網頁 -->
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
<%
if(session.getAttribute("access") !="y"){
 out.println("預約失敗！");
}else{
 out.println("預約成功<br>");
 out.println("慢箋號碼:"+session.getAttribute("accesscnumber1")+"已預約成功，記得攜帶健保卡來店取藥，我們將以電子信箱提醒您"
			+"！<br>");
}
%> 
<center><button class="w3-button w3-black w3-padding-large w3-large w3-margin-top" onclick="document.location='index.jsp'">回首頁</button></center>


</div>
</body>
</html>
 