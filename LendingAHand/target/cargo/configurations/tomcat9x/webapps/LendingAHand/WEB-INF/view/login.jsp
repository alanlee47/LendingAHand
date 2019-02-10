<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" href="/Applications/Documents/LendingAHand/src/main/webapp/resources/theme1/css/login.css">
        <link href='http://fonts.googleapis.com/css?family=Roboto:400,100,100italic,300,300italic,400italic,500,500italic,700,700italic,900italic,900' rel='stylesheet' type='text/css'>

    </head>
    <body>
        <div class="test">
        <div id='background-image'>
            <div class='main-body'>
                <div class='left-panel'></div>
                <div class='middle-panel'></div>
                <div class='right-panel'>
                    <div class='split-screen'>
                        <div class='top-panel'>
                            <div class='logo'>LOGO</div>
                        </div>
                        <div class='main-panel'>
                        <div class='title'>Our Website Name</div>
                        <div class='login-container input-group'>
                            <div class='username-label'>
                                <label>Username</label>
                            </div>
                            <div class='username'>
                                <input id="username" type="text" class='form-control' placeholder="Username"></input >
                            </div>
                            <div class='password-label'>
                                <label>Password</label>
                            </div>
                            <div class="password">
                                <input id="password" type="password" class='form-control' placeholder="Password"></input >
                            </div>
                            <div class='rememberme-label'>
                                <label>Remember me</label>
                                <input type="checkbox" class='form-control'></input >
                            </div>
                            <c:url var="itemlink" value ="hello"/>
                            <div class="submit">
                                <button type="button" class="btn btn-default" onClick="loginPage()">Submit</button>
                            </div>
                            <div class="forgot-password">
                                <a href="/LendingAHand/createAccount">Create Account</a>
                            </div>
                        </div>
                        </div>
                        <div class='bottom-panel'></div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    </body>
       <script>
            function loginPage() {
                var username = document.getElementById("username").value;
                var password = document.getElementById("password").value;
                location.href = "/LendingAHand/accounts?user="+username+"&pass="+password;
           }

       </script>
    <style>
    html{
        height: 100%;
    }
    body{
        width: auto;
        height: 100vh;
        margin: 0px;
        padding: 0px;
        font-style: roboto;
        font-family: roboto;
    }
    #background-image{
        background-image: url('background-img.jpg');
        background-size: cover;
        height: 100%;
        width: 100%;
        background-repeat: no-repeat, repeat;
        background-color: #cccccc;
    }
    .test{
        height: 100%;
        width: 100%;
    }
    .main-body{
        height: 100%;
        width: 100%;
        position: absolute;
    }

    .left-panel{
        height: 100%;
        width: 100px;
        position: relative;
        float: left;
    }

    .middle-panel{
        height: 100%;
        width: calc(100% - 665px);
        position: relative;
        float: left;
    }

    .right-panel{
        height: 100%;
        width: 565px;
        position: relative;
        float: left;
    }

    .top-panel{
        height: 100px;
    }

    .main-panel{
        height: 550px;
    }

    .bottom-panel{
        height: calc(100% - 650px);
    }

    .split-screen{
        height: 100%;
        width: 100%;
        background-color: #ffffffe6;
    }

    .logo{
        padding: 3px;
        float: right;
        width: 50px;
        height: 50px;
    }

    .title{
        align-content: center;
        text-align: center;
        width: 70%;
        height: 100px;
        left: 106px;
        top: 50px;
        position: relative;
        font-family: roboto;
        font-size: 40px;
    }

    .login-container{
        width: 50%;
        height: 400px;
        position: relative;
        bottom: 0;
        left: 132px;
        top: 75px;
    }

    .username-label{
        font-size: 25px;
        text-align: left;
        width: 100%;
        height: 30px;
        position: relative;
        padding-bottom: 20px;
    }

    .password-label{
        font-size: 25px;
        text-align: left;
        width: 100%;
        height: 30px;
        position: relative;
        padding-bottom: 20px;
    }

    .rememberme-label{
        font-size: 25px;
        text-align: left;
        width: 100%;
        height: 30px;
        position: relative;
        padding-bottom: 20px;
    }

    .rememberme{
        font-size: 20px;
        width: 100%;
        height: 30px;
        position: relative;
        padding: 5px;
    }

    .password{
        font-size: 20px;
        width: 100%;
        height: 40px;
        padding-bottom: 30px;
    }

    .username{
        font-size: 20px;
        width: 100%;
        height: 40px;
        position: relative;
        padding-bottom: 20px;
    }

    input{
        height: 100%;
        width: 100%;
        border: none;
        background-color: #eae8e8  !important;
        border-bottom: 2px solid #848484;
        border-radius: 5px;
        font-size: 20px;
        font-family: roboto;
        padding: 2px;
        padding-inline-start: 10px;
        font-style: roboto;
    }

    .submit{
        padding-bottom: 10px;
    }

    button{
        width: 90%;
        height: 40px;
        background-color: #efabab;
        border: none;
        font-size: 20px;
        font-style: roboto;
        font-family: roboto;
    }
    input[type='checkbox']
    {
        border: none;
        height: 15px;
        width: 15px;
    }
    </style>
</html>