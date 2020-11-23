<?php include("sessions.php");?>               

<!DOCTYPE html>
<html lang = "en">
    <head>
        <?php include ("header.php");?>
        <!--For async-->
        <script src = "static/js/homepageFetch.js"></script>
        
        <title>
            Mumbo My Jumbo Homepage
        </title>
    </head>

    <body id = "main-body">
        <?php include("nav.php")?>
                
        <div class = "container-xl" id = "article-div" name = "article-div">            
            <div class="container-fluid" id = "threeGroup">
                <div class="row">
                    <div class="col-6 order-1 order-sm-2" id = "colTFOD">
                        <!--Will need to figure out how to center on larger displays-->
                      <h1 id = "tfod">Trash Fire Of The Day</h1>
                    </div>
                    
                    <div class="col-sm order-2 order-sm-1" id = "art0" name = "colLeft">
                      2 of 3
                    </div>
                    
                    <div class="col-sm order-3" id = "art1" name = "colRight">
                      3 of 3
                    </div>                    
                </div>  
            </div>
            
            <div class="container-xl" id = "fourGroup"></div>
        </div>
        
        
        <div class = 'd-flex justify-content-center'>
            <button class = "btn btn-outline-success"
                    id = "moreArtButt" type = "button" onclick = "artAsync();">Load More</button>
            <button class = "btn btn-outline-success" 
                    id = "bottomButt" type = "button">
                You've reached the bottom! Good Work!</button> 
        </div> 

        <?php include("footer.php")?>
    </body>        
</html>