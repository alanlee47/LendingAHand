<!DOCTYPE html>
<html>
    <head>
        <link href='http://fonts.googleapis.com/css?family=Roboto:400,100,100italic,300,300italic,400italic,500,500italic,700,700italic,900italic,900' rel='stylesheet' type='text/css'>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
        <!-- jQuery library -->
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
        <!-- Latest compiled JavaScript -->
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    </head>
    <body>
        <div class="test">
            <div class='main-body'>
                <div class='left-panel'>
                    <div class='split-panel'>
                        <div class='top-panel'>
                             <div class = 'menu-icons'>
                                <div class="btn-group pull-right">
                                    <button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                        <span class="glyphicon glyphicon-user"></span>
                                    </button>
                                    <ul class="dropdown-menu">
                                        <li role="separator" class="divider"></li>
                                        <li><a href="/LendingAHand/login">Sigh Out</a></li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                        <div class='middle-panel'>
                            <label id="greetings"></label>
                        </div>
                        <div class='bottom-panel'></div>
                    </div>
                    </div><label for="Hello"></label>
                <div class='right-panel'>
                <div id="map"></div>
                    <script>
                      var map;
                      function initMap() {
                        var latLng = {lat: 35.210796, lng: -97.441883};
                        map = new google.maps.Map(document.getElementById('map'), {
                          center: latLng,
                          zoom: 18
                        });

                      var marker = new google.maps.Marker({
                          position: latLng,
                          map: map,
                          title: 'Hello World!'
                        });
                        }
                    </script>
                </div>
            </div>
        </div>
    </body>
    <script>
        var usersName = "Lucas";
        usersName = "Hello"+ " " + usersName + ",";
        document.getElementById("greetings").innerHTML = usersName;
         function posts() {
               $.ajax
                   ({
                       type: "GET",
                       url:'/LendingAHand/test',
                       success: function(data){
                       if(data){  //if new_posts.php echo something.
                           //do task here
                           console.log(data);
                           console.log("WEEEE");
                       }else{

                           console.log("no");
                           posts();
                       }
                   },
                   error: function(){
                        post();
                       console.log("erro");
                   }
               });
           }
       posts()
    </script>
    <script
        src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCIimCp1zQLyWoIr76bSXc_bpYpULwLXLo&callback=initMap"async defer>
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
        .test{
            height: 100%;
            width: 100%;
        }
        .main-body{
            height: 100%;
            width: 100%;
            position: absolute;
            overflow: hidden;
        }

        .left-panel{
            height: 100%;
            width: 400px;
            position: relative;
            float: left;
        }

        .right-panel{
            height: 100%;
            width: calc(100% - 400px);
            position: relative;
            float: right;
        }
        #map{
            height: 100%;
            width: 100%;
            background-color: grey;
        }
        .top-panel{
            height: 80px;
        }

        .middle-panel{
            height: 550px;
        }

        .bottom-panel{
            height: calc(100% - 650px);
        }

        .greetings{

        }

    </style>
</html>