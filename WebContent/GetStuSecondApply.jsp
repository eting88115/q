<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html lang="tc">
<head>
<meta charset="utf-8">
<title>GetStuSecondApply</title>
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
      <h1 class="w3-text-teal"><b>候補宿舍申請表</b></h1>
    </div>
    <%request.setCharacterEncoding("utf-8"); %>
<%
 String name = request.getParameter("name");
 String account = request.getParameter("account");
 String phone = request.getParameter("phone");
 String email = request.getParameter("email");
 String address = request.getParameter("address");
 String photo = request.getParameter("address");
%>

         <table style=" margin-left: 40px">
              <tr><td><label for="name">姓名:</label><%=name %></td>
                   <td><label for="address">住址:</label><%=address %></td></tr><tr><td></td><td></td></tr>
              <tr><td><label for="account">學號:</label><%=account %></td>
                  <td><label for="phone">電話:</label><%=phone %></td></tr><tr><td></td><td></td></tr>
              <tr><td><label for="sex">性別:</label><%String sex=request.getParameter("sex");out.println(sex); %></td>
                  <td><label for="photo">戶籍資料圖片檔:</label><%=photo %></td></tr><tr><td></td><td><b style="color:red;font-size:10px">主要的審核資料，請確認資料無誤</b></td></tr>
              <tr><td><label for="department">科系:</label><%String department = request.getParameter("department");out.println(department);%></td>
                  <td><label for="email">信箱:</label><%=email %></td></tr><tr><td></td><td></td></tr>
              <tr><td><label for="classroom">班級:</label><% String classroom = request.getParameter("classroom");out.println(classroom); %></td><td></td></tr><tr><td></td><td></td></tr>
                   
         </table> 
         
         <div class="login-button2" style=" margin-left: 80px">
           <input type ="button" onclick="javascript:location.href='http://localhost:8011/aaa/stu-login_post.jsp'" value="回到首頁"></input>   
         </div>
</div>
</div>
<!-- Footer -->
<%@ include file="pageend2.jsp" %>
</html>