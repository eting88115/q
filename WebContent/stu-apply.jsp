<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html lang="tc">
<head>
<meta charset="utf-8">
<title>stu-apply</title>
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

  <div class="w3-row" style="height:600px">
    <div class="post" style=" margin-left: 600px">
      <h1 class="w3-text-teal"><b>宿舍申請表</b></h1>
    </div>
    <form method="post" action="GetStuApply.jsp">
         <table>
              <tr><td><label for="name">姓名:</label><input type="text" name="name" placeholder="請輸入姓名"></td>
                   <td><label for="address">住址:</label><input type="text" name="address" placeholder="請輸入住址"></td></tr><tr><td></td><td></td></tr>
              <tr><td><label for="account">學號:</label><input type="text" name="account" placeholder="請輸入學號"></td>
                  <td><label for="phone">電話:</label><input type="text" name="phone" placeholder="請輸入電話號碼"></td></tr><tr><td></td><td></td></tr>
              <tr><td><label for="sex">性別:</label><input type="radio" name="sex" value="男生" checked>男生<input type="radio" name="sex" value="女生">女生</td>
                  <td><label for="photo">戶籍資料圖片檔:</label><input type="file" id="myfile" name="myfile"></td></tr><tr><td></td><td></td></tr>
              <tr><td><label for="department">科系:</label>
                    <select name="department" id="department">
                          <option value="0" selected>請選擇</option>
                          <option value="健康事業管理系">健康事業管理系</option>
                          <option value="語言治療與聽力學系">語言治療與聽力學系</option>
                          <option value="生死與健康心理諮商系">生死與健康心理諮商系</option>
                          <option value="運動保濟系">運動保濟系</option>
                     </select></td>
                  <td><label for="email">信箱:</label><input type="text" name="email" placeholder="請輸入電子郵件"></td></tr><tr><td></td><td></td></tr>
               <tr><td><label for="classroom">班級:</label>
                      <select name="classroom" id="classroom">
                          <option value="0" selected>請選擇</option>
                          <option value="四技一A">四技一A</option>
                          <option value="四技一B">四技一B</option>
                          <option value="四技二A">四技二A</option>
                          <option value="四技二B">四技二B</option>
                          <option value="四技三A">四技三A</option>
                          <option value="四技三B">四技三B</option>
                          <option value="四技四A">四技四A</option>
                          <option value="四技四B">四技四B</option>
                      </select></td>
                   
         </table>
         <script>
			function link2nthu() {
			answer = confirm("請確認宿舍申請表填寫確實無誤、戶籍檔案是否選擇正確，此檔案為主要審核資料，送出資料之後不可再次修改!");
			if (answer)
				confirm("資料輸入完畢");
			}
		</script>
         <div class="login-button2" style=" margin-left: 20px">
         	<input type="submit" onclick="javascript:link2nthu()" value="確定申請">
            <input type ="button" onclick="javascript:location.href='http://localhost:8007/aaa/stu-login_post.jsp'" value="取消申請">
         </div>
         </form>
  </div>
 </div>
<!-- Footer -->
<%@ include file="pageend2.jsp" %>
</html>