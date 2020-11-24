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
<div class="w3-main" style="margin-left:100px; height: 700px">

  <div class="w3-row w3-padding-64">
    <div class="form-fields d-grid"> 
    </div>
  </div>
<%
	// Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
	// Connection con =DriverManager.getConnection("jdbc:odbc:dataBase") ;
	Class.forName("net.ucanaccess.jdbc.UcanaccessDriver");
	Connection con=DriverManager.getConnection("jdbc:ucanaccess://C:\\Users\\yun ping\\Desktop\\新增資料夾\\aaa\\database.accdb;");
	Statement smt= con.createStatement();
	String sql = "SELECT * FROM studenApply ";
	ResultSet rs = smt.executeQuery(sql);
%>
  
    <div class="post" align="center" style="margin-left:150px">
      <h1 class="w3-text-teal"><b>宿舍申請表</b></h1>
    </div>
    <div class="apply">
         <form method="post" action="boss-StuApply2.jsp">
         <table border="1" style="margin-left:50px; width: 700px;height: 300px">
<%
while(rs.next())
{%>
              <tr><td><label for="name">姓名:<%=rs.getString("姓名")%></label></td>
                  <td><label for="address">住址:<%=rs.getString("住址")%></label></td></tr><tr><td></td><td></td></tr>
              <tr><td><label for="account">學號:<%=rs.getString("學號")%></label></td>
                  <td><label for="phone">電話:<%=rs.getString("電話")%></label></td></tr><tr><td></td><td></td></tr>
              <tr><td><label for="sex">性別:<%=rs.getString("性別")%></label></td>
                  <td><label for="photo">戶籍資料圖片檔:</label></td></tr><tr><td></td><td></td></tr>
              <tr><td><label for="department">科系:<%=rs.getString("科系")%></label></td>
                  <td><label for="email">信箱:<%=rs.getString("信箱")%></label></td></tr><tr><td></td><td></td></tr>
              <tr><td><label for="classroom">班級:<%=rs.getString("班級")%></label></td>
  <%
  }con.close();
  %>
                  <td><label for="audit">審核狀態:</label>
                      <select name="audit" id="audit">
                          <option value="0" selected>請選擇</option>
                          <option value="通過">通過</option>
                          <option value="未通過">未通過</option>
                      </select>
                  </td></tr><tr><td></td><td></td></tr> 

           </table> 
           <div class="button3">
           <input type="submit"  style="width:100px" value="儲存">
           </div>
          </form>
    </div>
         
</div>
</div>
<!-- Footer -->
<%@ include file="pageend.jsp" %>
</html>