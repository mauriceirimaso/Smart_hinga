

<%@ page import="java.sql.*" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.io.*" %>

<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.PreparedStatement" %>
<%@ page import="java.sql.ResultSet" %>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="author" content="IRIMASO Maurice">
        <meta name="description" content="My Official Website of AGRICULTURE TRACTOR">
        <title>AGRICULTURE TRACTOR</title>
        <link rel="stylesheet" href="stylehinga.css">
        <style>
            
            *{
    font-family: lato;
    margin: 0;
    padding: 0;
    font-size: 16px;
}

header{
    width: 100%;
    background-color: aqua;
    padding: 35px 0;
    margin-bottom: 100px;
}

nav{
    width: 90%;
    margin: 0 auto;
    display: flex;
    justify-content: space-between;
    align-items: center;
}

ul{
    list-style: none;
    display: flex;
    gap: 20px;
}
a{
    text-decoration: none;
}

.mission {
    width: 98%;
    display: flex;
    min-height: 400px;
    margin: 0 auto;
    justify-content: space-between;
    margin: 50px 0;
}

.ad {
    width: 50%;
    display: flex;
    flex-direction: column;
    justify-content: center;
}

.img {
    width: 45%;
    background: url(./img/tracto1.jpg);
    background-size: contain;
    background-repeat: no-repeat;
}

.mainp {
    width: 70%;
    margin: 0 auto;
    text-align: center;
    font-size: 28px;
    font-weight: 700;
    line-height: 28px;
    padding: 50px 0;
}

.btn {
    color: white;
    background-color: brown;
    padding: 10px 40px;
    border: none;
    border-radius: 8px;
    margin: 40px auto;
}

.btn a{
    font-size: 30px;
    font-weight: bold;
}

li img {
    width: 24px;
}

.Copyright {
    width: 90%;
    margin: 0 auto;
    display: flex;
    justify-content: space-between;
}

.Copy {
    display: flex;
    justify-content: center;
}

.social {
    font-size: 20px;
    font-weight: 700;
}

.contacts{
    width: 98%;
    display: flex;
    justify-content: space-around;
    padding-bottom: 25px;
}

.link1{
    background-color: blue;
    border-radius: 5px;
    padding: 9px 24px;
    color:white;
}

.p1 {
    font-size: 36px;
    align-items: center;
    text-align: center;
    padding: 50px;
}

.map{
    width: 30%;
    border-radius: 16px;
}

.address{
    width: 25%;
}

.me{
    width: 25%;
    background-color: aliceblue;
    border-radius: 16px;
    padding: 25px;
}

.p2 {
    padding-top: 50px;
    padding-bottom: 20px;
}
.hcontact li{
    display: flex;
    align-items: center;
    gap: 5px;
    line-height: 40px;
}

.hcontact li a {
    font-size: 20px;
}

.hcontact{
    display:list-item;
}

.p3{
    padding-top: 50px;
    padding-bottom: 20px;
}

.me p {
    font-size: 20px; 
}

.me strong {
    font-weight: bold; 
}


.button{
    background-color: rgb(243, 238, 238);
    border-radius: 5px;
    padding: 3px 8px;
}

.Th1{
    font-size: 36px;
    text-align: center;
    padding: 50px;
}

.product1 {
    width: 100%;
    display:flex;
    flex-direction: column;
    justify-content: space-around;
    text-align: center;
    padding: 10px;
    border-radius: 15px;
}

li {
    line-height: 0%;
}

.p1list1{
    display: flex;
    flex-direction: column;
}

.products{
    display: flex;
    padding-bottom: 50px;
}

.pimg {
   width: 300px;
   height: 300px;
}

.cimg {
    width: 45%;
    background: url(./img/tracto1.jpg);
    background-size: contain;
    background-repeat: no-repeat;
}

.btn a{
    color: white;
}

.ourm {
    font-size: 36px;
    font-style: italic;
    padding: 35px;
    text-align: center;

}


.booking-container {
    max-width: 400px;
    margin: 0 auto;
    background-color: #fff;
    padding: 20px;
    border-radius: 5px;
    box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
}

label {
    font-weight: bold;
    display: block;
    margin-top: 10px;
}

input[type="text"],
input[type="email"],
input[type="date"],
input[type="number"] {
    width: 100%;
    padding: 10px;
    margin-top: 5px;
    margin-bottom: 10px;
    border: 1px solid #ccc;
    border-radius: 3px;
}

button {
    background-color: #3498db;
    color: #fff;
    padding: 10px 20px;
    border: none;
    border-radius: 3px;
    cursor: pointer;
}

button:hover {
    background-color: #2980b9;
}

.container {
    max-width: 800px;
    margin: 0 auto;
    padding: 20px;
}

header {
    text-align: center;
}

header img {
    max-width: 100px;
    height: auto;
}

.signup-form {
    background-color: #fff;
    padding: 20px;
    margin-top: 20px;
    border-radius: 8px;
    box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
}

.form-group {
    margin-bottom: 20px;
}

label {
    display: block;
    margin-bottom: 8px;
    font-weight: bold;
}

input {
    width: 100%;
    padding: 10px;
    border: 1px solid #ccc;
    border-radius: 4px;
}

button {
    background-color: #4caf50;
    color: #fff;
    padding: 10px 20px;
    border: none;
    border-radius: 4px;
    cursor: pointer;
}

button:hover {
    background-color: #45a049;
}

.confirmation-container {
    display: none;
    position: fixed;
    top: 0;
    left: 0;
    width: 100%;
    height: 100%;
    background-color: rgba(0, 0, 0, 0.8);
    justify-content: center;
    align-items: center;
    z-index: 999;
}

.login-form {
    background-color: #fff;
    padding: 20px;
    margin-top: 20px;
    border-radius: 8px;
    box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
}

.login-form h2 {
    text-align: center;
    color: #333;
}

.login-form form {
    margin-top: 20px;
}

.login-form .form-group {
    margin-bottom: 20px;
}

.login-form label {
    display: block;
    margin-bottom: 8px;
    font-weight: bold;
}

.login-form input {
    width: 100%;
    padding: 10px;
    border: 1px solid #ccc;
    border-radius: 4px;
}

.login-form button {
    background-color: #4caf50;
    color: #fff;
    padding: 10px 20px;
    border: none;
    border-radius: 4px;
    cursor: pointer;
    width: 100%;
}

.login-form button:hover {
    background-color: #45a049;
}



footer {
    width: 100%;
    background-color: aqua;
    padding: 25px 0;
    margin-top: 100px;
}

footer a {
    text-decoration: none;
    color: #333;
}

footer a:hover {
    text-decoration: underline;
}
/* @media screen and (max-width:450px) {
    .mission{
        display: flex;
        flex-direction: column;
        width: 250px;
        align-self: ;

    }
    
} */
        </style>
    <head>
    
    <script>
        function showAlert(message) {
            alert(message);
        }
    </script>
    
</head>
    </head>
    <body>
        <header>
            <nav>
                <h1>HINGA TRACTORS</h1>
                <ul>
                    <li><a href="home.jsp">Home</a></li>
                    <li><a href="tractors.jsp">Tractors</a></li>
                    <li><a href="about.jsp">About</a></li>
                    <li><a href="contactus.jsp ">Contact</a></li>
                    <li><a href="signup.jsp">Sign Up</a></li>
                    <li><a href="#">Sign In</a></li>
                </ul>
            </nav>
        </header>
        <div class="container">
            <section class="form-section">

                <div class="login-form">
                    <h2>Login</h2>
                    
                   <form method="post" action="processlogin1.jsp">
                       
    <!-- Your form fields -->
    <div class="form-group">
        <label for="login-email">Email</label>
        <input type="email" id="login-email" name="login-email" required>
    </div>

    <div class="form-group">
        <label for="login-password">Password</label>
        <input type="password" id="login-password" name="login-password" required>
    </div>

   
    
    <a href="home.jsp" class="link1">LOGIN</a>
    <br>
    <br>
    <p>dont have account? </p>
    <br>
     <a href="signup.jsp" class="link1">SIGN UP</a>
    
</form>
                </div>
            </section>
        </div>

    <footer>
        <div class="Copyright">
            <p class="social">Get connected with us on social networks:</p>
            <ul>
                <li><a href="https://twitter.com/home?lang=en" target="_blank"><img src="./img/twitter.png" alt="twitter"></a></li>
                <li><a href="https://www.facebook.com/" target="_blank"><img src="./img/facebook.png" alt="facebook"></a></li>
                <li><a href="https://www.instagram.com/" target="_blank"><img src="./img/instagram.png" alt="instagram"></a></li>
                <li><a href="https://www.linkedin.com/feed/" target="_blank"><img src="./img/linkedin.png" alt="linkedin"></a></li>
            </ul>
        </div>
        <div class="Copy">
            <p>Copyright &copy;2023 HINGA TRACTORS</p>
        </div>
    </footer>
    </body>
</html>