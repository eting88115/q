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
      <h1 class="w3-text-teal"><b>審核申請清單</b></h1>
    </div>
          <div class="template" style="position: relative; height: 460px">
          
          <div class="panel-group">
              <input type="radio" name="panel-radio" id="radio1" class="panel-control" checked>
              <input type="radio" name="panel-radio" id="radio2" class="panel-control">
              <input type="radio" name="panel-radio" id="radio3" class="panel-control">
              <input type="radio" name="panel-radio" id="radio4" class="panel-control">
                 <div class="tab-group">
                   <label for="radio1" class="active">全部</label>
                   <label for="radio2">待審核</label>
                   <label for="radio3">通過</label>
                   <label for="radio4">未通過</label>
                 </div>
                 
                 <div class="content-group">
                 <hr>
                         <div class="findstu">
                                <form role="box" action="" method="get">
                                    <div class="find-group">
                                          <label for="find">搜尋班級:</label>
                                             <input type="text" id="findClass" class="findClass" placeholder="輸入搜索班級">
                                          <label for="find">搜索學號:</label>
                                             <input type="text" id="findAccount" class="findAccount" placeholder="輸入搜索學號">
                                          <input type="submit"  value="搜索">
                                          <input type="reset" value="清除">
                                          </div>
                      <hr>
                                          <%
	// Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
	// Connection con =DriverManager.getConnection("jdbc:odbc:dataBase") ;
	Class.forName("net.ucanaccess.jdbc.UcanaccessDriver");
<<<<<<< HEAD
	Connection con=DriverManager.getConnection("jdbc:ucanaccess://C:\\Users\\Ting\\eclipse-workspace\\aaa\\database.accdb;");
=======
	Connection con=DriverManager.getConnection("jdbc:ucanaccess://C:\\Users\\yun ping\\Desktop\\2020.11.22最新\\aaa\\WebContent\\database.accdb;");
>>>>>>> branch 'master' of https://github.com/eting88115/aaa.git
	Statement smt= con.createStatement();
	String sql = "SELECT * FROM studenApply ";
	ResultSet rs = smt.executeQuery(sql);
	%>
      </form>
            <div class="FindApply">
            <table class="FindApply">
               <caption class="title">學生申請資料-全部</caption>
                 
                  <tr> 
                     <th class="text-center" scope="col" width="10%">序號</th> 
                     <th class="text-center" scope="col" width="10%">班級</th>
                     <th class="text-center" scope="col" width="15%">學號</th>
                     <th class="text-center" scope="col" width="10%">姓名</th>
                     <th class="text-center" scope="col" width="30%">地址</th>
                     <th class="text-center" scope="col" width="15%">審核狀態</th>
                     <th class="text-center" scope="col" width="15%">操作</th>
                  </tr>
	<%
	while(rs.next()){%>
                      <tr> 
                         <td><%=rs.getString("序號") %></td> 
                         <td><%=rs.getString("班級") %></td>
                         <td><%=rs.getString("學號") %></td>
                         <td><%=rs.getString("姓名") %></td>
                         <td><%=rs.getString("住址") %></td>
                         <td><%=rs.getString("審核狀態") %></td>
                         <td><button class="edit" data-toggle="modal" data-target="#layer">編輯</button></td>
                      </tr>
             </table>
             </div>
    </div> 
</div>
                 
                 </div>
           </div>
          
          
          
</div>
   </div>
 </div>
</div>
<br></br>
 <%}	
	con.close();
	%>
<!-- Footer -->
<%@ include file="pageend.jsp" %>
</html>