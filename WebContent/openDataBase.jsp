<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
</head>
<body>
<%

   Class.forName("net.ucanaccess.jdbc.UcanaccessDriver");
    Connection con=DriverManager.getConnection("jdbc:ucanaccess://C:\\Users\\yun ping\\Desktop\\2020.11.22最新\\aaa\\WebContent\\database.accdb;");
	if(con.isClosed())
		out.println("資料庫已經關閉!<br>");
	else
		out.println("資料庫正開啟中!<br>");
	con.close();
	
	if(con.isClosed())
		out.println("資料庫已經關閉!<br>");
	else
		out.println("資料庫正開啟中!<br>");	
	%>
</body>
</html>