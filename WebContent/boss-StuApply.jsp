<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8" import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>boss-searchApply</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="css\styles.css" >
<link rel="stylesheet" href="css\styles2.css" >
<link rel="stylesheet" href="css\styles3.css" >
<link rel="stylesheet" href="css\styles4.css">
<link rel="stylesheet" href="css\styles5.css">
</head>
<body>

<!-- Header --->
<%@ include file="menu.jsp" %>
<!-- Sidebar -->
 <nav class="w3-sidebar w3-bar-block w3-collapse w3-large w3-theme-l5 w3-animate-left" id="mySidebar">
  <a href="javascript:void(0)" onclick="w3_close()" class="w3-right w3-xlarge w3-padding-large w3-hover-black w3-hide-large" title="Close Menu">
     <i class="fa fa-remove"></i>
  </a>
     <%@ include file="left2.jsp" %>
 </nav>
 
<!-- Header -->
<%@ include file="menu.jsp" %>
<!-- Overlay effect when opening sidebar on small screens -->
<div class="w3-overlay w3-hide-large" onclick="w3_close()" style="cursor:pointer" title="close side menu" id="myOverlay"></div>

<!-- Main content: shift it to the right by 250 pixels when the sidebar is visible -->
<div class="w3">

  <div class="w3-row w3-padding-64">
    <div class="form-fields d-grid"> 
    </div>
  </div>

  <div class="w3-row" style="height:360px">
    <div class="post" style=" margin-left: 650px">
    <h1 class="w3-text-teal"><b>申請單查詢主畫面</b></h1>
	</div>
	
	<div class="search-studentName" style="margin-left: 620px;margin-top: 50px">
	<form action="boss-StuApply.jsp" method="post">
	<%
	Class.forName("net.ucanaccess.jdbc.UcanaccessDriver");
	Connection con=DriverManager.getConnection("jdbc:ucanaccess://C:\\Users\\USER\\git\\q\\database.accdb;");
	Statement smt= con.createStatement();
	String sql = "SELECT 姓名 FROM studentApply";
	ResultSet rs = smt.executeQuery(sql);
	%>
	<label for="search-student" style="font-weight: bold ;font-size: 20px ;">請選擇學生姓名:</label>
	<select name="name" style="width:90px; height:25px; font-size: 18px">
           <%while(rs.next()){ %>
              <option value="<%=rs.getString("姓名")%>"><%=rs.getString("姓名") %></option>
          <%}con.close();%>   
 	</select>
	<input type="submit" value="查詢成績">
	</form>
	</div>
	</div>
	
	</div>
<!-- Footer -->
<%@ include file="pageend.jsp" %>
</html>