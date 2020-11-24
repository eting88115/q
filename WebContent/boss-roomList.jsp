<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html lang="tc">
<head>
<meta charset="BIG5">
<title>boss-roomList</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="css\styles.css" >
<link rel="stylesheet" href="css\styles2.css" >
<link rel="stylesheet" href="css\styles3.css" >
<link rel="stylesheet" href="css\styles4.css">
<link rel="stylesheet" href="css\styles5.css">
</head>
<body>

<!-- Header --->
<%@ include file="menu2.jsp" %>
<!-- Sidebar -->
 <nav class="w3-sidebar w3-bar-block w3-collapse w3-large w3-theme-l5 w3-animate-left" id="mySidebar">
  <a href="javascript:void(0)" onclick="w3_close()" class="w3-right w3-xlarge w3-padding-large w3-hover-black w3-hide-large" title="Close Menu">
     <i class="fa fa-remove"></i>
  </a>
     <%@ include file="left2.jsp" %>
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
      <h1 class="w3-text-teal"><b>本年度住宿名單</b></h1>
     </div>
    <hr>
    <div style="margin-left:400px">
 <form action="" >
        <label for="class">學生班級：</label>
        <input type="text" id="userClass" placeholder="請輸入班級" required="required"><br><br>
        <label for="name">學生姓名：</label>
        <input type="text" id="userName" placeholder="請輸入姓名" required="required"><br><br>
        <label for="number">學號：</label>
        <input type="text" id="userNumber" placeholder="請輸入學號" required="required"><br><br>
        <div class="searching-button">
          <input type="submit" id="searching" value="搜尋">
        </div>
     </form>   
     </div>
       </div>
    </div>
</body>
<!--Footer-->
<%@ include file="pageend.jsp" %>
</html>