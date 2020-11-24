<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8" import="java.sql.*"%>
<!DOCTYPE html>
<html lang="tc">
<head>
<meta charset="utf-8">
<title>boss-Checklist-waiting</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="css\styles.css" >
<link rel="stylesheet" href="css\styles2.css" >
<link rel="stylesheet" href="css\styles3.css" >
<link rel="stylesheet" href="css\styles4.css">
<link rel="stylesheet" href="css\styles5.css">
</head>
<body>
<hr>
                   <!-- 待審核的內容 --->
                   <div class="content content2">
                   <hr>
                         <div class="findstu">
                                <form role="box" action="(new)boss-CheckList.jsp" method="get">
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
	Statement smt4 = con.createStatement();
	String sql4 = "SELECT * FROM studenApply 未通過 ";
	ResultSet rs4 = smt.executeQuery(sql);
	%>
      </form>
            <div class="FindApply4">
            <table class="FindApply">
               <caption class="title">學生申請資料-未通過</caption>
                 
                  <tr> 
                     <th class="text-center" scope="col" width="10%">序號</th> 
                     <th class="text-center" scope="col" width="10%">班級</th>
                     <th class="text-center" scope="col" width="15%">學號</th>
                     <th class="text-center" scope="col" width="10%">姓名</th>
                     <th class="text-center" scope="col" width="30%">地址</th>
                     <th class="text-center" scope="col" width="15%">審核狀態</th>
                     <th class="text-center" scope="col" width="15%">操作</th>
                  </tr>
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
</body>
</html>