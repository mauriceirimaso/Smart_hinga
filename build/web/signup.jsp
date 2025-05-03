
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="author" content="ABAYIZERA Samuel">
        <meta name="description" content="My Official Website of AGRICULTURE TRACTOR">
        <title>AGRICULTURE TRACTOR</title>
        <link rel="stylesheet" href="stylehinga.css">
        <style>
            *{
    font-family: lato;
    margin: 0;
    padding: 0;
    font-size: 14px;
}

header{
    width: 100%;
    background-color: aqua;
    padding: 35px 0;
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
    gap: 15px;
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
    margin-bottom: 50px;
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
    line-height: 28px;
}

.btn {
    color: white;
    background-color: brown;
    padding: 10px 25px;
    border: none;
    border-radius: 8px;
    margin: 24px auto;
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
    font-weight: 700;
}

.contacts{
    width: 98%;
    display: flex;
    justify-content: space-around;
    padding-bottom: 25px;
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
.hcontact{
    display:list-item;
}

.p3{
    padding-top: 50px;
    padding-bottom: 20px;
}

.button{
    background-color: rgb(243, 238, 238);
    border-radius: 5px;
    padding: 3px 8px;
}
.link1{
    background-color: blue;
    border-radius: 5px;
    padding: 9px 24px;
    color:white;
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
input[type="password"],
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

footer {
    width: 100%;
    background-color: aqua;
    padding: 25px 0;
}
        </style>
    </head>
    <body>
        <header>
            <nav>
                <h1>HINGA TRACTORS</h1>
                <ul>
                    <li><a href="home.jsp>Home</a></li>
                    <li><a href="tractors.jsp">Tractors</a></li>
                    <li><a href="about.jsp">About</a></li>
                    <li><a href="contactus.jsp">Contact</a></li>
                    <li><a href="signup.jsp">sign up</a></li>
                </ul>
            </nav>
        </header>
    <div class="booking-container">
        <h2>register now</h2>
        
        <form id="booking-form"  action="signupprocess.jsp" method="POST">
            
            <label for="fname">first Name:</label>
            <input type="text" id="name" name="fname" required>
            
            <label for="fname">last Name:</label>
            <input type="text" id="name" name="lname" required>
            
            <label for="email">email</label>
            <input type="email" id="email" name="email" required>
            
            
            
            <label for="purchase"> date of birth</label>
            <input type="date" id="purchase" name="birthday" required>
            
            <label for="carName">password</label>
            <input type="password" id="carName" name="password" required>
            
            <label for="num-cars">repassword</label>
            <input type="password" id="num-cars" name="repassword" required>
            
            <button type="submit">register</button>
            <p> already have account</p>
            <br><br>
        </form>
        <a href="login.jsp" class="link1">login</a>
    </div>
    
    <script src="script.js"></script>
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