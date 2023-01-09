<!--<%@page import="sun.awt.SunHints.Value"%>--> 
<%@ page language="java" contentType="text/html; charset=utf-8" 
  pageEncoding="utf-8"%> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd"> 
 
<%@page import="java.util.List"%> 
<html> 
<head> 
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"> 
<title>所有圖書資訊</title> 
<style type="text/css"> 
td { 
  font-size: 12px; 
} 
 
h2 { 
  margin: 0px 
} 
</style> 
<script type="text/javascript"> 
  function check(form) { 
    with (form) { 
      if (bookCount.value == "") { 
        alert("請輸入更新數量！"); 
        return false; 
      } 
      if (isNaN(bookCount.value)) { 
        alert("格式錯誤！"); 
        return false; 
      } 
      return true; 
    } 
  } 
</script> 
 
 
</head> 
<body> 
  <table align="center" width="450" border="1" height="180" 
    bordercolor="white" bgcolor="black" cellpadding="1" cellspacing="1"> 
    <tr bgcolor="white"> 
      <td align="center" colspan="7"> 
        <h2>所有圖書資訊</h2> 
      </td> 
    </tr> 
    <tr align="center" bgcolo r="#e1ffc1"> 
      <td><b>ID</b></td> 
      <td><b>圖書名稱</b></td> 
      <td><b>價格</b></td> 
      <td><b>數量</b></td> 
      <td><b>作者</b></td> 
      <td><b>修改</b></td> 
      <td><b>刪除</b></td> 
    </tr> 
     <tr align="center" bgcolor="white"> 
      <td><%=book.getId()%></td> 
      <td><%=book.getName()%></td> 
      <td><%=book.getPrice()%></td> 
      <td><%=book.getBookCount()%></td> 
      <td><%=book.getAuthor()%></td> 
      <td > 
        <form style="align:center; background-color: gray" action="UpdateServlet" method="post" 
          onsubmit="return check(this);"> 
           <input type="hidden" name="id" value="<%=book.getId()%>"> <input 
            type="text" name="bookCount" size="3"> 
           <input type="submit" value="修改數量"> 
        </form> 
      </td> 
      <td> 
      <a href="DeleteServlet?id=<%=book.getId()%>">刪除</a> 
      </td> 
 
 
    </tr> 
    <% 
      } 
      } 
    %> 
  </table> 
  <h2 align="center"> 
    <a href="index.jsp">返回新增圖書資訊頁面</a> 
  </h2> 
 
</body> 
</html> 