<%@page contentType="text/html; charset=BIG5"%>
<%@page pageEncoding="BIG5"%>
<%@page import="java.sql.*"%>
<html>
	<head>
	<title>成績查詢主畫面</title>
	<meta charset="BIG5">
	</head>
<body>
	<form action="resultForm.jsp" method="post">
	
	<%
	Class.forName("net.ucanaccess.jdbc.UcanaccessDriver");
	Connection con=DriverManager.getConnection("jdbc:ucanaccess://C:\\Users\\USER\\git\\q\\database.accdb;");
	Statement smt= con.createStatement();
	String sql = "SELECT 姓名 FROM studentApply";
	ResultSet rs = smt.executeQuery(sql);
	
	%>
	<select name="name">
           <%while(rs.next()){ %>
              <option value="<%=rs.getString("姓名")%>"><%=rs.getString("姓名") %></option>
          <%}con.close();%>   
 	</select>
	<input type="submit" value="查詢成績">
	
	</form>
</body>
</html>