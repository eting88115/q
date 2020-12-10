<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8" import="java.sql.*"%>
<!DOCTYPE html>
<html lang="tc">
<head>
<meta charset="utf-8">
<title>left</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="css\styles.css" >
<link rel="stylesheet" href="css\styles2.css" >
<link rel="stylesheet" href="css\styles3.css" >
<link rel="stylesheet" href="css\styles4.css">
<link rel="stylesheet" href="css\styles5.css">
</head>
<body>
<div class="w3-overlay w3-hide-large" onclick="w3_close()" style="cursor:pointer" title="close side menu" id="myOverlay"></div>
<nav class="w3-sidebar w3-bar-block w3-collapse w3-large w3-theme-l5 w3-animate-left" id="mySidebar">
  <a href="javascript:void(0)" onclick="w3_close()" class="w3-right w3-xlarge w3-padding-large w3-hover-black w3-hide-large" title="Close Menu">
     <i class="fa fa-remove"></i>
  </a>
  <h4 class="w3-bar-item"><b>陳莉莉教官好</b></h4>
     <form action="">
        <div class="activity-time">
          <ul>
            <li>送出宿舍申請</li>(4/11)<br>
            <li>查看申請結果</li>(5/1)<br>
            <li>床位抽籤</li>(5/3~5/11)<br>
            <li>選床位</li>(5/12)<br>
            <li>候補申請</li>(5/19)<br>
          </ul>
          <div class="login-button">
            <input type="submit" id="logout" value="登出"/>
            <input type="hidden" name="Logout" value="true"/><br></br>
          </div>
        </div>
     </form>
    </nav>
</body>
</html>