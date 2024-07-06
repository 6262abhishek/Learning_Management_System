<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%
   response.setHeader("Cache-Control","no-cache");
response.setHeader("Cache-Control","no-store");
response.setHeader("Cache-Control","must-revalidate");
response.setHeader("Pragma","no-cache");
response.setDateHeader ("Expires", -1);

	  

%>
<%@ page import="java.sql.*" %> 
<%@ page import="java.io.*" %> 
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%
String id = request.getParameter("userid");
String driver = "com.mysql.jdbc.Driver";
String connectionUrl = "jdbc:mysql://localhost:3306/";
String database = "nishant";
String userid = "root";
String password = "nishant98";
try {
Class.forName(driver);
} catch (ClassNotFoundException e) {
e.printStackTrace();
}
Connection connection = null;
Statement statement = null;
ResultSet resultSet = null;

%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Space+Mono|Muli">
<link rel="stylesheet" href="css/admin.css">
</head>
<body style="background-image: url('images/rm347-porpla-02-a-01.jpg');">
<nav>
<div align="right" >

<ul>
<li class="navbar"><%=session.getAttribute("name")%></li>
</ul>
</div>
<div align="left">

</div>
</nav>

	

<div align="center">
<li class="insert"><a class="insert-uid" href="EducatorCreateClass.jsp">+</a></li>
<br><br>
<table style="border-radius:30px;">

<tr class="data-required">
<td style="color:white; border-radius: 10px;">TEACHER NAME</td>
<td style="color:white; border-radius: 10px;">COURSE</td>
<td style="color:white; border-radius: 10px;">FEES</td>

</tr>
<%
try{
		connection = DriverManager.getConnection(connectionUrl+database, userid, password);
		statement=connection.createStatement();
		String sql ="select * from users";
		resultSet = statement.executeQuery(sql);
		while(resultSet.next()){
%>
<tr class="all-data">
<td style="border-radius: 10px;"><%=resultSet.getString("stname") %></td>
<td style="border-radius: 10px;"><%=resultSet.getString("course") %></td>
<td style="border-radius: 10px;"><%=resultSet.getString("fee") %></td>
</tr>
<%
}
connection.close();
} catch (Exception e) {
e.printStackTrace();
}
%>
</table> 
</div>
</body>
</html>