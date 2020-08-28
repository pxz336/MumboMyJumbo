<?php 
session_start();

    //Block for testing $_SESSION values
    echo "Session ID  = " . session_id();

    if ($test = isset($_SESSION['userName'])) {//
        echo " " . $_SESSION['userName'] . " ";//
        echo $_SESSION['firstName'] . " ";//Test code
        echo $_SESSION['lastName'] . " ";//
        
        echo " There is a man who is logged in and his name is " .
            $_SESSION ['firstName'];//
        
        //Actual code to keep
        echo "<input type = 'hidden' id = 'loginBoolean' name = 'loginBoolean' value = 'true'>";
        
        echo "<input type = 'hidden' id = 'userNameSession' name = 'userNameSession'
                  value = '" . $_SESSION['userName'] . "'>
              <input type = 'hidden' id = 'firstNameSession' name = 'firstNameSession'
                  value = '" . $_SESSION['firstName'] . "'>
              <input type = 'hidden' id = 'lastNameSession' name = 'lastNameSession'
                  value = '" . $_SESSION['lastName'] . "'>";
    } else { 
        $conv_test = $test ? "true" : "false";
        echo " There is no man that is logged in and the session is set is " . 
            $conv_test;
    }                
?>

<!DOCTYPE html>
<html lang = "en">
    <head>
        <meta charset="utf-8">
        <meta name = "viewport" content="width = device-width, initial-scale=1, shrink-to-fit=no">

        <!--Link for BoostrapCSS-->            
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">

        <!-- Custom CSS-->
        <link rel = "stylesheet" type = text/css href = "../static/css/mumboformatting.css?ts=<?=time()?>"/>

        <!--TFOD Script-->
        
        <!--If you're logged in, hides some buttons-->
        <script src = "../static/js/loginButtonsHomepage.js"></script>
        <!--For async-->
        <script src = "../static/js/homepageFetch.js"></script>

        <!--Boostrap Scripts-->
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

        <!--If you're logged in, hides some buttons-->
        <script> 
            $(document).ready(function(){
                alterLoginButtons();
                artAsync();
            });
        </script>
        
        <!--Used for AJAX 
        <script type = "text/javascript" src = "../static/js/ajax.js"></script>
        -->
        <title>
            Mumbo My Jumbo Homepage
        </title>
    </head>

    <body id = "main-body">
        <div class = "container-fluid" id = "navbar-div" name = "navbar-div">            
            <nav class="navbar navbar-expand-xl" id = "main-nav-bar"> 
                
                <button class="navbar-toggler" type="button" data-toggle="collapse"
                        data-target="#navbarTogglerDemo03" aria-controls="navbarTogglerDemo03"
                        aria-expanded="false" aria-label="Toggle navigation">
                        <span class="navbar-toggler-icon"></span>
                </button>
                
                <a href = "homepage.php" id = "mumboLogo"><img id = "logo" 
                    src = "../static/img/Cropped/logomumbo250x%20crop.bmp" alt = "Mumbo Logo"></a>
                
                <div class="collapse navbar-collapse" id="navbarTogglerDemo03">
                    <ul class="navbar-nav mr-auto">
                        <li class="nav-item active">
                            <a class="nav-link" href="homepage.php">Home<span class="sr-only">(current)</span></a></li>
                        <li class="nav-item">
                             <a class="nav-link" href="#" id = "tfos-page">TFOD</a></li>
                        <li class="nav-item">
                             <a class="nav-link" href="#" id = "politics-page">Politics</a></li>
                        <li class="nav-item">
                             <a class="nav-link" href="#" id = "sports-page">Sports</a></li>
                        <li class="nav-item">
                             <a class="nav-link" href="#" id = "tech-page">Technology</a></li>    
                        <li class="nav-item">
                             <a class="nav-link" href="#" id = "world-page">World</a></li>
                        <li class="nav-item">
                         <a class="nav-link" href="#" id = "life-page">Lifestyle</a></li>
                        
                        <form class="form-inline">
                            <input class="form-control mr-sm-2" type="search" placeholder=
                                "Search the Trash Heap" aria-label="Search">
                            <button class="btn btn-outline-success my-2 my-sm-0" type="submit">
                                Rummage </button>
                        </form>
                    </ul>
                    
                    <ul class="navbar-nav mr-right">
                        <form class = "form-inline" action = "userSignupForm.html" 
                          id = "signup-form" >
                            <button class = "btn btn-outline-success my-2 my-sm-0" 
                                type = "submit" id = "signup-button">
                                Signup</button>
                        </form>

                        <form class = "form-inline" action = "loginForm.html" 
                              id = "login-form" >
                            <button class = "btn btn-outline-success my-2 my-sm-0" 
                                    type = "submit" id = "login-button">
                                Login</button>
                        </form>                       

                        <form class = "form-inline" action = "newArticleForm.php"
                              id = "new-post-form">
                            <button class = "btn btn-outline-success my-2 my-sm-0"
                                    type = "submit" id = "new-post-button">
                            Make Post</button>                       
                        </form>

                        <form class = "form-inline" action = "logout.php" 
                              id = "logout-form" >
                            <button class = "btn btn-outline-success my-2 my-sm-0" 
                                    type = "submit" id = "logout-button">
                                Log out</button>
                        </form>
                    </ul>
                </div>
                
                <div id = "userNameHome" name  = "userNameHome">This is garbage</div>
                
                <a href = "homepage.php" id = "mumboSocial"><img id = "social" 
                            src = "../static/img/Cropped/mumboSocial%20crop.bmp" alt = "Mumbo Social"></a>
            </nav>            
        </div>
        
        <div class = "container-xl" id = "article-div" name = "article-div">            
            <div class="container-xl" id = "threeGroup">
                <div class="row">
                    <div class="col-lg" id = "colTFOD">
                        <!--Will need to figure out how to center on larger displays-->
                      <h1 id = "tfod">Trash Fire Of The Day</h1>
                    </div>
                    
                    <div class="col-sm" id = "colLeft">
                      2 of 3
                    </div>
                    
                    <div class="col-sm" id = "colRight">
                      3 of 3
                    </div>                    
                </div>  
            </div>
            
            <div class="container-xl" id = "fourGroup">
                <div class="row" id = "fourGroupRow"></div>
            </div>
        </div>        


        <!--Boostrap CDN Links-->
        <!--JQuery-->
        <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
        <!--Popper.js-->
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
        <!--Boostrap JS-->
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js" integrity="sha384-OgVRvuATP1z7JjHLkuOU7Xw704+h835Lr+6QL9UvYjZE3Ipu6Tp75j7Bh/kR0JKI" crossorigin="anonymous"></script>              
    </body>        
</html>