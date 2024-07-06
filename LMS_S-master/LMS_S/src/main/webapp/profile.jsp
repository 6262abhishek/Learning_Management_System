<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
 

<!DOCTYPE html>
<html lang="en">

<head>
      <meta charset="UTF-8">
      <meta http-equiv="X-UA-Compatible" content="IE=edge">
      <meta name="viewport" content="width=device-width, initial-scale=1.0">
      <title>Online Courses-Learn Everywere | Learning Management System | MyProfile</title>
      <link rel="stylesheet" href="css/profile.css">
</head>

<body>                  
        
        
 

      <script src="https://kit.fontawesome.com/b99e675b6e.js"></script>

      <div class="wrapper">
      
            <div class="left">
                  <img src="img-20.jpg" alt="user" width="100">
                  <h4><%=session.getAttribute("name")%></h4>
                  <p>Student</p>
            </div>
            <div class="right">
                  <div class="info">
                        <h3>Information</h3>
                        <div class="info_data">
                              <div class="data">
                                    <h4>Email</h4>
                                    <p><%=session.getAttribute("email")%></p>
                              </div>
                              <div class="data">
                                    <h4>Phone</h4>
                                    <p><%=session.getAttribute("contact") %></p>
                              </div>
                        </div>
                  </div>

                  <div class="projects">
                        <h3>Projects</h3>
                        <div class="projects_data">
                              <div class="data">
                                    <h4>Recent</h4>
                                    <p>Python Cousre for beginers <i>(On going)</i></p>
                                    <p>HTML Cousrse <i>(completed on 07-21)</i></p>
                              </div>
                              <div class="data">
                                    <h4>Wishlist</h4>
                                    <p>The complete Javascript course</p>
                                    <p>Cyber Security</p>
                                    <p>Ethical Hacking</p>
                              </div>
                        </div>
                  </div>
            
      </div>
     
      </div>
</body>

</html>