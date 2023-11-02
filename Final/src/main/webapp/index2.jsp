<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%><%@page import="java.sql.*"%>
 <%@include file ="menu.jsp" %>

<!DOCTYPE html>
<html>

<body>
 <div class="hero_area">
  <form method="post" action="logout.jsp" >
  <%if (session.getAttribute("access") == "y"){%>

<!-- 登出頁 -->
  
      
    <!-- end header section -->
    <!-- slider section -->
    <section class="slider_section ">
      <div id="customCarousel1" class="carousel slide" data-ride="carousel">
        <div class="carousel-inner">
          <div class="carousel-item active">
            <div class="container ">
              <div class="row">
                <div class="col-md-6">
                  <div class="detail-box">
                    
                    <h1>
                     <%out.print(session.getAttribute("membername"));%><br>歡迎光臨<br>北護智慧藥局<br>
                       <span>
                        NTUNHS Pharmacy
                       </span>
                    </h1>
                    <a href="index2.jsp#3456">
                      聯絡我們
                    </a>
                  </div>
                </div>
                <div class="col-md-6">
                  <div class="img-box">
                    <img src="images/Pharmacy.jpg" alt="">
                  </div>
                </div>
              </div>
            </div>
          </div>  
          </div> 
    </section>
    
    </form>
    <!-- end slider section -->
    
    <%}else{%>
    
    
 <!-- 登入頁 -->

    <!-- end header section -->
    <!-- slider section -->
  <div class="hero_area">
   <section class="slider_section ">
      <div class="dot_design">
        <img src="images/dots.png" alt="">
      </div>
      <div id="customCarousel1" class="carousel slide" data-ride="carousel">
        <div class="carousel-inner">
          <div class="carousel-item active">
            <div class="container ">
              <div class="row">
                <div class="col-md-6">
                  <div class="detail-box">
                    
                    <h1>
                     北護智慧藥局線上預約平台 <br>
                       <span>
                        NTUNHS Pharmacy
                        </span>
                    </h1>  
                    <a href="index2.jsp#3456">
                      聯絡我們
                    </a>
                  </div>
                </div>
                <div class="col-md-6">
                  <div class="img-box">
                    <img src="images/Pharmacy.jpg" alt="">
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
      </div>
   </section>
 
    <!-- end 登入頁 -->
<%}%>
  <!-- book section -->
 <div class="hero_area">
  <section class="book_section layout_padding">
    <div class="container">
      <div class="row">
        <div class="col">
          
        </div>
      </div>
    </div>
  </section>


  <!-- end book section -->


  <!-- about section -->

<section class="about_section">
    <div class="container  ">
      <div class="row">
        <div class="col-md-6 ">
          <div class="img-box">
                    <img src="images/about.jpg" alt="">
                  </div>
        </div>
        <div class="col-md-6" id="112233">
          <div class="detail-box">
            <div class="heading_container"  >
              <h2>
                關於 <span>北護智慧藥局</span>
              </h2>
            </div>
            <p>
              has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here', making it look like readable English. Many desktop publishing packages and web page editors has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here', making it look like readable English. Many desktop publishing packages and web page editors
            </p><!-- 改成關於藥局的資料 -->
          </div>
        </div>
      </div>
    </div>
    </div> 
  </section>
 

  <!-- end about section -->


  <!-- treatment section -->

  <section class="treatment_section layout_padding">
    <div class="side_img">
      <img src="images/treatment-side-img.jpg" alt="">
    </div>
    <div class="container">
      <div class="heading_container heading_center">
        <h2>
          服務 <span>項目</span>
        </h2>
      </div>
      <div class="row">
        <div class="col-md-6 col-lg-3">
          <div class="box ">
            <div class="img-box">
              <img src="images/t1.png" alt="">
            </div>
            <div class="detail-box">
              <h4>
                各類處方箋調劑
              </h4>
              <p>
                alteration in some form, by injected humour, or randomised words which don't look even slightly e sure there isn't anything
              </p><!--各類服務說明!  -->
              
             
            </div>
          </div>
        </div>
        <div class="col-md-6 col-lg-3">
          <div class="box ">
            <div class="img-box">
              <img src="images/t2.png" alt="">
            </div>
            <div class="detail-box">
              <h4>
                日常保健
              </h4>
              <p>
                alteration in some form, by injected humour, or randomised words which don't look even slightly e sure there isn't anything
              </p><!--各類服務說明!  -->
              
            </div>
          </div>
        </div>
        <div class="col-md-6 col-lg-3">
          <div class="box ">
            <div class="img-box">
              <img src="images/t3.png" alt="">
            </div>
            <div class="detail-box">
              <h4>
                醫療器材
              </h4>
              <p>
                alteration in some form, by injected humour, or randomised words which don't look even slightly e sure there isn't anything
              </p><!--各類服務說明!  -->
              
            </div>
          </div>
        </div>
        <div class="col-md-6 col-lg-3">
          <div class="box ">
            <div class="img-box">
              <img src="images/t4.png" alt="">
            </div>
            <div class="detail-box">
              <h4>
                用藥諮詢
              </h4>
              <p>
                alteration in some form, by injected humour, or randomised words which don't look even slightly e sure there isn't anything
              </p><!--各類服務說明!  -->
              
            </div>
          </div>
        </div>
      </div>
    </div>
  </section>

  <!-- end treatment section -->

  <!-- team section -->
 <section class="team_section layout_padding">
    <div class="container" id="1234">
      <div class="heading_container heading_center">
        <h2>
          關於 <span>藥師</span>
        </h2>
      </div>
      <div class="carousel-wrap ">
        <div class="owl-carousel team_carousel">
          <div class="item">
            <div class="box">
              <div class="img-box">
                <img src="images/PT2.jpg" alt="" />
              </div>
              <div class="detail-box">
                <h5>
                 陳湘婷
                </h5>
                <h6>
                  美國加州大學藥學系
                </h6>
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
                  <a href="">
                    <i class="fa fa-instagram" aria-hidden="true"></i>
                  </a>
                </div>
              </div>
            </div>
          </div>
          <div class="item">
            <div class="box">
              <div class="img-box">
                <img src="images/Lee.jpg" alt="" />
              </div>
              <div class="detail-box">
                <h5>
                   李聖京
                </h5>
                <h6>
                  韓國首爾大學藥學系
                </h6>
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
                  <a href="">
                    <i class="fa fa-instagram" aria-hidden="true"></i>
                  </a>
                </div>
              </div>
            </div>
          </div>
          <div class="item">
            <div class="box">
              <div class="img-box">
                <img src="images/PT1.jpg" alt="" />
              </div>
              <div class="detail-box">
                <h5>
                林新義
                </h5>
                <h6>
                台灣大學藥學系學士
                </h6>
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
                  <a href="">
                    <i class="fa fa-instagram" aria-hidden="true"></i>
                  </a>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </section>

  

  <!-- end team section -->


  <!-- client section -->
  <section class="client_section layout_padding">
    <div class="container">
      <div class="heading_container">
        <h2>
          <span>最新消息</span>
        </h2>
      </div>
    </div>
    <div class="container px-0">
      <div id="customCarousel2" class="carousel  carousel-fade" data-ride="carousel">
        <div class="carousel-inner">
          <div class="carousel-item active">
            <div class="box">
              <div class="client_info">
                <div class="client_name">
                  <h5>
                    Morijorch<!--最新消息1標題  -->
                  </h5>
                  <h6>
                    Default model text<!-- 作者 -->
                  </h6>
                </div>
                <i class="fa fa-quote-left" aria-hidden="true"></i>
              </div>
              <p>
                editors now use Lorem Ipsum as their default model text, and a search for 'lorem ipsum' will uncover many web sites still in their infancy. Variouseditors now use Lorem Ipsum as their default model text, and a search for 'lorem ipsum' will uncover many web sites still in their infancy. Variouseditors now use Lorem Ipsum as their default model text, and a search for 'lorem ipsum' will uncover many web sites still in their infancy. Various
              </p><!-- 最新消息 -->
            </div>
          </div>
          <div class="carousel-item">
            <div class="box">
              <div class="client_info">
                <div class="client_name">
                  <h5>
                    Rochak<!-- 最新消息2 -->
                  </h5>
                  <h6>
                    Default model text
                  </h6>
                </div>
                <i class="fa fa-quote-left" aria-hidden="true"></i>
              </div>
              <p>
                Variouseditors now use Lorem Ipsum as their default model text, and a search for 'lorem ipsum' will uncover many web sites still in their infancy. Variouseditors now use Lorem Ipsum as their default model text, and a search for 'lorem ipsum' will uncover many web sites still in their infancy. editors now use Lorem Ipsum as their default model text, and a search for 'lorem ipsum' will uncover many web sites still in their infancy.
              </p>
            </div>
          </div>
          
        </div>
        <div class="carousel_btn-box">
          <a class="carousel-control-prev" href="#customCarousel2" role="button" data-slide="prev">
            <i class="fa fa-angle-left" aria-hidden="true"></i>
            <span class="sr-only">Previous</span>
          </a>
          <a class="carousel-control-next" href="#customCarousel2" role="button" data-slide="next">
            <i class="fa fa-angle-right" aria-hidden="true"></i>
            <span class="sr-only">Next</span>
          </a>
        </div>
      </div>
    </div>
  </section>
  <!-- end client section -->

  <!-- contact section -->
  <section class="contact_section layout_padding-bottom">
    <div class="container" id="3456">
      <div class="heading_container">
        <h2>
         聯絡我們
        </h2>
      </div>
      <div class="row">
        <div class="col-md-7">
          <div class="form_container">
            <form action="">
              <div>
                <input type="text" placeholder="姓名" />
              </div>
              <div>
                <input type="email" placeholder="Email" />
              </div>
              <div>
                <input type="text" placeholder="手機" />
              </div>
              <div>
                <input type="text" class="message-box" placeholder="留言" />
              </div>
              <div class="btn_box">
                <button>
                 送出
                </button>
              </div>
            </form>
          </div>
        </div>
        <div class="col-md-5">
          <div class="img-box">
            <img src="images/contact-img.jpg" alt="">
          </div>
        </div>
      </div>
    </div>
  </section>
  <!-- end contact section -->

  <!-- info section -->
  <section class="info_section ">
    <div class="container">
      <div class="info_top">
        <div class="info_logo">
          <a href="">
            <img src="images/logo.png" alt="">
          </a>
        </div>
        <div class="info_form">
          <form action="">
            <input type="email" placeholder="Your email">
            <button>
              Subscribe
            </button>
          </form>
        </div>
      </div>
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
                <%if (session.getAttribute("access") == "y"){%>
                <a href="prescription.jsp">
                  慢箋預約
                <%}else{%>
                <a href="#">
                  慢箋預約
                </a>
                <%}%>
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
  <!-- end info_section -->


  <!-- footer section -->
  <footer class="footer_section">
    <div class="container">
      <p>
        &copy; <span id="displayYear"></span> All Rights Reserved By
        <a href="https://html.design/">Free Html Templates</a>
        <a>國立台北護理健康大學 Designed by 鄭嘉儀 陳祖均 林天愛</a>
      </p>
    </div>
    
     </footer>
  <!-- footer section -->
  </div>
  
<!-- jQery -->
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



</body>

</html>    