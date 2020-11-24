<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html lang="tc">
<head>
<meta charset="BIG5">
<title>boss-SM-template</title>
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
      <h1 class="w3-text-teal"><b>範本管理</b></h1>
    </div>
          <div class="template" style="position: relative;left: 320px; height: 460px">
                  <div class="description">
                      <form>
                        請選擇使用範本
                        <select data-chose="zh-tw" onchange="this.dataset.chose = this.value;">
                            <option selected value="zh-tw">申請通過</option>
                            <option value="zh-cn">申請未通過</option>
                            <option value="en">自訂範本</option>
                        </select>
                                <div class="info zh-tw-info"><textarea style="width:450px;height:250px">同學您好，恭喜您通過宿舍申請，邀請您5/1於校本部明倫館參與抽籤過程，若您抽中宿舍即可在5/3於本系統選擇您想要的床位，若未抽中宿舍，請不要氣餒，在5/13可參與我們候補申請，祝您好運！生輔組上</textarea></div>
                                <div class="info zh-cn-info"><textarea style="width:450px;height:250px">同學您好，抱歉~你未通過宿舍申請。請下學期再參與申請，謝謝!生輔組上</textarea></div>
                                <div class="info en-info"><textarea style="width:450px;height:250px">***同學，xxx。生輔組***老師上</textarea></div>
                                <span class="fn"><a href="javascript:;" id="memoDefault" style="position: relative;left: 480px">刪除內容</a></span>
                             <div class="custom" style="position: relative; left: 65px; top: 20px">
                                <span id="memoSaveTop" style="font-size:15px" >如需「新增範本」，請勾選「儲存為自訂範本」，按儲存。</span>
                                <span id="memoSave">
                                    <input type="checkbox" id="memoFlag" name="memoFlag" value="0" title="勾選此處可儲存內容，方便您下次使用">
                                    <label for="memoFlag">儲存為自訂範本</label><br></br>
                                </span>
                            </div>
                         </form>
                    </div>
                        <p class="go" style="position: relative; left: 185px; top: 20px">
                        <input type="button" class="btn" value="儲存" onclick="resumecheck();" />
                        </p>
           </div>
  </div>
               
</div>
<br></br>
 
<!-- Footer -->
<%@ include file="pageend.jsp" %>
</html>