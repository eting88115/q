<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html lang="tc">
<head>
<meta charset="utf-8">
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

  <div class="w3-row">
    <div class="post" align="center">
      <h1 class="w3-text-teal"><b>宿舍老師帳號設定</b></h1>
    </div>
         
           <div class="template" style="position: relative; height: 460px">
    <hr>
    <div class="TRaccount">
      <form role="box" action="boss-system-TR-account-DBInsertInto.jsp">
        <div class="form-group" style="position:relative;left: 45px;">
          <label for="TRname">宿舍老師名字:</label>
          <input type="text" id="TRname" name="TRname" class="form-control" v-model="TRname" placeholder="輸入新增老師名字">
          <label for="TRaccount">帳號:</label>
          <input type="text" id="TRaccount" name="TRaccount" class="form-control" v-model="TRaccount" placeholder="輸入新增老師帳號">
          <label for="TRpassword">密碼:</label>
          <input type="text" id="TRpassword" name="TRpassword" class="form-control" v-model="TRpassword" placeholder="輸入新增老師密碼">
            <input type="submit"  value="新增" class="btn btn-primary" />
            <input type="reset"  value="清除" class="btn btn-danger"/>
        </div> 
      </form>
      <hr/>
      
  
 
<!-- Footer -->
<%@ include file="pageend.jsp" %>
</html>