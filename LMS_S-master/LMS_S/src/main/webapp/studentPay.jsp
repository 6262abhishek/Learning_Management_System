<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*" %>
 
<%
    if(request.getParameter("submit")!=null)
    {
        String id = request.getParameter("id");
        String name = request.getParameter("sname");
        String course = request.getParameter("course");
        String fee = request.getParameter("fee");
        
        Connection con;
        PreparedStatement pst;
        ResultSet rs;
        
        Class.forName("com.mysql.jdbc.Driver");
        con = DriverManager.getConnection("jdbc:mysql://localhost:3306/nishant?useSSL=false","root","nishant98");
        pst = con.prepareStatement("select * from users (stname = ? ,course = ? ,fee = ?, where id = ?)");
        pst.setString(1, name);
        pst.setString(2, course);
        pst.setString(3, fee);
         pst.setString(4, id);
        pst.executeUpdate();  
        
        %>
        
        <script>  
            alert("Redirescting to Payment Page");          
       </script>
    <%            
    }
 
%>
 
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
      <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Space+Mono|Muli">
<link rel="stylesheet" href="css/admin.css">

        
        
    </head>
    <body style="background-image: url('images/rm347-porpla-02-a-01.jpg');">
                    
                    <%    
                         Connection con;
                        PreparedStatement pst;
                        ResultSet rs;
        
                         Class.forName("com.mysql.jdbc.Driver");
                          con = DriverManager.getConnection("jdbc:mysql://localhost:3306/nishant?useSSL=false","root","nishant98");
                          
                          String id = request.getParameter("id");
                          
                        pst = con.prepareStatement("select * from users where id = ?");
                        pst.setString(1, id);
                        rs = pst.executeQuery();
                        
                         while(rs.next())
                         {
                    
                    %>
                    <div align="right" >
<nav>
<ul>
<li class="navbar"><%=session.getAttribute("name")%></li>

</ul>
</nav>
</div>
                    <div align="center">
                    <h3>PAYMENT CONFIRMATION</h3>
                    <br><br>
        <form>
            <h3><%= rs.getString("stname")%></h3>
            <h3><%= rs.getString("course")%></h3>
            <h3><%= rs.getString("fee")%></h3>
            <br><br>
             <div align="center">
                         <input type="submit" id="submit" value="pay" name="submit" class="button">
                     </div>   
                     <div align="center">
                            
                             <p><a href="index.jsp">Click Back</a></p>
                            
                            
                         </div>
        </form>

    </div>
    
          <% }  %>
           </br>
                        
                                 
                     
                        
                         
  
    </body>
</html>