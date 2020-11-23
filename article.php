<?php include ("sessions.php");
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
    
    if (mysqli_num_rows($get_art_res) != 1) {
        header("Location: homepage.php");
    } else {
        //For getting title and article text
        $get_art_data = mysqli_fetch_array($get_art_res, MYSQLI_ASSOC);
        
        //Increments view counter
        mysqli_query($connect, "update post set num_views = num_views+1 where post_id = " 
            . $clean_art_id);
        
        //For getting photo
        $get_photo_sql = "select filepath from post_images where post_id = '" . $clean_art_id . "'";
        $get_photo_res = mysqli_query($connect, $get_photo_sql)
            or die (mysqli_error($connect) . "Error getting article");
        $get_photo_data = mysqli_fetch_array($get_photo_res, MYSQLI_ASSOC);
        
        //For getting tags from linkage table
        $get_tags_sql = "select tag_id from post_tags_key where post_id = '". $clean_art_id ."'";
        $get_tags_res = mysqli_query($connect, $get_tags_sql)
            or die (mysqli_error($connect) . "Error getting tags 1st time");
        //$get_tags_data = mysqli_fetch_array($get_tags_res, MYSQLI_NUM);
        
        //For getting tags from direct tag table
        $get_tags_sql = "select tag_name from post_tags where tag_id in (";
        $num_res = 0;
        while ($get_tags_data = mysqli_fetch_row($get_tags_res)) {
            $get_tags_sql .= "'" . $get_tags_data[0] . "',";
            $num_res = $num_res + 1;
        }        
        $get_tags_sql = rtrim($get_tags_sql, ",");
        $get_tags_sql .= ")";
        
        /*echo "size of array 1: " . $num_res;
        echo $get_tags_sql;*/
        
        $get_tags_res = mysqli_query($connect, $get_tags_sql)
            or die (mysqli_error($connect) . "Error getting tags 2nd time<br>" . $get_tags_sql);
        //$get_tags_data = mysqli_fetch_array($get_tags_res, MYSQLI_NUM);
    }
    
} else {
    header("Location: homepage.php"); 
}

?>

<!DOCTYPE html>
<html>
    <head>  
        <?php include ("header.php")?>
        <title><?php $get_art_data['post_title']?></title>
    </head>
    
    <body>
        <?php include("nav.php")?>        
        
        <div class = "container-fluid" id = "art-content" name = "art-content">
            <img class = "art-specialfit" src = "<?php echo ($get_photo_data['filepath'])?>" id = "art-photo">
            <div id = "stats" style = "color: gray; text-align: center">
                <?php 
                    echo ("Likes: " . $get_art_data['num_likes']);
                    echo (" Dislikes: " . $get_art_data['num_dislikes']);
                    echo (" Views: " . $get_art_data['num_views']);
                ?>
            </div>
            <h1 class = "container-fluid" id = "art-title" style = "text-align: center; max-width: 38ch; margin: auto;"><?php echo ($get_art_data['post_title'])?></h1>
            
            <div class = "container-fluid" id = "art-text" style = "max-width: 65ch; margin: auto;">
                <?php 
                    echo ($get_art_data['post_text'] . "<br>");
                  
                    while ($get_tags_data = mysqli_fetch_row($get_tags_res)) {
                        echo "<a class = 'btn btn-outline-success' href = 'search.php?tag=" . 
                            $get_tags_data[0] . "'>" . $get_tags_data[0] . "</a>";
                    }                            
                ?>
            </div>        
        </div>        
        
        <?php 
            include("footer.php")
        ?>        
    </body>
</html>