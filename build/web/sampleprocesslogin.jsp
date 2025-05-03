<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.sql.*" %>
<%@ page import="java.security.MessageDigest" %>
<%@ page import="java.security.NoSuchAlgorithmException" %>
<%@ page import="java.util.Base64" %>

<%
    // Get user input from the login form
    String username = request.getParameter("username");
    String password = request.getParameter("password");

    // Database connection parameters
    String jdbcUrl = "jdbc:mysql://localhost:3306/smarthinga";
    String dbUser = "your_db_username";
    String dbPassword = "your_db_password";

    try {
        // Load the JDBC driver
        Class.forName("com.mysql.cj.jdbc.Driver");

        // Establish a database connection
        Connection connection = DriverManager.getConnection(jdbcUrl, dbUser, dbPassword);

        // Hash the password using SHA-256
        String hashedPassword = hashPassword(password);

        // Prepare a SQL query to check the user's credentials
        String sql = "SELECT * FROM users WHERE username=? AND password=?";
        PreparedStatement preparedStatement = connection.prepareStatement(sql);
        preparedStatement.setString(1, username);
        preparedStatement.setString(2, hashedPassword);

        // Execute the query
        ResultSet resultSet = preparedStatement.executeQuery();

        // Check if the user exists
        if (resultSet.next()) {
            // User exists, redirect to a success page
            response.sendRedirect("success.jsp");
        } else {
            // User doesn't exist or invalid credentials, redirect to a failure page
            response.sendRedirect("failure.jsp");
        }

        // Close resources
        resultSet.close();
        preparedStatement.close();
        connection.close();
    } catch (ClassNotFoundException | SQLException e) {
        e.printStackTrace();
        // Handle exceptions (e.g., redirect to an error page)
    }
%>

<%
    // Helper method to hash the password using SHA-256
    String hashPassword(String password) throws NoSuchAlgorithmException {
        MessageDigest md = MessageDigest.getInstance("SHA-256");
        byte[] hashedBytes = md.digest(password.getBytes());
        return Base64.getEncoder().encodeToString(hashedBytes);
    }
%>
