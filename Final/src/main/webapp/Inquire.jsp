<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    <%@include file ="menu.jsp" %>
<!DOCTYPE html>
 <!--查詢/更改/取消預約網頁 -->
<html>
<body>
<header class="w3-container w3-red w3-center" style="padding:80px 16px">
  <h1 class="w3-margin w3-jumbo">查詢/更改/取消預約</h1>
  </header>
<table border=1>
		<%
			String[] arr_test = {"姓名","IT幫_B","IT幫_C"};
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
<br>
<button type="submit" class="w3-button w3-black w3-padding-large w3-large w3-margin-top" onclick="document.location='Homepage-e.jsp'">上一步</button>
<button type="submit" class="w3-button w3-black w3-padding-large w3-large w3-margin-top" onclick="document.location='index.jsp'">確認</button>
</center></h4>
</div>
</body>
</html>