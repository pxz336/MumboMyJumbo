<?php include("sessions.php");

if (!$_GET['tag']) {
    header("Location:/");
} else {
    echo "<input type = hidden id = 'srchTag' name = 'srchTag' value = '" .
        $_GET['tag'] . "'>";
}

?>

<!DOCTYPE html>
<html>
    <head>
        <?php include ("header.php");?>
        <script src = "static/js/searchFetch.js"></script>
        
        <title>
            <?php echo $_GET['tag']; ?>
        </title>
    </head>
    
    <body>
        <?php include("nav.php")?>
        
        <div class = "container-xl" id = "article-div" name = "article-div">
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