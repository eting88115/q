<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html lang="tc">
<head>
<meta charset="BIG5">
<title>boss-edit-post</title>
</head>

<body>

<!-- Header -->
<%@ include file="menu2.jsp" %>

<!-- Sidebar -->
 <nav class="w3-sidebar w3-bar-block w3-collapse w3-large w3-theme-l5 w3-animate-left" id="mySidebar">
  <a href="javascript:void(0)" onclick="w3_close()" class="w3-right w3-xlarge w3-padding-large w3-hover-black w3-hide-large" title="Close Menu">
     <i class="fa fa-remove"></i>
  </a>
  <h4 class="w3-bar-item"><b>陳莉莉教官 您好</b></h4>
     <form action="">
        <div class="activity-time">
          <ul>
            <li>送出宿舍申請</li><br>(4/18~4/25)<br><br>
           <li>查看申請結果 </li><br>(4/28)<br><br>
            <li>床位抽籤</li><br>(5/1)<br><br>
            <li>選床位</li><br>(5/3~5/11)<br><br>
            <li>候補申請</li><br>(5/13~5/18)<br><br>
          </ul>
          <div class="login-button">
            <input type="submit" id="logout" value="登出"/>
            <input type="hidden" name="Logout" value="true"/><br></br>
          </div>
        </div>
     </form>
 </nav>
 
 <!-- Header -->
<!-- Overlay effect when opening sidebar on small screens -->
<div class="w3-overlay w3-hide-large" onclick="w3_close()" style="cursor:pointer" title="close side menu" id="myOverlay"></div>

<!-- Main content: shift it to the right by 250 pixels when the sidebar is visible -->
<div class="w3-main">

  <div class="w3-row w3-padding-64">
    <div class="form-fields d-grid"> 
    </div>
  </div>

  <div class="w3-row">
    <div class="post" align="center">
      <h1 class="w3-text-teal"><b>新增公告</b></h1>
     </div>
      
        <div class="post-file" >
        <form>
                <div class="postfile1">
                <label for="choose-file">選擇檔案:</label><input type="file" id="myfile" name="myfile">
                </div>
                <div class="postfile2">
                <label for="TDay">選擇日期:</label><input type="date" name="bday">
                </div>
                <div class="postfile3">
                <label for="name">公告名稱:</label>
                       <div class="TDay">
                       <input type="text" style="width: 450px; height:30px" name="name" placeholder="請輸入公告名稱">
                       </div>
                </div>
                <div class="postfile4">
                <input type="submit"  style="width:150px;height:30px" onclick="javascript:location.href=''" value="上傳公告">
                </div>
        </div>
        </form>
        </div>
      
   </div> 
  

 <!-- Footer -->
<%@ include file="pageend.jsp" %>
</body>
</html>