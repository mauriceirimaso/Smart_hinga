<%-- 
    Document   : signupprocess
    Created on : Jan 24, 2024, 2:51:28?PM
    Author     : maurice
--%>

<%@ page import="java.sql.*" %>
<%@ page import="java.io.*" %>

<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.PreparedStatement" %>
<%@ page import="java.sql.ResultSet" %>
<%
     
   
    String email = request.getParameter("email");
    String password = request.getParameter("password");
    ResultSet rs = null;
    
    
    
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
        
        
         
       
         
       //  String sql = "INSERT INTO users(firstname, lastname, email, birthday, password, repassword) VALUES (?,?,?,?,?,?)";
         String sql = "SELECT * FROM users WHERE email= ? ";
         
        pstmt = conn.prepareStatement(sql);
        
        resultSet rs
        
        pstmt.setString(1, email);
       
        
       //  pstmt.executeUpdate();
         if(rs.next())
         {
             String password1=rs.getString(password);
             if(password.equals(password1))
             {
                   /*<script>
                alert('login successfully');
               
                 </script>*/
                 response.sendRedirect("home.jsp");
                 }
                else
                {
                 
                    /*<script>
                alert('ivalid username or password');
               
                   </script>*/
                 }
            }
         else{
                /*  <script>
                alert('username not found');
               
                 </script>  */
             
             }
    

        // Redirect to a success page
        
        
        
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