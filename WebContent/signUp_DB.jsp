<%@page contentType="text/html"%>
<%@page pageEncoding="MS950"%>
<%@page import="java.sql.*"%>


<html>
<body>
	<%
	Connection con=DriverManager.getConnection("jdbc:ucanaccess://C:\\Users\\Ting\\Desktop\\q\\q\\database.accdb;");
	Class.forName("net.ucanaccess.jdbc.UcanaccessDriver");
	Statement smt= con.createStatement();
	String Saccount = new String(request.getParameter("Saccount"));
	String Spw = new String(request.getParameter("Spw"));
	try{
		smt.execute("INSERT INTO Saccount (Saccount, Spw) VALUES('"+Saccount+"','"+Spw+"')");
		con.close();
		response.sendRedirect("login.jsp?status=newmember");
	}catch (Exception e){
		response.sendRedirect("signUp.jsp?status=IDexist");
	}
	%>
</body>
</html>