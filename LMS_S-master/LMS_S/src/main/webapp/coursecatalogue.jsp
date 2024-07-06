<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
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
<div align="right" >
<nav>
<ul>
<li class="navbar"><%=session.getAttribute("name")%></li>

</ul>
</nav>
</div>
<div align="center">
<h3>Courses</h3>
<br><br>
<table style="border-radius:30px;">
<tr class="data-required">
<td style="color:white; border-radius: 10px;">Teacher Name</td>
<td style="color:white; border-radius: 10px;">Course</td>
<td style="color:white; border-radius: 10px;">Fees</td>

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
<td style="border-radius: 10px;"><a class="btn btn-info" href="studentPay.jsp?id=<%=resultSet.getString("id")%>">visit</a></td>
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