<%-- 
    Document   : signupprocess
    Created on : Jan 24, 2024, 2:51:28 PM
    Author     : maurice
--%>


<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
<%@ page import="java.io.*"%>

<%
     
    String name = request.getParameter("name");
    String email = request.getParameter("email");
    String purchase = request.getParameter("purchase");
    String carname = request.getParameter("carname");
    String numcar = request.getParameter("numcars");
    
    
    
    
     Connection conn = null;
    PreparedStatement pstmt = null;
    
   try {
        // Load the JDBC driver
        Class.forName("com.mysql.cj.jdbc.Driver");

        // Establish a connection
        String jdbcUrl = "jdbc:mysql://localhost:3306/smarthinga";
        String dbUser = "root";
        String dbPassword = "";
        
        conn = DriverManager.getConnection(jdbcUrl, dbUser, dbPassword);
       
           
         String sql = "INSERT INTO bookingtable(name, email, purchase, carname, numcars) VALUES (?,?,?,?,?)";
         
        pstmt = conn.prepareStatement(sql);
        
        pstmt.setString(1, name);
        pstmt.setString(2, email);
        pstmt.setString(3, purchase);
        pstmt.setString(4, carname);
        pstmt.setString(5, numcar);
       
        
         pstmt.executeUpdate();

        // Redirect to a success page
        response.sendRedirect("tractors.jsp");
        
       
        
        
    } catch (ClassNotFoundException | SQLException e) {
        // Handle exceptions
        e.printStackTrace();
        out.println("Error: " + e.getMessage());
    } finally {
        // Close resources
        try { if (pstmt != null) pstmt.close(); } catch (SQLException e) { }
        try { if (conn != null) conn.close(); } catch (SQLException e) { }
    }
%>