<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%
   response.setHeader("Cache-Control","no-cache");
response.setHeader("Cache-Control","no-store");
response.setHeader("Cache-Control","must-revalidate");
response.setHeader("Pragma","no-cache");
response.setDateHeader ("Expires", -1);

if(session.getAttribute("name")==("sname"))
	   response.sendRedirect("delete.jsp");
else
	response.sendRedirect("EducatorArea.jsp");
%>
<%@page import="java.sql.*" %>
 
 
<%
        String id = request.getParameter("id");
        Connection con;
        PreparedStatement pst;
        ResultSet rs;
        
        Class.forName("com.mysql.jdbc.Driver");
        con = DriverManager.getConnection("jdbc:mysql://localhost:3306/nishant?useSSL=false","root","nishant98");
        pst = con.prepareStatement("delete from users where id = ?");
         pst.setString(1, id);
        pst.executeUpdate();  
        
        %>
        
        <script>
            
            alert("Record Deletee");
            
       </script>