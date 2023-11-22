<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
 <!--查詢/更改/取消預約網頁 -->
<html>
<head>
<meta charset="BIG5">
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
<title>查詢/更改/取消預約</title>
</head>
<body>
<div class="w3-top">
  <div class="w3-bar w3-red w3-card w3-left-align w3-large">
    <a class="w3-bar-item w3-button w3-hide-medium w3-hide-large w3-right w3-padding-large w3-hover-white w3-large w3-red" href="javascript:void(0);" onclick="myFunction()" title="Toggle Navigation Menu"><i class="fa fa-bars"></i></a>
    <a href="index.jsp" class="w3-bar-item w3-button w3-padding-large w3-hover-white">首頁</a>
    <a href="#" class="w3-bar-item w3-button w3-hide-small w3-padding-large w3-white">查詢/更改/取消預約</a></div>

<header class="w3-container w3-red w3-center" style="padding:40px 16px">
  <h1 class="w3-margin w3-jumbo">查詢/更改/取消預約</h1>
  </header>
<table border=1>
		<%
			String[] arr_test = {"IT幫_A","IT幫_B","IT幫_C"};
			//如果參數不等於空，只顯示一筆資料
			Integer ID = request.getParameter("ID")!=null?Integer.parseInt(request.getParameter("ID")):null;
			if( ID != null){
		%>
				<tr>
					<form action="" method="get"><!-- action值填你的api url -->
						<td><%=arr_test[ID] %></td>
						<td><input type="submit" value="返回" /></td>
					</form>
				</tr>
		<%				
			}
			else{ //如果參數等於空，查詢所有資料
				for (int i = 0; i < arr_test.length; i++) {
		%>
					<tr>
						<form action="" method="get"><!-- action值填你的api url -->
							<td><%=arr_test[i] %><input type="hidden" name="ID" value="<%=i %>" /></td>
							<td><input type="submit" value="查詢" /></td>
						</form>
					</tr>
		<%
				}
			}
		%>
	</table>
	 <center><h4 class="w3-margin w3-jumbo">
<br><button type="submit" class="w3-button w3-black w3-padding-large w3-large w3-margin-top" onclick="document.location='index.jsp'">確認</button>
</center></h4>
</div>
</body>
</html>