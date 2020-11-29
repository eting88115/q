<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8" import="java.sql.*"%>
<!DOCTYPE html>
<html lang="tc">
<head>
<meta charset="utf-8">
<title>boss-StuApply</title>
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
<div class="w3-main" style="margin-left:100px; height: 900px">

  <div class="w3-row w3-padding-64">
    <div class="form-fields d-grid"> 
    </div>
  </div>
  <%! int num=1; //宣告全域變數num %>
	<%	Class.forName("net.ucanaccess.jdbc.UcanaccessDriver");
		Connection con=DriverManager.getConnection("jdbc:ucanaccess://C:\\Users\\yun ping\\Desktop\\新增資料夾\\q\\database.accdb;");
	Statement smt= con.createStatement
			(ResultSet.TYPE_SCROLL_INSENSITIVE,ResultSet.CONCUR_READ_ONLY);
	String sql = "SELECT 姓名, 住址, 學號, 電話, 性別, image, 科系, 信箱, 班級 FROM studentApply ";
	ResultSet rs = smt.executeQuery(sql);
	rs.last(); //將指標移至最後一筆資料
	int last = rs.getRow(); //取得總資料筆數
	String view = request.getParameter("view");
	if(view != null){
		int select = Integer.parseInt(view);
		switch(select){
		case 1:
			num = 1;   //選擇瀏覽第一筆,num 設為 1
			break;
		case 2:
			if(num == 1)  //選擇瀏覽上一筆,num 遞減 1
				num = 1;
			else
				num--;
			break;
		case 3:
			if(num == last)  //選擇瀏覽下一筆,num 遞增 1
				num = last;
			else
				num++;
			break;
		case 4:
			num = last; //選擇瀏覽最後一筆,num 設為 last
			break;
		default:
		}
	}
	String input = request.getParameter("input");
	if(input != null)
		num = Integer.parseInt(input);
	rs.absolute(num);  //將指標移動到第num筆資料元素
	%>
    <div class="post" align="center" style="margin-left:150px">
      <h1 class="w3-text-teal"><b>宿舍申請表</b></h1>
    </div>
    <div class="apply">
         
         <table border="1" style="margin-left:70px; width: 700px;height: 300px">
	     
         <font color="#009393" size="5" style="margin-left:550px"><%=rs.getString("學號") %><%=rs.getString("姓名") %>_申請單</font>
	     <hr>
              <tr><td><label for="name">姓名:<%=rs.getString("姓名")%></label></td>
                  <td><label for="address">住址:<%=rs.getString("住址")%></label></td></tr><tr><td></td><td></td></tr>
              <tr><td><label for="account">學號:<%=rs.getString("學號")%></label></td>
                  <td><label for="phone">電話:<%=rs.getString("電話")%></label></td></tr><tr><td></td><td></td></tr>
              <tr><td><label for="sex">性別:<%=rs.getString("性別")%></label></td>
                  <td><label for="photo">戶籍資料圖片檔:</label><%=rs.getString("性別")%></td></tr><tr><td></td><td></td></tr>
              <tr><td><label for="department">科系:<%=rs.getString("科系")%></label></td>
                  <td><label for="email">信箱:<%=rs.getString("信箱")%></label></td></tr><tr><td></td><td></td></tr>
              <tr><td><label for="classroom">班級:<%=rs.getString("班級")%></label></td>
                  <td><label for="audit">審核狀態:</label>
                      <select name="audit" id="audit">
                          <option value="0" selected>請選擇</option>
                          <option value="通過">通過</option>
                          <option value="未通過">未通過</option></select>
                  </td></tr><tr><td></td><td></td></tr> 
           </table> 
           <div class="button3">
           <input type="submit"  style="width:100px" value="儲存">
           </div>
           <br>
           <hr>
	       <form action="boss-StuApply.jsp" method="get">
	          <table>
	             <tr><td><a href="">第一筆</a></td>
	                 <td><a href="">上一筆</a></td>
	                 <td><a href="">下一筆</a></td>
	                 <td><a href="">最後一筆</a></td>
	                 <td> 輸入學號：<input type="text" size="3" name="input">
	             <input type="submit" value="顯示成績"></td></tr>
	          </table>
           </form>
    </div>
         
</div>
<!-- Footer -->
<%@ include file="pageend.jsp" %>
</html>