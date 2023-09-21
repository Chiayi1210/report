<%@ page language="java" contentType="text/html; charset=UTF-8" 
pageEncoding="UTF-8"%><%@page import="java.sql.*"%>


<!DOCTYPE html>
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

   <title>北護智慧藥局線上預約平台</title>


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
<body>
 <div class="hero_area">
    <!-- header section strats -->
    <header class="header_section">
      <div class="header_bottom">
        <div class="container-fluid">
          <nav class="navbar navbar-expand-lg custom_nav-container ">
            <a class="navbar-brand" href="index2.jsp">
              <img src="images/logo.png"  alt="">
            </a>
            
        <button class="navbar-toggler collapsed" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="切換導航">
          <span class=""> </span>
        </button>   
        
           <div class="navbar-collapse collapse show" id="navbarSupportedContent" style="">
            <div class="d-flex mr-auto flex-column flex-lg-row align-items-center">
             <div class="collapse navbar-collapse" id="navbarSupportedContent">
              <div class="d-flex mr-auto flex-column flex-lg-row align-items-center">
                <ul class="navbar-nav  ">
                  <li class="nav-item active">
                    <a class="nav-link" href="index2.jsp">首頁 <span class="sr-only">(current)</span></a>
                  </li>
                  <li class="nav-item">
                    <a class="nav-link" href="about.html"> 關於我們</a>
                  </li>
                  <li class="nav-item">
                    <a class="nav-link" href="doctor.html">藥師簡介</a>
                  </li>
                  <li class="nav-item">
                    <a class="nav-link" href="treatment.html">慢箋預約</a>
                  </li>
                  <li class="nav-item">
                    <a class="nav-link" href="contact.html">聯絡我們</a>
                  </li>
                </ul>
              </div>
       
              <div class="quote_btn-container">
                <a href="loginCheck-Select.jsp">
                  <i class="fa fa-user" aria-hidden="true"></i>
                  <span>
                    登入
                  </span>
                </a>
                <a href="logout.jsp">
                  <i class="fa fa-user" aria-hidden="true"></i>
                  <span>
                    登出
                  </span>
                </a>
                <form class="form-inline">
                </form>
                </div>
                </div>
              </div>
            </div>
          </nav>
        </div>
      </div>         
    </header>
    
</body>
</html>


