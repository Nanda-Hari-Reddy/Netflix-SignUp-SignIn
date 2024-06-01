<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style>
		*{
    padding: 0;
    margin: 0;
    box-sizing: border-box;
}
body{
    width: 100%;
    height: 100%;
    color: white;
    background: black;
    font-family: 'Helvetica Neue',Helvetica,Arial,sans-serif;
}
.container::before{
    content: "";
    background: url(/images/s1.jpg) no-repeat center center/cover;
    position: absolute;
    height: 100%;
    width: 100%;
    opacity: 0.3;
    z-index: -1;
}
.container .navbar{
    height: 100px;
    display: flex;
}
.container .navbar .left{
    height: 100%;
    display: flex;
    float: left;
}
.container .navbar .left img{
    height: 100px;
    position: absolute;
    left: 35px;
}
.container .navbar .right{
    display: flex;
    height: 100px;
    float: right;
    position: absolute;
    right: 50px;
}
.container .navbar .right .language{
    margin: auto;
    align-items: center;
    justify-content: center;
    font-size: 18px;
    padding: 7px 10px;
    color: white;
    background: none;
    cursor: pointer;
    margin-right: 15px;
}
.container .navbar .right .language option{
    background-color: grey;
}
.container .navbar .right button{
    margin: auto;
    align-items: center;
    justify-content: center;
    font-size: 18px;
    font-weight: 400;
    padding: 7px 17px;
    background: #e50914;
    cursor: pointer;
    outline: none;
    border-radius: 4px;
    border: none;
}
.container .navbar .right button a{
    text-decoration: none;
    color: white;
}
.container .title{
    padding: 70px 45px;
}
.container .title .content{
    width: 950px;
    margin: auto;
    padding: 75px 0;
    text-align: center;
}
.container .title .content h1{
    width: 650px;
    margin: auto;
    font-size: 3.1rem;
    text-align: center;
}
.container .title .content h2{
    width: 650px;
    margin: auto;
    font-size: 1.6rem;
    text-align: center;
}
.container .title .content form h3{
    font-size: 1rem;
    margin: 18px 0;
    text-align: center;
}
.container .title .content form .email{
    width: 1000px;
    margin: auto;
}
.container .title .content form .email input{
    height: 60px;
    width: 450px;
    margin: auto;
    padding: 20px;
    font-size: 20px;
    outline: none;
}
.container .title .content form .email button{
    margin: auto;
    height: 60px;
    width: 180px;
    align-items: center;
    justify-content: center;
    font-size: 20px;
    padding: 7px 17px;
    background: #e50914;
    cursor: pointer;
    outline: none;
    border-top-right-radius: 2px;
    border-bottom-right-radius: 2px;
    border: none;
    margin-left: -5px;
}
.container .title .content form .email button:hover{
    background-color: #f40612;
}
.container .title .content form .email button a{
    text-decoration: none;
    color: white;
}
</style>
</head>
<body>
		<div class="container">
        <nav class="navbar">
            <div class="left">
                <img src="/images/s1.jpg" alt="not found">
            </div>
            <div class="right">
                <select name="language" class="language">
                    <option value="English">English</option>
                    <option value="Hindi">Hindi</option>
                </select>
                <button><a href="SignIn.jsp">Sign In</a></button>
            </div>
        </nav>

        <div class="title">
            <div class="content">
                <h1>Unlimited movies, TV shows and more.</h1>
                <h2>Watch anywhere. Cancel anytime.</h2>
                <form action="regesterEmail">
                    <h3>Ready to watch? Enter your email to create or restart your membership.</h3>
                    <div class="email">
                        <input type="email" name="email" placeholder="Email address">
                        <button>Get Started></a></button>
                    </div>
                </form>
            </div>
        </div>
    </div>
</body>
</html>