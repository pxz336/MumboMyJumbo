<?php
session_start();

//If no user logged in
if (!isset($_SESSION['userName'])){
    header("Location: loginForm.html");
}

//type = 'hidden'
if (isset($_SESSION['title'])) {//Saves title if error w/ photo upload
    echo "<input type = 'hidden' id = 'savedTitle' name = 'savedTitle'
        value = '" . $_SESSION['title'] . "'>";
}

if (isset($_SESSION['article'])) { //Saves article if error w/ photo upload
    echo "<input type = 'hidden' id = 'savedArticle' name = 'savedArticle'
                  value = '" . $_SESSION['article'] . "'>";
}

if (isset($_SESSION['imgErr'])) { //Displays photo error msg if there is one
    echo "<input type = 'hidden' id = 'imgErrMsg' name = 'imgErrMsg'
                  value = '" . $_SESSION['imgErr'] . "'>";
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
        
        <!--Boostrap Scripts-->
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
        
        
        
        <!--If error posting, replaces inputs and gives error message-->
        <script>
            $(document).ready(function(){                
                if ($("#savedTitle")) {
                    $("#artTitle").val($("#savedTitle").val());
                }
                
                if ($("#savedArticle")) {
                    $("#artText").val($("#savedArticle").val());
                }       
                                  
                if ($("#imgErrMsg")) {
                    $("#errMsg").show();
                    $("#errMsg").html($("#imgErrMsg").val());
                } else {
                    $("#errMsg").hide();
                }                
            });        
        </script>
        
        
        <title>Make a new Mumbo post!</title>
        
    </head>
    
    <body>
        <div class = "container-fluid">
            <a href = "homepage.php" id = "mumbologo"><img id = "logo" src = "../static/img/Cropped/logomumbo250x%20crop.bmp" alt = "Mumbo Logo"></a>
            <h1>Add To Our Trash Fire!</h1>
            <form method="post" action="imgUpload.php" enctype="multipart/form-data">
                <div>
                    <label for = "artTitle">Article Title: </label>
                    <br>
                    <input type="text" id = "artTitle" name = "artTitle" 
                           size = "40" maxlength="65" placeholder = 
                           "Runnin through the six with my woas." required = "required"
                           autofocus = "true">
                    <!--Want to add an onblur which will post info to session-->
                    <br><br>
                    <label for = "img">Select a photo: </label>
                    <input type = "file" id = "img" name = "img" class="btn btn-outline-success my-2 my-sm-0">
                    <br>
                    <label for = "img" style = "color: gray">(JPG, JPEG, PNG, or GIF images under 5MB)</label>
                </div>
                <div id = "errMsg" name = "errMsg" style = "color: red"></div>
                <div>
                    <label for = "artText">Article Content: </label>
                    <br>
                    <textarea id = "artText" name = "artText" cols = "65" rows = "10"
                              placeholder = "Give us that good good." required = "required"></textarea>
                </div>
                
                <br>
                
                <button class="btn btn-outline-success my-2 my-sm-0" type="submit" name = "submit" value="submit">New Post!</button>        
            </form>
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