<%@page contentType="text/html; charset=BIG5"%>
<%@page pageEncoding="BIG5"%>
<%@page import="java.sql.*"%>
<html>
	<head>
	<title>���Z�d�ߥD�e��</title>
	<meta charset="BIG5">
	</head>
<body>
	<form action="resultForm.jsp" method="post">
	
	<%
	Class.forName("net.ucanaccess.jdbc.UcanaccessDriver");
	Connection con=DriverManager.getConnection("jdbc:ucanaccess://C:\\Users\\USER\\git\\q\\database.accdb;");
	Statement smt= con.createStatement();
	String sql = "SELECT �m�W FROM studentApply";
	ResultSet rs = smt.executeQuery(sql);
	
	%>
	<select name="name">
           <%while(rs.next()){ %>
              <option value="<%=rs.getString("�m�W")%>"><%=rs.getString("�m�W") %></option>
          <%}con.close();%>   
 	</select>
	<input type="submit" value="�d�ߦ��Z">
	
	</form>
</body>
</html>