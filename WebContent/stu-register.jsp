<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html lang="tc">
<head>
<meta charset="BIG5">
<title>stu-register</title>
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
<!-- Overlay effect when opening sidebar on small screens -->
<div class="w3-overlay w3-hide-large" onclick="w3_close()" style="cursor:pointer" title="close side menu" id="myOverlay"></div>

<!-- Main content: shift it to the right by 250 pixels when the sidebar is visible -->
<div class="w3">

  <div class="w3-row w3-padding-64">
    <div class="form-fields d-grid"> 
    </div>
  </div>

  <div class="w3-row" style="height:380px">
    <div class="post" style=" margin-left: 600px">
      <h1 class="w3-text-teal"><b>註冊帳號</b></h1>
    </div>
         <table>
              <tr><td><label for="name">姓名:</label><input type="text" name="name" placeholder="請輸入姓名"></td>
                  <td><label for="sex">性別:</label><input type="radio" name="sex" value="male">男生<input type="radio" name="sex" value="female">女生</td></tr><tr><td></td><td></td></tr>
              <tr><td><label for="account">學號:</label><input type="text" name="account" placeholder="請輸入學號"></td>
                  <td><label for="education system">學制:</label><select name="education system" id="education system"><option value="1">1</option></select></td></tr><tr><td></td><td></td></tr>
              <tr><td><label for="class">班級:</label><select name="class" id="class"><option value="1">1</option></select></td>
                  <td><label for="department">科系:</label><select name="department" id="department"><option value="1">1</option></select></td></tr><tr><td></td><td></td></tr>
              <tr><td><label for="phone">電話:</label><input type="text" name="phone" placeholder="請輸入電話號碼"></td>
                  <td><label for="name">信箱:</label><input type="text" name="email" placeholder="請輸入電子郵件"></td></tr><tr><td></td><td></td></tr>
              <tr><td><label for="address">住址:</label><input type="text" name="address" placeholder="請輸入住址"></td>
                  <td><label for="password">密碼:</label><input type="text" name="password" placeholder="請輸入帳號"></td></tr><tr><td></td><td></td></tr> 
         </table>
         <script>
         string = "此帳號已註冊過，請確認帳號與密碼是否正確，若還是無法使用               請洽詢宿舍老師 wen123456@ntunhs.edu.tw";
         </script>
         <div class="login-button2">
            <input type="submit" a href="javascript:alert(string)"  value="確認註冊">
            <input type="reset" value="取消註冊">
         </div>
         <a href="javascript:alert(string)">此帳號已註冊過</a>
  </div>
  </div>
<!-- Footer -->
<%@ include file="pageend2.jsp" %>
</html>