<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <!--連續處方簽預約網頁 -->
<!DOCTYPE html>
<html>
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
    <nav class="navbar navbar-expand-sm navbar-light" style="background-color:#ffffff">
        <div class="container-fluid ">
            <div class="collapse navbar-collapse " id="navbarSupportedContent">
                <ul class="navbar-nav ms-auto">
                    <li class="nav-item" >
                        
                        <a class="nav-link text">
                            <a href="/WebRegSlow/">預約登記</a>
                        </a>
                    </li>
                    &nbsp;
                    <li class="nav-item">
                        
                        <a class="nav-link text" >
                            <a href="/WebRegSlow/Search">預約查詢</a>
                        </a>
                    </li>
                </ul>
            </div>
        </div>
    </nav>
    

    


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

<script src="/WebRegSlow/scripts/DatePicker/WdatePicker.js"></script>
<script type="text/javascript">

    $().ready(function () {
        callApi('/API/SearchDate/GetDate', {}, 'Get').done(function (response) {
            $.each(response, function (i) {
                $('#drugdate').append(
                    "<option value='" + response[i].substr(0, 7) + "'>" + response[i].substr(0, 3) + "年" + response[i].substr(3, 2) + "月" + response[i].substr(5, 2) + "日" + response[i].substr(7, 11) + "</option>"
                );
            })
            var drugdate = document.getElementById("drugdate").value;
            var pos = document.getElementById("pos").value;
            GetRegCount(drugdate, pos);
            FitSlow();
        }).fail(function (response) {
            console.log(response);
        });
    });

    function callApi(url, params, method) {
        return $.ajax({
            type: method || 'GET',
            url: '/' + window.location.pathname.split('/')[1] + url,
            data: params || {}
        });
    }

    function ValidateNumber(e, pnumber)
    {
        if (!/^\d+$/.test(pnumber));
        {
            e.value = /^\d+$/.exec(e.value);
        }
        return false;
    }

    function ValidateText(e, pnumber) {
        if (!/[^\W\.\/]/ig.test(pnumber));
        {
            e.value = /[^\W\.\/]/ig.exec(e.value);
        }
        return false;
    }

    function ValidateValue(textbox) {
        var IllegalString = "[`~!%_@+-#$\"^&*()=|{}':;',\\[\\].<>/?~！#￥……&*（）——|{}【】‘；：”“'。，、？]‘'";
        var textboxvalue = textbox.value;
        var index = textboxvalue.length - 1;
        var s = textbox.value.charAt(index);
        if (IllegalString.indexOf(s) >= 0) {
            s = textboxvalue.substring(0, index);
            textbox.value = s;
        }
    }

    $(function () {
        $('#drugdate').change(function () {
            var drugdate = document.getElementById("drugdate").value;
            var pos = document.getElementById("pos").value;
            DisableDroplist();
            if (drugdate != "" & pos != "") {
                GetRegCount(drugdate, pos);
                CheckCount(drugdate, pos);
            }
        });
    });
    $(function () {
        $('#pos').change(function () {
            var drugdate = document.getElementById("drugdate").value;
            var pos = document.getElementById("pos").value;
            DisableDroplist();
            if (drugdate != "" & pos != "") {
                GetRegCount(drugdate, pos);
                CheckCount(drugdate,pos);
            }
        });
    });
    function CheckCount(drugdate, pos) {
        $.ajax({
            url: "/WebRegSlowM/Home/GetCount",
            type: "POST",
            cache: false,
            async: true,
            data: { drugdate: drugdate, pos: pos },
            datatype: "text",
            success: function (data) {
                var NewArray = data.split(",");
                $("#Eight").html(NewArray[0]);
                $("#Night").html(NewArray[1]);
                $("#Ten").html(NewArray[2]);
                $("#Eleven").html(NewArray[3]);
                $("#Twelve").html(NewArray[4]);
                $("#Thirteen").html(NewArray[5]);
                $("#Fourteen").html(NewArray[6]);
                $("#Fifteen").html(NewArray[7]);
                $("#Sixteen").html(NewArray[8]);
                DisableCheckPerson(); //重設時段開啟
                CheckPerson(data); //設定各時預約人數上限
            }
        });
    }

    function GetRegCount(drugdate, pos) {
        $.ajax({
            url: "/WebRegSlowM/Home/GetCount",
            type: "POST",
            cache: false,
            async: true,
            data: { drugdate: drugdate, pos: pos },
            datatype: "text",
            success: function (data) {
                var NewArray = data.split(",");
                var Eight = NewArray[0];
                var Night = NewArray[1];
                var Ten = NewArray[2];
                var Eleven = NewArray[3];
                var Twelve = NewArray[4];
                var Thirteen = NewArray[5];
                var Fourteen = NewArray[6];
                var Fifteen = NewArray[7];
                var Sixteen = NewArray[8];
                $('#RegTime').append("<option value='01'>08:00-09:00，該時段已預約" + Eight + "人次</option>");
                $('#RegTime').append("<option value='02'>09:00-10:00，該時段已預約" + Night + "人次</option>");
                $('#RegTime').append("<option value='03'>10:00-11:00，該時段已預約" + Ten + "人次</option>");
                $('#RegTime').append("<option value='04'>11:00-12:00，該時段已預約" + Eleven + "人次</option>");
                $('#RegTime').append("<option value='05'>12:00-13:00，該時段已預約" + Twelve + "人次</option>");
                $('#RegTime').append("<option value='06'>13:00-14:00，該時段已預約" + Thirteen + "人次</option>");
                $('#RegTime').append("<option value='07'>14:00-15:00，該時段已預約" + Fourteen + "人次</option>");
                $('#RegTime').append("<option value='08'>15:00-16:00，該時段已預約" + Fifteen + "人次</option>");
                $('#RegTime').append("<option value='09'>16:00-17:00，該時段已預約" + Sixteen + "人次</option>");

                DisableCheckPerson(); //重設時段開啟
                CheckPerson(data); //設定各時預約人數上限
            }
        });
    }

    function CheckPerson(data) { //設定各時預約人數上限
        var Array = data.split(",");
        for (var i = 0; i < Array.length; i++) {
            if (Array[i] >= 50) { //設定各時預約人數上限
                debugger;
                switch (i) {
                    case 0:
                        //document.getElementById("rEight").disabled = true;
                        $("#RegTime option[value=01]").remove();
                        break;
                    case 1:
                        //document.getElementById("rNight").disabled = true;
                        $("#RegTime option[value=02]").remove();
                        break;
                    case 2:
                        //document.getElementById("rTen").disabled = true;
                        $("#RegTime option[value=03]").remove();
                        break;
                    case 3:
                        //document.getElementById("rEleven").disabled = true;
                        $("#RegTime option[value=04]").remove();
                        break;
                    case 4:
                        //document.getElementById("rTwelve").disabled = true;
                        $("#RegTime option[value=05]").remove();
                        break;
                    case 5:
                        //document.getElementById("rThirteen").disabled = true;
                        $("#RegTime option[value=06]").remove();
                        break;
                    case 6:
                        //document.getElementById("rFourteen").disabled = true;
                        $("#RegTime option[value=07]").remove();
                        break;
                    case 7:
                        //document.getElementById("rFifteen").disabled = true;
                        $("#RegTime option[value=08]").remove();
                        break;
                    case 8:
                        //document.getElementById("rSixteen").disabled = true;
                        $("#RegTime option[value=09]").remove();
                        break;
                    default:
                }
            }
        }
        return false;
    }

    function DisableCheckPerson()
    {
    //    document.getElementById("rEight").disabled = false;
    //    document.getElementById("rNight").disabled = false;
    //    document.getElementById("rTen").disabled = false;
    //    document.getElementById("rEleven").disabled = false;
    //    document.getElementById("rTwelve").disabled = false;
    //    document.getElementById("rThirteen").disabled = false;
    //    document.getElementById("rFourteen").disabled = false;
    //    document.getElementById("rFifteen").disabled = false;
    //    document.getElementById("rSixteen").disabled = false;
    }

    function DisableDroplist() {
        $("#RegTime").empty();
    }

    function ClearFields(val) {
        if (val == 1) {
            $("#DEPT1").empty();
            document.getElementById("ssno1").value = "";
        }
        else if (val == 2) {
            $("#DEPT2").empty();
            document.getElementById("ssno2").value = "";
        }
        else if (val == 3) {
            $("#DEPT3").empty();
            document.getElementById("ssno3").value = "";
        }
        else if (val == 4) {
            $("#DEPT4").empty();
            document.getElementById("ssno4").value = "";
        }
        else if (val == 5){
            $("#DEPT5").empty();
            document.getElementById("ssno5").value = "";
        }
        else
        {
            $("#DEPT1").empty();
            $("#DEPT2").empty();
            $("#DEPT3").empty();
            $("#DEPT4").empty();
            $("#DEPT5").empty();
            document.getElementById("ssno1").value = "";
            document.getElementById("ssno2").value = "";
            document.getElementById("ssno3").value = "";
            document.getElementById("ssno4").value = "";
            document.getElementById("ssno5").value = "";
        }
    }

    function CheckMethod(val) {
        var status = document.getElementById("Method");
        if (val == '5') {
            status.disabled = true;
            //document.getElementById("Map").style.display = "none";
            document.getElementById("ArriveMethod").style.display = "none";
            //map.disabled = true;
            status.value = "0";
        }
        else
        {
            //status.children[0].disabled = "disabled";
            status.value = "2";
            //document.getElementById("Map").style.display = "block";
            document.getElementById("ArriveMethod").style.display = "block";
            //status.children[2].disabled = false;
            status.disabled = false;
        }
        return false;
    }

    function GetSSNO(val) {
        var idcno = document.getElementById("idcno").value;
        var birthday = document.getElementById("birthday").value;
        ClearFields(0);
        var diagdate = val;
        $.ajax({
            url: "/WebRegSlowM/Home/GetSSNO",
            type: "POST",
            cache: false,
            async: true,
            data: { idcno: idcno, birthday: birthday, diagdate: diagdate},
            datatype: "text",
            success: function (data) {
                var NewArray = data.split(",");
                var LoopLen = (NewArray.length > 5) ? 5 : NewArray.length;
                FitSlow();
                for (var i = 0; i < LoopLen; i++)
                {
                    if (i == 0)
                    {
                        document.getElementById("s1").style.display = "block";
                        document.getElementById("ssno1").value = NewArray[i].substr(0, 10);
                        $("#DEPT1").html(NewArray[i].substr(10, NewArray[i].length - 10));
                    }
                    if (i == 1)
                    {
                        document.getElementById("s2").style.display = "block";
                        document.getElementById("ssno2").value = NewArray[i].substr(0, 10);
                        $("#DEPT2").html(NewArray[i].substr(10, NewArray[i].length - 10));
                    }
                    if (i == 2) {
                        document.getElementById("s3").style.display = "block";
                        document.getElementById("ssno3").value = NewArray[i].substr(0, 10);
                        $("#DEPT3").html(NewArray[i].substr(10, NewArray[i].length - 10));
                    }
                    if (i == 3) {
                        document.getElementById("s4").style.display = "block";
                        document.getElementById("ssno4").value = NewArray[i].substr(0, 10);
                        $("#DEPT4").html(NewArray[i].substr(10, NewArray[i].length - 10));
                    }
                    if (i == 4) {
                        document.getElementById("s5").style.display = "block";
                        document.getElementById("ssno5").value = NewArray[i].substr(0, 10);
                        $("#DEPT5").html(NewArray[i].substr(10, NewArray[i].length - 10));
                    }
                }
            }
        });
    }

    function CheckSSNO() {
        var SSNO1 = document.getElementById("ssno1").value;
        var SSNO2 = document.getElementById("ssno2").value;
        var SSNO3 = document.getElementById("ssno3").value;
        var SSNO4 = document.getElementById("ssno4").value;
        var SSNO5 = document.getElementById("ssno5").value;
        if (SSNO1 === "" && SSNO2 === "" && SSNO3 == "" && SSNO4 == "" && SSNO5 == "") {
           alert("請至少輸入一個慢性病卡號");
        }
    }

    function FitSlow() {
        var SSNO1 = document.getElementById("ssno1").value;
        var SSNO2 = document.getElementById("ssno2").value;
        var SSNO3 = document.getElementById("ssno3").value;
        var SSNO4 = document.getElementById("ssno4").value;
        var SSNO5 = document.getElementById("ssno5").value;
        //if (SSNO1 == '') {
        //    document.getElementById("ssno1").style.display = "none";
        //}
        //if (SSNO2 == '') {
        //    document.getElementById("ssno2").style.display = "none";
        //}
        //if (SSNO3 == '') {
        //    document.getElementById("ssno3").style.display = "none";
        //}
        if (SSNO4 == '') {
            document.getElementById("s4").style.display = "none";
            //document.getElementById("ssno4").style.display = "none";
        }
        if (SSNO5 == '') {
            document.getElementById("s5").style.display = "none";
            //document.getElementById("ssno5").style.display = "none";
        }
    }
</script>
<noscript>您的瀏覽器不支援JavaScript功能，為確保網頁功能正常使用，請開啟瀏覽器JavaScript狀態</noscript>
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
                                                        <span style="color:red">1700時後，無法預約次日領藥</span>
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
                                                    <p class="">
                                                        <h4>請輸入民國年格式：民國99年1月1日，如0990101</h4>
                                                    </p>
                                                </div>
                                            </div>

                                         <div class="row control-group col-xs-12">
                                              <div class="input-group">
                                                  <span class="input-group-addon">
                                                       <i class="fa fa-credit-card-alt" title=""></i>
                                                  </span>
                                         <div id="s1" class="w-100">
                                             <H3>慢性病卡號1<span style="color:red;">*(請至少輸入一個慢性病卡號即可)</span></H3>
                                             <input type="text" class="form-control" placeholder="慢性病卡號1" id="ssno1" name="ssno1" maxlength="10" title="慢性病卡號1" value="" required inputmode="numeric">
                                             <input type="button" class="btn btn-success" style="background-color:#02326c;border-color:#02326c;" onclick="ClearFields('1');" value="清除"  />
                                             <label id="DEPT1"></label>
                                         </div>
                                         <div id="s2" class="w-100">
                                            <H3>慢性病卡號2</H3>
                                            <input type="text" class="form-control" placeholder="慢性病卡號2" id="ssno2" name="ssno2" maxlength="10" title="慢性病卡號2" value="" width="5px"  inputmode="numeric">
                                            <input type="button" class="btn btn-success" style="background-color:#02326c;border-color:#02326c;" onclick="ClearFields('2');" value="清除" />
                                            <label id="DEPT2"></label>
                                        </div>
                                        <div id="s3" class="w-100">
                                            <H3>慢性病卡號3</H3>
                                            <input type="text" class="form-control" placeholder="慢性病卡號3" id="ssno3" name="ssno3" maxlength="10" title="慢性病卡號3" value=""  inputmode="numeric">
                                             <input type="button" class="btn btn-success" style="background-color:#02326c;border-color:#02326c;" onclick="ClearFields('3');" value="清除" />
                                             <label id="DEPT3"></label>
                                       </div>
                                       <div id="s4" class="w-100">
                                            <H3>慢性病卡號4</H3>
                                            <input type="text" class="form-control" placeholder="慢性病卡號4" id="ssno4" name="ssno4" maxlength="10" title="慢性病卡號4" value=""  inputmode="numeric">
                                            <input type="button" class="btn btn-success" style="background-color:#02326c;border-color:#02326c;" onclick="ClearFields('4');" value="清除"  />
                                            <label id="DEPT4"></label>
                                        </div>
                                        <div id="s5" class="w-100">
                                            <H3>慢性病卡號5</H3>
                                            <input type="text" class="form-control" placeholder="慢性病卡號5" id="ssno5" name="ssno5" maxlength="10" title="慢性病卡號5" value="" inputmode="numeric">
                                            <input type="button" class="btn btn-success" style="background-color:#02326c;border-color:#02326c;" onclick="ClearFields('5');" value="清除" />
                                            <label id="DEPT5"></label>
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



    <!-- Footer -->
    <footer class="text-center">
        <div class="footer-below">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12" style="color:white">
                        Copyright &copy; TSGH 2022
                    </div>
                </div>
            </div>
        </div>
    </footer>
    <!-- Scroll to Top Button (Only visible on small and extra-small screen sizes) -->
    

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