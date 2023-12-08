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
            <p id="P1">
              本藥局受復康活力藥局及其他贊助廠商捐贈「智能身體成分分析儀」、「智慧感測墊」、「輪椅、助行推車及四腳枴」、「智慧健康手錶」、「保健品」、「藥局申報系統」、「智慧膝力環及足速適客製化鞋墊」等，提供學生良好的學習環境和資源， 讓學生更了解實務操作及有助於推動藥局服務教育和研究發展。此外，還可以使學生們了解門市的營運方式及管理，為未來就業提早做準備，增加學生們的信心，提高競爭力。
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
                我們有一般健保處方箋調劑以及慢性練續處方箋調劑服務，慢性連續處方箋可以在線上預約您方便的時間領藥，藥師可以先備好藥，讓您到店就可以減少排隊時間取藥!
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
                提供各大品牌之日常保健食品，歡迎至店內選購。
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
                我們還有提供國內外品質優良之醫療器材，可依照您的選購需求來挑選，不清楚我們也有專人為您解說。
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
               用藥方面有任何問題歡迎至本藥局做諮詢，我們有優秀的藥師來為您解答。
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
                    急性心肌梗塞併發心因性休克之處理與治療<!--最新消息1標題  -->
                  </h5>
                  <h6>
                    邱春吉Chun-Chi Chiou1,* 、劉淑貞Shu-Chen Liu1 / 臺灣臨床藥學期刊<!-- 作者 -->
                  </h6>
                </div>
                <i class="fa fa-quote-left" aria-hidden="true"></i>
              </div>
              <p>
                心因性休克 (cardiogenic shock, CS) 是一種低心輸出狀態，主要是由於心臟功能障礙導致系統性低灌流合併組織缺氧。
                急性心肌梗塞 (acute myocardial infarction, AMI) 是CS 最常見之病因，然而CS 是AMI 住院病人死亡的最主要原因，三十天的死亡率接近40%，
                一年的死亡率將近50%。臨床試驗對於CS 的定義是以臨床和血液動力學準則為依據，包含持續低血壓、終端器官灌注不良之證據和低心臟指數。
                執行立即性血管重建，處理與梗塞相關的冠狀動脈仍然是主要的治療型態，也是唯一具明顯減少急性心肌梗塞併發心因性休克 (AMI-CS) 死亡率的治療方式。
                約有90% AMICS病人需給予血管活性劑 (vasoactive medications) 包含升壓劑 (vasopressors) 和強心劑 (inotropes) 處理其低血壓和（或）低灌流狀況。
                各種研究顯示norepinephrine具較低心律不整發生風險，比dopamine 或epinephrine 更安全。臨床治療指引推薦norepinephrine 是CS 病人維持灌流壓的首選升壓劑 (IIb/B)。機械式循環輔助(mechanical circulatory support, MCS) 被使用於對升壓劑和強心劑難治療的AMICS病人( IIb/C)。經由文獻回顧與分析，基於目前實證和臨床治療指引，本文將討論AMI-CS 病人之流行病學與預後、定義與分類、病理生理學、處理與治療。
              </p><!-- 最新消息 -->
            </div>
          </div>
          <div class="carousel-item">
            <div class="box">
              <div class="client_info">
                <div class="client_name">
                  <h5>
                    慢性疾病及其用藥對水肺潛水之影響<!-- 最新消息2 -->
                  </h5>
                  <h6>
                    張中維(Chung-Wei Chang) 、 陳冠霖(Kuan-Lin Chen ) / 臺灣臨床藥學雜誌
                  </h6>
                </div>
                <i class="fa fa-quote-left" aria-hidden="true"></i>
              </div>
              <p>
                潛水過程造成的生理變化與潛水員自身的健康狀態可能影響水肺潛水（以下簡稱潛水）的安全。本文透過文獻回顧，先彙整潛水所帶來的生理變化與可能的健康風險，再討論高血壓、糖尿病與氣喘等三種慢性疾病及其用藥對潛水員安全的影響，以及相對安全的用藥選擇。欲從事潛水的高血壓患者，除了留意血壓控制外，可優先選擇較不影響潛水安全的降血壓藥物。Angiotensin converting enzyme inhibitors（ACEIs）與angiotensin receptor blockers（ARBs）為較理想的選擇，不過服用ACEIs應留意乾咳可能影響潛水員在水下的呼吸。使用calcium channel blockers需留意姿態性低血壓的發生，而服用diuretics及β-blockers則較不建議從事潛水。患有糖尿病的潛水員，血糖控制應符合從事潛水的標準，並留意降血糖藥物可能造成低血糖事件發生。氣喘是肺氣壓傷、動脈氣體栓塞等潛水疾病的危險因子，因此控制不穩定的氣喘應視為潛水的禁忌症。氣喘患者從事潛水前應進行肺量計檢查，符合條件的潛水員也建議使用尖峰呼氣流速計追蹤峰值呼氣流量（peak expiratory flow），以確保當天身體狀況適合潛水。使用吸入型類固醇、吸入型長效乙二型交感神經刺激劑或白三烯受體拮抗劑治療並控制良好的氣喘患者，並非潛水的禁忌症。
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
                   <br>
                   <a>台北市北投區明德路365號</a>
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
                  !!營業時間異動!!<br>10/28週六暫停營業
                </p>
              </div>
              <div class="post_box">
                <div class="img-box">
                  <img src="images/post4.png" alt="">
                </div>
                <p>
                  元旦連假營業時間<br>113/1/1暫停營業
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