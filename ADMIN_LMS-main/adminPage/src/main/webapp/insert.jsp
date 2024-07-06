<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
  <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Space+Mono|Muli">
<link rel="stylesheet" href="css/admin.css">      
</head>
<body style="background-image: url('images/rm347-porpla-02-a-01.jpg');">
<div align="center">
<h3>INSERT DATA</h3>
<br><br>
<form method="post" action="process.jsp">
Name:<br>
<input type="text" name="name" class="input">
<br>
Email:<br>
<input type="email" name="email" class="input">
<br>
Password:<br>
<input type="text" name="pass" class="input">
<br>
Contact:<br>
<input type="text" name="contact" class="input">
<br><br>
<input type="submit" value="submit" class="button">
</form>
</div>
</body>
</html>