<?php
session_start();
include "dbConnect.php";

if (isset($_SESSION['userName'])) {
    echo "<input type = 'hidden' id = 'userNameSession' name = 'userNameSession'
              value = '" . $_SESSION['userName'] . "'>";
}

if (isset($_GET['artID'])) {
    $article = $_GET['artID'];
    echo "<input type = 'hidden' id = 'artID' name = 'artID' value = '" . $article . "'>";
    dbConnect();
    $clean_art_id = mysqli_real_escape_string($connect, $article);
    
    $get_art_sql = "select * from post where post_id = '" . $clean_art_id . "'";
    $get_art_res = mysqli_query($connect, $get_art_sql)
        or die (mysqli_error($connect) . "Error getting article");
    
    //if ($get_art_res.)
    
    $get_art_data = mysqli_fetch_array($get_art_res, MYSQLI_ASSOC);
    
    echo "<input type = 'hidden' id = 'artTitle' name = 'artTitle' value = '"
        . $get_art_data['post_title'] . "'>
        <input type = 'hidden' id = 'artText' name = 'artText' value = '"
        . $get_art_data['post_text'] . "'>
        <input type = 'hidden' id = 'artDate' name = 'artDate' value = '"
        . $get_art_data['post_date'] . "'>
        <input type = 'hidden' id = 'artViews' name = 'artViews' value = '"
        . $get_art_data['num_views'] . "'>
        <input type = 'hidden' id = 'artLikes' name = 'artLikes' value = '"
        . $get_art_data['num_likes'] . "'>
        <input type = 'hidden' id = 'artDislikes' name = 'artDislikes' value = '"
        . $get_art_data['num_dislikes'] . "'>";   
    
} else {
    header("Location: homepage.php"); 
}

?>

<!DOCTYPE html>
<html>
    <head>        
        <meta charset="utf-8">
        <meta name = "viewport" content="width = device-width, initial-scale=1, shrink-to-fit=no">

        <!--Link for BoostrapCSS-->            
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">

        <!-- Custom CSS-->
        <link rel = "stylesheet" type = text/css href = "../static/css/mumboformatting.css">

        <!--If you're logged in, hides some buttons-->
        <script src = "../static/js/loginButtonsHomepage.js"></script>

        <!--Boostrap Scripts-->
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

        
        <script> 
            $(document).ready(function(){
                alterLoginButtons(); 
                
                //$("#art-photo").src = $("#");//oop
                $("#art-title").text($("#artTitle").val());
                $("#art-text").text($("#artText").val());
                
                //$("#stats").text(("#artTitle").text());
                
                
                //If you're logged in, hides some buttons
                //alterLoginButtons();                                
            });
        </script>        
        
        
        <title><?php $get_art_data['post_title']?></title>
    </head>
    
    <body>
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
        
        
        
        
        
        
        <div class = "container-fluid" id = "art-content" name = "art-content">
            <img src = "" id = "art-photo">
            <h1 id = "art-title">Title</h1>
            <div id = "stats">Stats</div>
            <div id = "art-text">Text</div>        
        </div>        
        
    </body>
</html>