<%@page contentType="text/html"%>
<%@page pageEncoding="BIG5"%>
<%@page import="java.sql.*"%>
<html>
	<head><title>Select</title></head>
<body>
	<%
	// Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
	// Connection con =DriverManager.getConnection("jdbc:odbc:dataBase") ;
	Class.forName("net.ucanaccess.jdbc.UcanaccessDriver");
	Connection con=DriverManager.getConnection("jdbc:ucanaccess://C:\\Users\\yun ping\\Desktop\\�s�W��Ƨ�\\aaa\\database.accdb;");
	Statement smt= con.createStatement();
	String sql = "SELECT * FROM personData ";
	ResultSet rs = smt.executeQuery(sql);
	%>
	���X��ƪ���
	<table border='1'>
	<tr>
	<th>�s��</th>
	<th>�m�W</th>
	<th>��}</th>
	<th>�q��</th>
	</tr>
	<%
	while(rs.next()){%>
	<tr>
		 <td><%=rs.getString("ID")%></td>
		 <td><%=rs.getString("personName")%></td>
		 <td><%=rs.getString("address")%></td>
		 <td><%=rs.getString("phone")%></td>
	</tr>
	<%}	
	con.close();
	%>
</body>
</html>