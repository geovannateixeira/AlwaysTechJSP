<%@ page import="java.sql.*"%>
<%
Connection con=null;
Statement stm=null;
try
{
    
    String serverName = "localhost:3306"; 
    String mydatabase = "alwaystech";
  
    String username = "root";
    String password = "newpassword";
    
    String driverName = "com.mysql.jdbc.Driver";

    Class.forName(driverName);
   
    String url = "jdbc:mysql://" + serverName + "/" + mydatabase; 
    con = DriverManager.getConnection(url, username, password);
    
    stm = con.createStatement();
}
catch(SQLException ex)
{
    out.print(ex.getMessage());
}
%>
