<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html lang="tc">
<head>
<meta charset="BIG5">
<title>boss-forget</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="css\styles.css" >
<link rel="stylesheet" href="css\styles2.css" >
<link rel="stylesheet" href="css\styles3.css" >
<link rel="stylesheet" href="css\styles4.css">
<link rel="stylesheet" href="css\styles5.css">
</head>
<body>

<!-- Header -->
<%@ include file="menu2.jsp" %>
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

  <div class="w3-row" style="height:270px">
    <div class="post" style="margin-left: 380px">
      <h1 class="w3-text-teal"><b>忘記密碼</b></h1>
    </div>
        <div class="w3-twothird w3-container" style="margin-left: 340px">
        <h2 class="statute"><b>請輸入您的學號及信箱</b></h2>
        </div>
            <div class="w3-twothird w3-container" style="margin-left: 300px">
                <p>學號:&emsp;<input type="email" id="username" placeholder="請輸入您的學號" required="required" />
                <br></br>信箱:&emsp;<input type="email" id="email" placeholder="請輸入您的信箱" required="required" />
                </p>
                <div class="sure-button">
                <button>確認</button>
                </div>
            </div>
  </div>
</div>
<!-- Footer -->
<%@ include file="pageend.jsp" %>
</html>