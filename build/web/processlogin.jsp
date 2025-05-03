<%@ page import="java.sql.*" %>
<%@ page import="java.io.*" %>

<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.PreparedStatement" %>
<%@ page import="java.sql.ResultSet" %>

<%
    String email = request.getParameter("login-email");
    String password = request.getParameter("login-password");

    Connection conn = null;
    PreparedStatement pstmt = null;
    ResultSet rs = null;

    try {
        // Load the JDBC driver
        Class.forName("com.mysql.cj.jdbc.Driver");

        // Establish a connection
        String jdbcUrl = "jdbc:mysql://localhost:3306/smarthinga";
        String dbUser = "root";
        String dbPassword = "";
        conn = DriverManager.getConnection(jdbcUrl, dbUser, dbPassword);

        // Prepare the SQL statement
        String sql = "SELECT * FROM users WHERE username = ? AND password = ?";
        pstmt = conn.prepareStatement(sql);
        pstmt.setString(1, email);
        pstmt.setString(2, password);

        // Execute the statement
        rs = pstmt.executeQuery();

        if (rs.next()) {
            // Authentication successful
%>
            <script>
                alert('Login successful.');
                window.location.href = 'home.jsp';
            </script>
<%
        } else {
            // Authentication failed
%>
            <script>
                alert('Invalid credentials. Please try again.');
                window.location.href = 'login.jsp';
            </script>
<%
        }

    } catch (ClassNotFoundException | SQLException e) {
        // Handle exceptions
        e.printStackTrace();
%>
        <script>
            alert('Error: <%= e.getMessage() %>');
            window.location.href = 'login.jsp';
        </script>
<%
    } finally {
        // Close resources
        try { if (rs != null) rs.close(); } catch (SQLException e) { }
        try { if (pstmt != null) pstmt.close(); } catch (SQLException e) { }
        try { if (conn != null) conn.close(); } catch (SQLException e) { }
    }
%>
