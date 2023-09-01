<?php include("sessions.php");?>   

<!DOCTYPE html>
<html>
    <head>
        <?php include ("headerAdmin.php");?>
        <!--For async-->
        <script src = "static/js/adminFetch.js"></script>
        <title>
            Too much power for one man
        </title>
    </head>
    
    <body>
        <?php include ("nav.php");?>
        
        
        <?php include ("footer.php");?>
        
        <div class="container-xl" id = "fourGroup"></div>

        
        <div class = 'd-flex justify-content-center'>
            <button class = "btn btn-outline-success"
                    id = "moreArtButt" type = "button" onclick = "artAsync();">Load More</button>
            <button class = "btn btn-outline-success" 
                    id = "bottomButt" type = "button">
                You've reached the bottom! Good Work!</button> 
        </div> 
    </body>
</html>