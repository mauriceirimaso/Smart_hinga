<%-- 
    Document   : signupprocess
    Created on : Jan 24, 2024, 2:51:28 PM
    Author     : maurice
--%>


<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
<%@ page import="java.io.*"%>

<%
     
    String firstname = request.getParameter("fname");
    String lastname = request.getParameter("lname");
    String email = request.getParameter("email");
    String birthday = request.getParameter("birthday");
    
    String password = request.getParameter("password");
    
    String repassword = request.getParameter("repassword");
    
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
        
        
         
       
         
         String sql = "INSERT INTO users(firstname, lastname, email, birthday, password, repassword) VALUES (?,?,?,?,?,?)";
         
        pstmt = conn.prepareStatement(sql);
        
        pstmt.setString(1, firstname);
        pstmt.setString(2, lastname);
        pstmt.setString(3, email);
        pstmt.setString(4, birthday);
        pstmt.setString(5, password);
        pstmt.setString(6, repassword);
        
         pstmt.executeUpdate();

        // Redirect to a success page
        response.sendRedirect("login.jsp");
        
       
        
        
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