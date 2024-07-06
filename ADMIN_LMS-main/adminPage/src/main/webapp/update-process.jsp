<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>
<%! String driverName = "com.mysql.jdbc.Driver";%>
<%!String url = "jdbc:mysql://localhost:3306/nishant";%>
<%!String user = "root";%>
<%!String psw = "nishant98";%>
<%
String id = request.getParameter("id");
String uname=request.getParameter("name");
String uemail=request.getParameter("email");
String upwd=request.getParameter("pass");
String umobile=request.getParameter("contact");
String stname=request.getParameter("sname");
String course = request.getParameter("course");
String fee = request.getParameter("fee");
String t_id = request.getParameter("t_id");
if(id != null)
{
Connection con = null;
PreparedStatement ps = null;
int personID = Integer.parseInt(id);
try
{
Class.forName(driverName);
con = DriverManager.getConnection(url,user,psw);
String sql="Update users set id=?,uname=?,uemail=?,upwd=?,umobile=?,course=?,stname=?,fee=?,t_id=? where id="+id;
ps = con.prepareStatement(sql);
ps.setString(1,id);
ps.setString(2, uname);
ps.setString(3, uemail);
ps.setString(4, upwd);
ps.setString(5, umobile);
ps.setString(6, stname);
ps.setString(7, course);
ps.setString(8, fee);
ps.setString(9, t_id);
int i = ps.executeUpdate();
if(i > 0)
{
out.print("Record Updated Successfully");
}
else
{
out.print("There is a problem in updating Record.");
} 
}
catch(SQLException sql)
{
request.setAttribute("error", sql);
out.println(sql);
}
}
%>