<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style>
		*{
    margin: 0;
    padding: 0;
    font-family: sans-serif;
}

body{
    background: rgba(0, 0, 0, 0.5) url('s1.jpg')
}

.logo img{
    width: 12%;
    margin-left: 30px;
}

.container{
    position: absolute;
    margin-left: 36%;
    margin-top: 1%;
    width: 440px;
    height: 590px;
    background-color: #000;
    font-family: fantasy;
}

.container h1{
    color: #fff;
    margin-top: 60px;
    margin-left: 50px;
}

input{
    margin-left: 50px;
    margin-top: 20px;
    width: 320px;
    height: 47px;
    background-color:white;
    border-radius: 3px;
    border: none;
    font-size: 20px;
    color: black;
}

input::placeholder{
    font-size: 17px;
    margin-left: 15px;
    padding: 12px;background-color: white;
}

input[type=submit]{ 
    width: 320px;
    height: 45px;
    background-color: red;
    color: #fff;
    border-radius: 3px;
    cursor: pointer;
    margin-top: 40px; 
   
}

input[type=checkbox]{
    width: 25px;
    height: 18px;
    border-radius: 5px;
}

label{
    color: rgb(125, 119, 119);
}

.form a{
    float: right;
    margin-top: 24px;
    margin-right: 64px;
    color: rgb(125, 119, 119);
    text-decoration: none;
}

.content{
    position: absolute;
    margin-top: 80px;
    font-size: 9px;
    margin-left: 55px;
}

.content h2{
    color: rgb(125, 119, 119);
}

.container a{
    color: #fff;
    text-decoration: none;
}
</style>
</head>
<body>
		<div class="logo">
        <img src="s2.png" alt="">
    </div>

    <div class="container">
        <h1>Sign In</h1>
        <div class="form">
            <form action="validateuser">
            <input type="email" id="email" placeholder="Email or phone number" name="email">
            <input type="password" id="pass"placeholder="Password" name="password">
            <input type="submit" value="signin">
            <h3>${msg}</h3>
            <input type="checkbox">
            <label>Remember me</label>
            <a href="#">Need help?</a>
        </form>
        </div>
        <div class="content">
            <h2>New to Netflix? <a href="#">Sign up now.</a> </h2> <br>
            <h2>This page is protected by Google reCAPTCHA to ensure you're not a bot. Learn more.</h2>
        </div>
    </div>
</body>
</html>