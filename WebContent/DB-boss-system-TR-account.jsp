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
	String memberId = new String(request.getParameter("Tac"));
	String memberPwd = new String(request.getParameter("Tpw"));
	try{
		smt.execute("INSERT INTO leelab (Tac, Tpw) VALUES('"+Tac+"','"+Tpw+"')");
		con.close();
		response.sendRedirect("boss-tr-account-modify.jsp?status=newmember");
	}catch (Exception e){
		response.sendRedirect("boss-system-TR_account.jsp?status=IDexist");
	}
	%>
</body>
</html>
