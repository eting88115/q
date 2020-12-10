<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8" import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
</head>
<body>
	<%! int num=1; //宣告全域變數num %>
	<%	Class.forName("net.ucanaccess.jdbc.UcanaccessDriver");
		Connection con=DriverManager.getConnection("jdbc:ucanaccess://D:\\Java\\Access\\dataBase.accdb;");
	Statement smt= con.createStatement
			(ResultSet.TYPE_SCROLL_INSENSITIVE,ResultSet.CONCUR_READ_ONLY);
	
	String sql = "SELECT * FROM grades";
	ResultSet rs = smt.executeQuery(sql);
	rs.last(); //將指標移至最後一筆資料
	int last = rs.getRow(); //取得總資料筆數
	String view = request.getParameter("view");
	if(view != null){
		int select = Integer.parseInt(view);
		switch(select){
		case 1:
			num = 1;   //選擇瀏覽第一筆,num 設為 1
			break;
		case 2:
			if(num == 1)  //選擇瀏覽上一筆,num 遞減 1
				num = 1;
			else
				num--;
			break;
		case 3:
			if(num == last)  //選擇瀏覽下一筆,num 遞增 1
				num = last;
			else
				num++;
			break;
		case 4:
			num = last; //選擇瀏覽最後一筆,num 設為 last
			break;
		default:
		}
	}
	String input = request.getParameter("input");
	if(input != null)
		num = Integer.parseInt(input);
	rs.absolute(num);  //將指標移動到第num筆資料元素
	%>
	
	<font color="red" size="5"><b><%=rs.getString(1) %></b></font>號
	<font color="blue" size="5"><%=rs.getString(2) %></font>的成績
	<hr>
	
	<%
	int intChinese = rs.getInt(3);
	int intEnglish = rs.getInt(4);
	int intMath = rs.getInt(5);
	int intSum = intChinese + intEnglish + intMath ;
	
	out.println("國文=" + intChinese +"<br>");
	out.println("英文=" + intEnglish +"<br>");
	out.println("數學=" + intMath +"<br><br>");
	out.println("<b>平均=" + intSum/3 +"</b><br>");
	out.println("<b>總分=" + intSum +"</b><br>");
	%>
	<hr>
	<form action="usingBrowser.jsp" method="get">
	<table>
	<tr><td><a href="usingBrowser.jsp?view=1">第一筆</a></td>
	<td><a href="usingBrowser.jsp?view=2">上一筆</a></td>
	<td><a href="usingBrowser.jsp?view=3">下一筆</a></td>
	<td><a href="usingBrowser.jsp?view=4">最後一筆</a></td>
	<td> 輸入學號：<input type="text" size="3" name="input">
	<input type="submit" value="顯示成績"></td></tr>
	</table>
	</form>
</body>
</html>
</body>
</html>