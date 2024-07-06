<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%
String id = request.getParameter("id");
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
<%
try{
connection = DriverManager.getConnection(connectionUrl+database, userid, password);
statement=connection.createStatement();
String sql ="select * from users where id="+id;
resultSet = statement.executeQuery(sql);
while(resultSet.next()){
%>
<!DOCTYPE html>
<html>
<head>
  <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Space+Mono|Muli">
<link rel="stylesheet" href="css/admin.css">      
</head>
<body style="background-image: url('images/rm347-porpla-02-a-01.jpg');">
<div align="center" >
<h3>UPDATE DATA</h3>
<br><br>
<form method="post" action="update-process.jsp">
<input type="hidden" name="id" class="input" value="<%=resultSet.getString("id") %>">
<input type="text" name="id" class="input" value="<%=resultSet.getString("id") %>">
<br>
Name:<br>
<input type="text" name="name" class="input" value="<%=resultSet.getString("uname") %>">
<br>
Email:<br>
<input type="email" name="email" class="input" value="<%=resultSet.getString("uemail") %>">
<br>
Password:<br>
<input type="password" name="pass" class="input" value="<%=resultSet.getString("upwd") %>">
<br>
Mobile:<br>
<input type="text" name="contact" class="input" value="<%=resultSet.getString("umobile") %>">
<br>
Teacher Name:<br>
<input type="text" name="contact" class="input" value="<%=resultSet.getString("stname") %>">
<br>
Course:<br>
<input type="text" name="course" class="input" value="<%=resultSet.getString("course") %>">
<br>
Fees:<br>
<input type="text" name="fee" class="input" value="<%=resultSet.getString("fee") %>">
<br>
Teacher_id:<br>
<input type="text" name="course" class="input" value="<%=resultSet.getString("t_id") %>">
<br><br>
<input type="submit" value="submit" class="button">
                        
</form>

<%
}
connection.close();
} catch (Exception e) {
e.printStackTrace();
}
%>
</div>
</body>
</html>