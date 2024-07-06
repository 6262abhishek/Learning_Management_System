<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%>
<%
String stname=request.getParameter("sname");
String course=request.getParameter("course");
String fee=request.getParameter("fee");
try
{
         Class.forName("com.mysql.jdbc.Driver");
           Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/nishant", "root", "nishant98");
           Statement st=conn.createStatement();
           int i=st.executeUpdate("insert into users(stname,course,fee)values('"+stname+"','"+course+"','"+fee+"')");
        out.println("Data is successfully inserted!");
        }
        catch(Exception e)
        {
        System.out.print(e);
        e.printStackTrace();
        }
 %>