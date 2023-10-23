<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@include file ="menu.jsp" %>
<!DOCTYPE html>
 <!--查詢/更改/取消預約網頁 -->
<%if (session.getAttribute("access") == "y"){%>
<html>

    <script src="js/jquery-3.4.1.min.js"></script>
    <!-- bootstrap js -->
    <script src="js/bootstrap.js"></script>
    <!-- nice select -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-nice-select/1.1.0/js/jquery.nice-select.min.js" integrity="sha256-Zr3vByTlMGQhvMfgkQ5BtWRSKBGa2QlspKYJnkjZTmo=" crossorigin="anonymous"></script>
    <!-- owl slider -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/owl.carousel.min.js"></script>
    <!-- datepicker -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.3.0/js/bootstrap-datepicker.js"></script>
    <!-- custom js -->
    <script src="js/custom.js"></script>
  <script>
  (function(){
    var bsa = document.createElement('script');
       bsa.type = 'text/javascript';
       bsa.async = true;
       bsa.src = '//s3.buysellads.com/ac/bsa.js';
    (document.getElementsByTagName('head')[0]||document.getElementsByTagName('body')[0]).appendChild(bsa);
  })();
  if (window != top) top.location.href = location.href;
  jQuery(document).ready(function($){ $('img').removeAttr('width height'); });
  var gaProperty = 'UA-120201777-1';
  var disableStr = 'ga-disable-' + gaProperty;if (document.cookie.indexOf(disableStr + '=true') > -1) {window[disableStr] = true;}
  function gaOptout() {document.cookie = disableStr + '=true; expires=Thu, 31 Dec 2045 23:59:59 UTC; path=/';window[disableStr] = true;alert('Google Tracking has been deactivated');}
  (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){(i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)})(window,document,'script','//www.google-analytics.com/analytics.js','ga');ga('create', 'UA-120201777-1', 'auto');ga('set', 'anonymizeIp', true);ga('send', 'pageview');
  </script>
  <head>
  <link rel="stylesheet" type="text/css" href="css/bootstrap.css" />

  <!-- fonts style -->
  <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@400;500;700;900&display=swap" rel="stylesheet">

  <!--owl slider stylesheet -->
  <link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/assets/owl.carousel.min.css" />

  <!-- font awesome style -->
  <link href="css/font-awesome.min.css" rel="stylesheet" />
  <!-- nice select -->
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/jquery-nice-select/1.1.0/css/nice-select.min.css" integrity="sha256-mLBIhmBvigTFWPSCtvdu6a76T+3Xyt+K571hupeFLg4=" crossorigin="anonymous" />
  <!-- datepicker -->
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.3.0/css/datepicker.css">
  <!-- Custom styles for this template -->
  <link href="css/style.css" rel="stylesheet" />
  <!-- responsive style -->
  <link href="css/responsive.css" rel="stylesheet" />
  

<title>我的預約| 北護智慧藥局線上預約平台</title>

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
    
.btn {
    position: relative;
    min-width: 100px;
    background: #00c6a9;
    border: 0px solid #111111;
    overflow: hidden;
}
.btn div,
.btn:before {
    font-size: 1.5em;
    font-weight: bold;
    text-transform: uppercase;
    transition: all .3s ease-in-out;
    padding: 10px 20px;
}
.btn:before {
    content: attr(data-hover);
    position: absolute;
    top: 30%;
    left: 0;
    width: 100%;
    opacity: 0;
    transform: translate(-100%, 0);
}
.btn:hover div {
    opacity: 0;
    transform: translate(100%, 0)
}
.btn:hover:before {
    opacity: 1;
    transform: translate(0, 0);
}

    </style>
    <br><b><center><h1>我的預約</h1></b><br>
       
    <br>
     <table> <td width="250"align="center"><a href="Inquire.jsp" class="btn" data-hover="查詢預約">
        <div><img src="images/Search.jpg" style="width: 125px;height: 125px; "></div>
      </a></td>
       <td width="250"align="center"><a href="Edit.jsp" class="btn" data-hover="更改預約" ><div><img src="images/edit.jpg" style="width: 125px;height: 125px; "></div></a></td>
      <td width="250"align="center"><a href="Cancel.jsp" class="btn" data-hover="刪除預約" "><div><img src="images/delete.jpg" style="width: 125px;height: 125px; "></div></a></td>
</table></center>
    <!-- <br><button  class="btn" data-hover="更改預約" href="Edit.jsp"><div><img src="images/edit.jpg" style="width: 80px;height: 100px; "></div></button>
    <br><button  class="btn" data-hover="刪除預約" href="Cancel.jsp"><div><img src="images/delete.jpg" style="width: 80px;height: 100px; "></div></button> -->

</body>
<%}else{%>
	<%out.println("<script>alert('請先登入此系統！！'); window.location='loginCheck-Select.jsp' </script>");%>
	
	<%}%>
	
<!-- <body>

<header class="w3-container w3-red w3-center" style="padding:40px 16px">
  <center><h1>查詢/更改/取消預約</h1>
  
 <h4 class="w3-margin w3-jumbo">
<br><button type="submit" onclick="document.location='Inquire.jsp'">查詢預約</button>
<button type="submit" onclick="document.location='Edit.jsp'">修改預約時間</button>
<button type="submit" onclick="document.location='Cancel.jsp'">取消預約</button>
</center></h4></header>
</div>

</body>-->
</html> 