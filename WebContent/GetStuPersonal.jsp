<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html lang="tc">
<head>
<meta charset="utf-8">
<title>stu-personal</title>
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
    <div class="post" style=" margin-left: 640px">
      <h1 class="w3-text-teal"><b>個人資料</b></h1>
    </div>
         <div>
         <%request.setCharacterEncoding("utf-8"); %>
<%
 String name = request.getParameter("name");
 String phone = request.getParameter("phone");
 String address = request.getParameter("address");
 String account = request.getParameter("account");
 String email = request.getParameter("email");
 String password = request.getParameter("password");
%>
<form>
  <table style=" margin-left: 50px">
     <tr><td><label for="name">姓名:<%=name %></label></td>
         <td><label for="department">科系:</label><%String department = request.getParameter("department");out.println(department);%></td></tr><tr><td></td><td></td></tr>
     <tr><td><label for="phone">電話:</label><%=phone %></td>
         <td><label for="cla">班級:</label><%String cla = request.getParameter("cla");out.println(cla);%></td></tr><tr><td></td><td></td></tr>
     <tr><td><label for="address">住址:</label><%=address %></td>
         <td><label for="account">學號:</label><%=account %></td></tr><tr><td></td><td></td></tr>
     <tr><td><label for="email">信箱:</label><%=email %></td>
         <td><label for="password">密碼:</label><%=password %></td></tr><tr><td></td><td></td></tr>
        
 </table>
     <div class="login-button2" style="margin-left: 80px;top: 40px">
           <input type ="button" onclick="javascript:location.href='http://localhost:8007/aaa/stu-login_post.jsp'" value="回到首頁"></input>   
     </div>
</form>
  </div>
  </div>
<!-- Footer -->
<%@ include file="pageend2.jsp" %>
</html>