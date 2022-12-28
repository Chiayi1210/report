<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <!--連續處方簽預約網頁 -->
<!DOCTYPE html>
<html lang="en">
<head>
<title>石牌藥局線上預約系統</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Lato">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Montserrat">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<style>
body,h1,h2,h3,h4,h5,h6 {font-family: "Lato", sans-serif}
.w3-bar,h1,button {font-family: "Montserrat", sans-serif}
.fa-anchor,.fa-coffee {font-size:200px}
</style>
</head>
<body>
<div class="w3-top">
  <div class="w3-bar w3-red w3-card w3-left-align w3-large">
    <a class="w3-bar-item w3-button w3-hide-medium w3-hide-large w3-right w3-padding-large w3-hover-white w3-large w3-red" href="javascript:void(0);" onclick="myFunction()" title="Toggle Navigation Menu"><i class="fa fa-bars"></i></a>
    <a href="index.jsp" class="w3-bar-item w3-button w3-padding-large w3-hover-white">首頁</a>
    <a href="#" class="w3-bar-item w3-button w3-hide-small w3-padding-large w3-white">慢性病連續處方箋預約</a>
    <a href="Edit.jsp" class="w3-bar-item w3-button w3-hide-small w3-padding-large w3-hover-white">查詢/更改/取消預約</a></div>
    
<header class="w3-container w3-red w3-center" style="padding:40px 16px">
  <h1 class="w3-margin w3-jumbo">慢性病連續處方笺預約</h1>
  </header>
  <style>
        .navbar-brand {
            padding-top: .3125rem;
            padding-bottom: .3125rem;
            margin-right: 1rem;
            font-size: 2em;
            text-decoration: none;
            white-space: nowrap;
        }
        a {
            color: white;
            text-decoration: none;
            font-size: 1.5em;
        }
        a:hover {
            color: darkorange;
            text-decoration: none;
        }
        footer .footer-below {
            padding: 25px 0;
            background-color: #FFFFFF;
        }
    </style>
</head>
<body id="page-top" class="index">
    <!-- 慢性病連續處方笺預約 -->
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
  <form action="/webregslow/" method="post">    <section id="contact">
        <div class="container">
            <div class="row">
                <div class="col-lg-6 offset-lg-2" style="display:none">
                    <div class="info">
                        <div class="text-center">
                            <input name="__RequestVerificationToken" type="hidden" value="0x98HF2FuCt_b9jCDtEpLysRd_Jr7p5UAkl725WsZWCXkfEIGqeh1DQcYnWfoOQ8owKQdLlMifbiZMEOuhAgLNLwJK1CHWCmmturJ7sjvKg1" />
                            <h2>資料輸入說明</h2>
                            <hr class="star-primary">
                        </div>

                    </div>
                </div>

                <div class="col-lg-6 offset-lg-2">
                    <div class="text-center">
                        <br>
                        <h2>預約資料登記</h2>
                        <hr class="star-primary">
                    </div>

                    <div class="text-center">
                        
        
                        
                    </div>

                    <div class="form" style="display:">
                        <div class="row control-group col-xs-12">
                            <div class="input-group">
                                
                                <div class="form" style="display:">
                                    <div class="row control-group col-xs-12">
                                        <div class="input-group">

                                            <div class="row control-group col-xs-12">
                                                <div class="input-group">
                                                </div>
                                            </div>

                                            <div class="row control-group col-xs-12">
                                                <div class="input-group">
                                                    <span class="input-group-addon">
                                                        <i class="fa fa-medkit" title=""></i>
                                                    </span>
                                                    <h3>
                                                        領藥日期：<br>
                                                        <select id="drugdate" name="drugdate" onchange="GetSSNO(this.value)" title="領藥日期" required>
                                                            
                                                        </select>
                                                        <br>
                                                        <span style="color:red">無故未領取將不受領線上預約</span>
                                                    </h3>
                                                </div>
                                            </div>

                                          <div class="row control-group col-xs-12" id="ArriveMethod">
                                                <div class="input-group">
                                                    <span class="input-group-addon">
                                                        <i class="fa fa-medkit" title=""></i>
                                                    </span>
                                                    <h3>
                                                        到院方式：<br>
                                                        <select id="Method" name="Method" title="到院方式">
                                                            
                                                            <option value="1" title="步行" >步行</option>
                                                            <option value="2" title="開車" selected="selected">開車</option> <!--1080315新增-->
                                                        </select>
                                                    </h3>
                                                </div>
                                            </div>

                                            <div class="row control-group col-xs-12">
                                                <div class="input-group">
                                                    <span class="input-group-addon">
                                                        <i class="fa fa-user" title=""></i>
                                                    </span>
                                                    <div class="form-group floating-label-form-group controls">
                                                        <H3>病歷號或身分證號<span style="color:red;">*</span></H3>
                                                        
                                                        <input type="text" class="form-control" placeholder="病歷號或身分證號" id="idcno" name="idcno" required style="text-transform: uppercase;" maxlength="10" title="病歷號或身分證號" inputmode="url">
                                                    </div>
                                                </div>
                                            </div>

                                            <div class="row control-group col-xs-12">
                                                <div class="input-group">
                                                    <span class="input-group-addon">
                                                        <i class="fa fa-birthday-cake" title=""></i>
                                                    </span>

                                                    <div class="form-group floating-label-form-group controls">
                                                        <H3>出生日期<span style="color:red;">*</span></H3>
                                                        
                                                        <input type="text" class="form-control" placeholder="出生日期" id="birthday" name="birthday" title="出生日期" required maxlength="7" onkeyup="return ValidateNumber(this, value)" inputmode="numeric">
                                                    </div>
                                                    <br />
                                                    
                                                        <h4>請輸入民國年格式：民國99年1月1日，如0990101</h4>

                                                </div>
       
                                      </div>
                                  </div>

                                            <div class="row control-group col-xs-12" id="ArriveTime">
                                                <div class="input-group">
                                                    <span class="input-group-addon">
                                                        <i class="fa fa-medkit" title=""></i>
                                                    </span>
                                                    <h3>
                                                        
                                                        預約時段：<span style="color:red">*各時段預約上限50人</span><br>
                                                        <select id="RegTime" name="RegTime" title="預約時段"></select>
                                                    </h3>
                                                </div>
                                            </div>

                                            
                                            <div class="row control-group col-xs-12 text-center">
                                                
                                                <h3R></h3R>
                                            </div>
                                            <br>
                                            <br>
                                            <div class="row control-group col-xs-12 text-center" style="display:">
                                                
                                                <p>　　　</p>
                                                    <input type="submit" class="btn btn-success btn-lg btn-step" style="background-color:#02326c;border-color:#02326c;" value="確認預約" width="2em" onclick="CheckSSNO()" />
                                                    
                                                    <p>　　　</p>
                                                
                                        </div>

                                    </div>

                                </div>
                            </div>
    </section>
</form>
    <!-- Bootstrap Core JavaScript -->
    <script src="/WebRegSlow/Scripts/bootstrap.min.js"></script>
    <!-- Plugin JavaScript -->
    <script src="/WebRegSlow/Scripts/jquery.easing.min.js"></script>
    <!-- Contact Form JavaScript -->
    <!--
        <script src="js/jqBootstrapValidation.js"></script>
        <script src="js/contact_me.js"></script>
    -->
    <!-- Theme JavaScript -->

</body>
</html>