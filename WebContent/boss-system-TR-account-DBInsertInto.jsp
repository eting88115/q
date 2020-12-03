<%@page contentType="text/html"%>
<%@page pageEncoding="MS950"%>
<%@page import="java.sql.*"%>
<jsp:useBean id='objDBConfig' scope='application' class='hitstd.group.tool.database.DBConfig' />

<html>
<body>
	<%
	Class.forName("net.ucanaccess.jdbc.UcanaccessDriver");
	Connection con=DriverManager.getConnection("jdbc:ucanaccess://"+objDBConfig.FilePath()+";");
	Statement smt= con.createStatement();
	String Tname = new String(request.getParameter("TRname"));
	String Tac = new String(request.getParameter("TRaccount"));
	String Tpw = new String(request.getParameter("TRpassword"));
	try{
		smt.execute("INSERT INTO Taccount (Tac, Tpw) VALUES('"+Tac+"','"+Tpw+"')");
		con.close();
		response.sendRedirect("boss-tr-account-modify.jsp?status=newmember");
	}catch (Exception e){
		response.sendRedirect("boss-system-TR-account.jsp?status=IDexist");
	}
	%>
</body>
</html>
