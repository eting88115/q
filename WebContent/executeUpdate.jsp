<%@ page language="java" contentType="text/html; charset=BIG5"
    pageEncoding="BIG5" import="java.sql.*"%>
<!DOCTYPE html >
<html>
<head>
<title>Insert title here</title>
</head>
<body>
	<%
	// Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
	// Connection con =DriverManager.getConnection("jdbc:odbc:dataBase") ;
	Class.forName("net.ucanaccess.jdbc.UcanaccessDriver");
		Connection con=DriverManager.getConnection(
		"jdbc:ucanaccess://C:\\Users\\yun ping\\Desktop\\�s�W��Ƨ�\\aaa\\database.accdb;");
	Statement smt= con.createStatement();
	out.println("�s�W��Ʀ�person");
	smt.executeUpdate("INSERT INTO personData(ID, personName, address,phone) VALUES('2', 'Joan','Taipei','000');");
	
	con.close();
	%>
	
</body>
</html>