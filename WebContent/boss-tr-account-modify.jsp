<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8" import="java.sql.*"%>
<!DOCTYPE html>
<html lang="tc">
<head>
<meta charset="utf-8">
<title>boss-Checklist-all</title>
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
      <h1 class="w3-text-teal"><b>宿舍老師帳密修改</b></h1>
    </div>
          <div class="template" style="position: relative; height: 460px">
          <%
          
          %>
          <div class="panel-group">
              <input type="radio" name="panel-radio" id="radio1" class="panel-control" checked>
              <input type="radio" name="panel-radio" id="radio2" class="panel-control">
              <input type="radio" name="panel-radio" id="radio3" class="panel-control">
              <input type="radio" name="panel-radio" id="radio4" class="panel-control">

                 
               
	Class.forName("net.ucanaccess.jdbc.UcanaccessDriver");
	Connection con=DriverManager.getConnection("jdbc:ucanaccess://C:\\Users\\elene\\Desktop\\q\\q\\q\\database.accdb;");
	Statement smt= con.createStatement();
	String sql = "SELECT Tacount, Tpw FROM Tacount";
	%>
    
            <div class="FindApply">
            <table class="FindApply">
               <caption class="title">學生申請資料-全部</caption>
                 
                  <tr> 
                     <th class="text-center" scope="col" width="10%">帳號</th> 
                     <th class="text-center" scope="col" width="10%">密碼</th>
                  </tr>
	<%
	while(rs.next()){%>
                      <tr> 
                         <td><%=rs.getString("帳號") %></td> 
                         <td><%=rs.getString("密碼") %></td>
                         <%if(rs21.next()){%>
                         <td><button class="edit" data-toggle="modal" data-target="#layer">編輯</button></td>
                      </tr>
                      <%} %>
             </table>
             </div>
    </div> 
</div>
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