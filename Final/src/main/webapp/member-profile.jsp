<%@ page language="java" contentType="text/html; charset=utf-8" 
pageEncoding="utf-8"%>
<%@page import="java.sql.*"%>
<%@include file ="menu.jsp" %>
<jsp:useBean id='objDBConfig' scope='session' class='hitstd.group.tool.database.DBConfig' />

<html>
<head>
  <!-- Basic -->
  <meta charset="utf-8" />
  <meta http-equiv="X-UA-Compatible" content="IE=edge" />
  <!-- Mobile Metas -->
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
  <!-- Site Metas -->
  <meta name="keywords" content="" />
  <meta name="description" content="" />
  <meta name="author" content="" />

   <title>會員資料管理 | 北護智慧藥局線上預約平台</title>
  

  <!-- bootstrap core css -->
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

</head>

<style>
	.btn-primary {
    color: #fff;
    background-color: #00c6a9;
    border-color: #00c6a9;
}
	
	buttonSS {
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
.input_block {
border-bottom: 1px solid rgba(0,0,0,.1);
}
</style>

<body>

<% 
	Class.forName("net.ucanaccess.jdbc.UcanaccessDriver");
	Connection con=DriverManager.getConnection("jdbc:ucanaccess://"+objDBConfig.FilePath()+";");
	//out.println("Con= "+con);
	Statement smt= con.createStatement();
	String sql = "SELECT * FROM member WHERE id='"+session.getAttribute("numberid")+"'";
	ResultSet IM = smt.executeQuery(sql);
	IM.next();
	%>
<form action="MBupdate-pp.jsp?memberid=<%=request.getParameter("memberid")%>" method="post" name="form">
<section class="slider_section" id="about">
      <div class="container  ">
      <div class="row">
        <div class="col-md-4 "></div>
                  <img src="<%=IM.getString("pic") %>" style=width:280px; height:20px">
                  <h3>選擇要上傳的文件:</h3>
                  <input type="file" name="theFirstFile" size="50" />
            <input type="button" onClick="del()" name=submitButton value="上傳" />
			<script >  
			//點選提交按鈕觸發下面的函式
			function del(){  
				document.form.action="MBpic_update.jsp";//這邊要連結到更新圖片的程式
				document.form.enctype="multipart/form-data";
				document.form.submit();
			}  
			</script>         
                  </div>
        </div>
        <div class="col-md-8" >
            <div class="heading_container" >
    <!--使用 Bootstrap 設計登入表單-->

<div class="panel panel-primary">
    <div class="panel-heading"><h1 >會員基本資料</h1></div>
    <div class="panel-body">
        <div class="form-group">
            <label>姓名</label>
            <input type="text" name="membername" class="form-control" value="<%out.print(session.getAttribute("membername"));%>">
        </div>
        <div class="form-group">
            <label>身分證字號</label>
            <input type="text"  class="form-control" value="<%out.print(session.getAttribute("numberid"));%>" readonly="true">
        </div>
        <div class="form-group">
            <label>電話:</label>
            <input type="text" name="phone" class="form-control" value="<%=IM.getString("phone")%>">
        </div>
        <div class="form-group">
            <label>Email</label>
            <input type="text" name="email" class="form-control" value="<%=IM.getString("memberid")%>">
        </div>
    </div>
   
</div>
 
    <!--使用 Bootstrap 設計登入表單-->
    
    <div class="panel panel-primary">
        <div class="panel-heading"></div>
        <div class="panel-body">
            <div class="row">
                <div class="col-md-6">
                    <div class="form-group">
                        <label>修改密碼</label>
                        <input type="password" name="memberpwd" class="form-control"  value="<%=IM.getString("memberpwd")%>">                                      
                    </div>
                </div>                  
            </div>
        </div>
        <div class="panel-footer">
            <button type="submit" class="btn btn-primary" >修改資料</button>
        </div>
    </div>
    </div>
    </form>
 <script type="text/javascript"> 
 // 這裡使用最原始的js語法實現，可對應換成jquery語法進行邏輯控制
 var visible=document.getElementById('psw_visible');//text block
 var invisible=document.getElementById('psw_invisible');//password block
 var inputVisible = document.getElementById('input_visible');
 var inputInVisible = document.getElementById('input_invisible');
    //隱藏text block，顯示password block
 function showPsw(){
 var val = inputInVisible.value;//將password的值傳給text
 inputVisible.value = val;
 invisible.style.display = "none";  
 visible.style.display = "";  
 }
    //隱藏password，顯示text  
    function hidePsw(){
   var val=inputVisible.value;//將text的值傳給password  
inputInVisible.value = val; 
invisible.style.display = "";  
    visible.style.display = "none";  
}
</script>
    </div>
             </section>
  <section class="info_section ">
    <div class="container">
      <div class="info_bottom layout_padding2">
        <div class="row info_main_row">
          <div class="col-md-6 col-lg-3">
            <h5>
              聯絡資訊
            </h5>
            <div class="info_contact">
              <a href="https://maps.app.goo.gl/MQRkGSyGmgwZGcRx6">
                <i class="fa fa-map-marker" aria-hidden="true"></i>
                <span>
                  位置
                </span>
              </a>
              <a href="">
                <i class="fa fa-phone" aria-hidden="true"></i>
                <span>
                  電話 02 1234567890
                </span>
              </a>
              <a href="">
                <i class="fa fa-envelope"></i>
                <span>
                  Ntunhs@gmail.com
                </span>
              </a>
            </div>
            <div class="social_box">
              <a href="">
                <i class="fa fa-facebook" aria-hidden="true"></i>
              </a>
              <a href="">
                <i class="fa fa-twitter" aria-hidden="true"></i>
              </a>
              <a href="">
                <i class="fa fa-linkedin" aria-hidden="true"></i>
              </a>
              <a href="https://www.instagram.com/ntunhs_dhcm/">
                <i class="fa fa-instagram" aria-hidden="true"></i>
              </a>
            </div>
          </div>
          <div class="col-md-6 col-lg-3">
            <div class="info_links">
              <h5>
                連結
              </h5>
              <div class="info_links_menu">
                <a class="active" href="index2.jsp">
                  首頁
                </a>
                <a href="index2.jsp/#112233">
                  關於我們
                </a>
                <a href="index2.jsp#1234">
                 藥師簡介
                </a>
              
                <a href="prescription.jsp">
                  慢箋預約
              
                <a href="index2.jsp#3456">
                  聯絡我們
                </a>
              </div>
            </div>
          </div>
          <div class="col-md-6 col-lg-3">
            <div class="info_post">
             
              <h5>
                最新消息
              </h5>
              <div class="post_box">
                <div class="img-box">
                  <img src="images/post3.jpg" alt="">
                </div>
                <p>
                  Normal
                  distribution
                </p>
              </div>
              <div class="post_box">
                <div class="img-box">
                  <img src="images/post4.png" alt="">
                </div>
                <p>
                  Normal
                  distribution
                </p>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </section>
  <footer class="footer_section">
    <div class="container">
      <p>
        &copy; <span id="displayYear"></span> All Rights Reserved By
        <a href="https://html.design/">Free Html Templates</a>
        <a>國立台北護理健康大學 Designed by 鄭嘉儀 陳祖均 林天愛</a>
      </p>
    </div>
  </footer>
  
  </body>
  
  </html>