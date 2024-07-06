<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%>
<%
String uname=request.getParameter("name");
String uemail=request.getParameter("email");
String upwd=request.getParameter("pass");
String umobile=request.getParameter("contact");
try
{
         Class.forName("com.mysql.jdbc.Driver");
           Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/nishant", "root", "nishant98");
           Statement st=conn.createStatement();
           int i=st.executeUpdate("insert into users(uname,uemail,upwd,umobile)values('"+uname+"','"+uemail+"','"+upwd+"','"+umobile+"')");
        out.println("Data is successfully inserted!");
        }
        catch(Exception e)
        {
        System.out.print(e);
        e.printStackTrace();
        }
 %>