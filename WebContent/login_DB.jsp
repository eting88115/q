<%@page contentType="text/html"%>
<%@page pageEncoding="BIG5"%>
<%@page import="java.sql.*"%>

<%

if(request.getParameter("Saccount") !=null &&
	request.getParameter("Spw") !=null){
	Class.forName("net.ucanaccess.jdbc.UcanaccessDriver");
	Connection con=DriverManager.getConnection("jdbc:ucanaccess://C:\\Users\\Ting\\Desktop\\q\\q\\database.accdb;");
	Statement smt= con.createStatement();
	String getMemberData = "SELECT * FROM Saccount WHERE Saccount='"+
			request.getParameter("Saccount")+"' AND Spw='" +
			request.getParameter("Spw")+"'";
	ResultSet members = smt.executeQuery(getMemberData);
	if(members.next()){
		session.setAttribute("Saccount",request.getParameter("Saccount"));
		//session.setMaxInactiveInterval(20); ¦Û°Êµn¥X
		response.sendRedirect("stu-login_post.jsp");
	}else
		response.sendRedirect("login.jsp?status=loginerror");
}
%>