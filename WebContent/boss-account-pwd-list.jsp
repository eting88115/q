<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html lang="tc">
<head>
<meta charset="BIG5">
<title>boss-SM-TrAccount</title>
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
<div class="w3-main" style="margin-left:230px">

  <div class="w3-row w3-padding-64">
    <div class="form-fields d-grid"> 
    </div>
  </div>
       <table class="TRaccount">
                 <div class="w3-row">
    <div class="post" align="center">
      <h1 class="w3-text-teal"><b>宿舍老師帳號設定</b></h1>
    </div>
          <div class="template" style="position: relative; height: 100px;">
                  <tr> 
                     <th class="text-center">姓名</th> 
                     <th class="text-center">帳號</th>
                     <th class="text-center">密碼</th>
                  </tr> 
                      <tr> 
                         <td>陳文章</td> 
                         <td>user2@ntunhs.edu.tw</td>
                         <td>wen8402463</td>
                      </tr> 
                      <tr> 
                         <td>林虹陵</td> 
                         <td>user3@ntunhs.edu.tw</td>
                         <td>linghon45648</td>
                      </tr>
                      <tr> 
                         <td>邱文文</td> 
                         <td>user4@ntunhs.edu.tw</td>
                         <td>chiuwen498786</td> 
                      </tr>
                      <br></br>
             </table>
    </div>
    </div>
 </div>
</div>
<br></br>
<!-- Pagination -->
  <div class="w3-center w3-padding-32" style="position:relative;left: 150px;">
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