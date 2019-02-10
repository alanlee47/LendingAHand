<!DOCTYPE html>
<html>
<head>
      <link href='http://fonts.googleapis.com/css?family=Roboto:400,100,100italic,300,300italic,400italic,500,500italic,700,700italic,900italic,900' rel='stylesheet' type='text/css'>
</head>
    <body>
        <div class = 'main-body'>
            <div class = 'left-panel'></div>
            <div class = 'middle-panel'>
                <div class = 'top-panel'>
                </div>
                <div class = 'main-panel'>
                    <div class = 'title'>
                        Register
                    </div>
                    <div class='login-container'>
                            <div class = 'username-label'>
                                <label>Enter Username</label>
                            </div>
                            <div class='username'>
                                <input id='username' type="text" class='form-control' placeholder="Username" required></input >
                            </div>
                            <div class='password-label'>
                                <label>Enter Password</label>
                            </div>
                            <div class="password">
                                <input id = 'password' type="password" class='form-control' placeholder="Password" required></input >
                             </div>
                             <div class='firstname-label'>
                                <label>Enter First Name</label>
                            </div>
                            <div class="firstname">
                                <input id = 'firstname' type="text" class='form-control' placeholder="First Name" required></input >
                             </div>
                             <div class='lastname-label'>
                                    <label>Enter Last Name</label>
                            </div>
                            <div class="lastname">
                                <input id = 'lastname' type="text" class='form-control' placeholder="Last Name" required></input >
                             </div>
                             <div class='phone-label'>
                                <label>Enter Phone Number</label>
                            </div>
                            <div class="phone">
                                <input id = 'phone' type="text" class='form-control' placeholder="Phone Number" required></input >
                             </div>
                             <div class='address-label'>
                                    <label>Enter Address</label>
                            </div>
                            <div class="address">
                                <input id = 'address' type="text" class='form-control' placeholder="Address" required></input >
                            </div>
                            <div class="submit">
                                <button type="button" class="btn btn-default" onclick="loginPage()" >Submit</button>
                        </div>
                </div>
            </div>
            <div class = 'right-panel'></div>
        </div>

    </body>
    <script>
    function loginPage() {
                    var username = document.getElementById("username").value;
                    var password = document.getElementById("password").value;
                    location.href = "/LendingAHand/login";
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

    .main-body{
        height: 100%;
        width: 100%;
        position: absolute;
    }

    .left-panel{
        height: 100%;
        width: 15%;
        position: relative;
        float: left;
    }

    .top-panel{
        height: 80px;
    }

    .title{
        font-family: roboto;
        font-size: 40px;
        font-weight: bold;
    }

    .label:before{
        content:"*" ;
        color:red
        }

    .login-container{
        width: 50%;
        height: 400px;
        position: relative;
        bottom: 0;
        left: 50px;
        top: 50px;
    }


    .username-label{
        font-size: 30px;
        text-align: left;
        width: 100%;
        height: 30px;
        position: relative;
        padding-bottom: 10px;
    }

    .password-label{
        font-size: 30px;
        text-align: left;
        width: 100%;
        height: 30px;
        position: relative;
        padding-bottom: 10px;
    }

    .firstname-label{
        font-size: 30px;
        text-align: left;
        width: 100%;
        height: 30px;
        position: relative;
        padding-bottom: 10px;
    }

    .lastname-label{
        font-size: 30px;
        text-align: left;
        width: 100%;
        height: 30px;
        position: relative;
        padding-bottom: 10px;
    }

    .phone-label{
        font-size: 30px;
        text-align: left;
        width: 100%;
        height: 30px;
        position: relative;
        padding-bottom: 10px;
    }

    .address-label{
        font-size: 30px;
        text-align: left;
        width: 100%;
        height: 30px;
        position: relative;
        padding-bottom: 10px;
    }

    .password{
        font-size: 20px;
        width: 100%;
        height: 40px;
        position: relative;
        padding-bottom: 20px;
    }

    .username{
        font-size: 20px;
        width: 100%;
        height: 40px;
        position: relative;
        padding-bottom: 20px;
    }

    .firstname{
        font-size: 20px;
        width: 100%;
        height: 40px;
        position: relative;
        padding-bottom: 20px;
    }

    .lastname{
        font-size: 20px;
        width: 100%;
        height: 40px;
        position: relative;
        padding-bottom: 20px;
    }

    .phone{
        font-size: 20px;
        width: 100%;
        height: 40px;
        position: relative;
        padding-bottom: 20px;
    }

    .address{
        font-size: 20px;
        width: 100%;
        height: 40px;
        position: relative;
        padding-bottom: 20px;
    }

    input{
        height: 100%;
        width: 300px;
        font-size: 24px;
        font-family: roboto;
        padding-inline-start: 5px;
        font-style: roboto;
        border-width: 0px 0px 2px 0px;
        border-color: #3e5882;
    }

    button{
        align-content: center;
        width: 200px;
        height: 40px;
        background-color: #3e5882;
        border: none;
        border-radius: 3px;
        font-size: 20px;
        font-style: roboto;
        font-family: roboto;
    }
    </style>
</html>