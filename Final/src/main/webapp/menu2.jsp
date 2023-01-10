<%@ page language="java" contentType="text/html; charset=BIG5" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <title>LeeLab Web</title>
  <link href="//fonts.googleapis.com/css2?family=Merriweather:wght@300;400;700;900&amp;display=swap" rel="stylesheet">
  <link href="//fonts.googleapis.com/css?family=Roboto:100,300,400,500,700,900&amp;display=swap" rel="stylesheet">
  <!-- Template CSS -->
  <link rel="stylesheet" href="assets/css/style-starter.css">
  <meta name="keywords" content="leelab">
</head>
<body>
  <!-- Header -->
  <form method="post" action="logout.jsp">
  <header class="w3l-header">
    <!--/nav-->
    <nav class="navbar navbar-expand-lg navbar-light fill px-lg-0 py-0 px-3">
      <div class="container">
        <a class="navbar-brand" href="index.jsp">
          <span class="fa fa-globe">LeeLab</span><br></a>
        <button class="navbar-toggler collapsed" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
          <!-- <span class="navbar-toggler-icon"></span> -->
          <span class="fa icon-expand fa-bars"></span>
          <span class="fa icon-close fa-times"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarSupportedContent">
          <ul class="navbar-nav ml-auto">
            <li class="nav-item active">
              <a class="nav-link" href="index.jsp">首頁</a>
            </li>
            <li class="nav-item @@about__active">
              <a class="nav-link" href="memberList.jsp">團隊成員<br></a>
            </li>
            <li class="nav-item @@contact__active">
              <a class="nav-link" href="instruct.jsp">論文與專題指導</a>
            </li>
            <li class="nav-item @@contact__active" >
              <a class="nav-link" href="member.jsp?memberId=<%=session.getAttribute("accessId")%>">
              <%
					if(session.getAttribute("accessId") == null){
						out.println("");
					}else{
						out.println(session.getAttribute("accessId"));
					}
			 %></a>
            </li>
          </ul>
          <div class="ml-lg-3">
          <%if(session.getAttribute("accessId") != null){%>
          	<input type="submit" value="登出" name="logout" class="btn btn-style btn-effect">
		  <%}else{%>
			<a href="login.jsp" class="btn btn-style btn-effect">登入</a>
	  	  <%}%>
          </div>
        </div>
      </div>
    </nav>
    <!--//nav-->
  </header>
  </form>
</body>
</html>