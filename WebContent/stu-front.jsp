<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<%
if(request.getParameter("Saccount") !=null &&
	request.getParameter("Spw") !=null){
	Connection con=DriverManager.getConnection("jdbc:ucanaccess://C:\\Users\\Ting\\Desktop\\q\\q\\database.accdb;");
	Statement smt= con.createStatement();
	String getpaperdata = "SELECT * FROM Saccount WHERE Saccount='"+
			request.getParameter("Saccount")+"' AND Spw='" +
			request.getParameter("Spw")+"'";
	ResultSet paperrs = smt.executeQuery(getpaperdata);
	if(paperrs.next()){
		session.setAttribute("Saccount",request.getParameter("Saccount"));
		//session.setMaxInactiveInterval(20); 自動登出
		response.sendRedirect("stu-login_post.jsp");
	}else
		out.println("帳號密碼不符！請重新登入");
}
%>
<html lang="tc">
<head>
<meta charset="utf-8">
<title>stu-front</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="css\styles.css" >
<link rel="stylesheet" href="css\styles2.css" >
<link rel="stylesheet" href="css\styles3.css" >
<link rel="stylesheet" href="css\styles4.css">
<link rel="stylesheet" href="css\styles5.css">
</head>
<body>

<!-- Header -->
<%@ include file="menu.jsp" %>

<!-- Sidebar -->
 <nav class="w3-sidebar w3-bar-block w3-collapse w3-large w3-theme-l5 w3-animate-left" id="mySidebar">
  <a href="javascript:void(0)" onclick="w3_close()" class="w3-right w3-xlarge w3-padding-large w3-hover-black w3-hide-large" title="Close Menu">
     <i class="fa fa-remove"></i>
  </a>
  <h4 class="w3-bar-item"><b>歡迎使用本系統</b></h4>
     <form action="">
        <label for="fname">帳號:</label>
        <input type="text" id="username" placeholder="請輸入您的學號" required="required"><br><br>
        <label for="lname">密碼:</label>
        <input type="text" id="password" placeholder="請輸入您的密碼" required="required"><br><br>
        <div class="login-button">
          <input type="submit" id="login" value="登入">
        </div>
     </form>
     <div class="solve" align="center">
     <p><a href="http://localhost:8040/aaa/boss-register.jsp" id="first-time">註冊帳號</a>&emsp;&emsp;<a href="http://localhost:8040/aaa/boss-forget.jsp" id="forget">忘記密碼</a></p>
     </div>
     <div class="note" align="center">
     <p id="note">登入後即可使用該系統功能</p>
     </div>
 </nav>
 
<!-- Header -->
<!-- Overlay effect when opening sidebar on small screens -->
<div class="w3-overlay w3-hide-large" onclick="w3_close()" style="cursor:pointer" title="close side menu" id="myOverlay"></div>

<!-- Main content: shift it to the right by 250 pixels when the sidebar is visible -->
<div class="w3-main" style="margin-left:250px">

  <div class="w3-row w3-padding-64">
    <div class="form-fields d-grid"> 
    </div>
  </div>

  <div class="w3-row">
    <div class="post" align="center">
      <h1 class="w3-text-teal"><b>公告資訊</b></h1>
    </div>
        <div class="w3-twothird w3-container">
        <h2 class="statute"><b>宿舍相關法規</b></h2>
        </div>
            <div class="w3-twothird w3-container">
              <ul>
              <li><a href="#">[109-04-27]宿舍申請作業資訊</a></li>
              <li><a href="#">[109-04-27]學生宿舍住宿規則</a></li>
              <li><a href="#">[109-04-27]學生宿舍生活自治評鑑記點標準</a></li>
              <li><a href="#">[109-04-27]學生宿舍應注意事項暨生活公約</a></li>
              </ul>
            </div>
        <div class="w3-twothird w3-container">
        <h2 class="news"><b>最新消息</b></h2>
        </div>
            <div class="w3-twothird w3-container">
              <ul>
              <li><a href="#">[109-05-01]學生宿舍住宿費調漲相關說明</a></li>
              <li><a href="#">[109-05-01]欲以低收入戶或中低收入戶資格申請宿舍保障或優惠注意事項</a></li>
              </ul>
            </div>
   </div>
</div>
  <!-- Pagination -->
  <div class="w3-center w3-padding-32">
    <div class="w3-bar">
      <a class="w3-button w3-black" href="#">1</a>
      <a class="w3-button w3-hover-black" href="#">2</a>
      <a class="w3-button w3-hover-black" href="#">3</a>
      <a class="w3-button w3-hover-black" href="#">4</a>
      <a class="w3-button w3-hover-black" href="#">5</a>
      <a class="w3-button w3-hover-black" href="#">&raquo;</a>
    </div>
  </div>
  
<!-- Footer -->
<%@ include file="pageend.jsp" %>
</html>