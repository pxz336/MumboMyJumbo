<?php 
include ("sessions.php");

    //if not logged in, return to login page
    if (!isset($_SESSION['loginToken'])){
        header("Location: loginForm.html");
    }

    include "dbConnect.php";
    dbConnect();

    //If missing a data field, returns to form page.
    if ((!$_SESSION['title']) || 
        (!$_SESSION['article'])) {
        header("Location: newArticleForm.html");
        exit;
    }

    $post_success;
    $display_block;
    $profile_id;
        
    //Creates safe values for input==========================================================
    $clean_token = mysqli_real_escape_string($connect, $_SESSION['loginToken']);
    $clean_username = mysqli_real_escape_string($connect, $_SESSION['userName']);
    
    $clean_title = mysqli_real_escape_string($connect, $_SESSION['title']);
    $clean_text = mysqli_real_escape_string($connect, $_SESSION['article']);

    $validLog = loginCheck();
    if ($validLog === false) {
        $post_success = "Unsuccessful.";        
        $display_block = "
            <h1>Sorry, we couldn't verify your login.</h1>
            <h3>Please try to <a href = 'logout.php' 
                style 'font-weight: bold'>log out</a></h3>
            <h3>Or <a href = 'loginForm.html' style 
            'font-weight: bold'>log in</a> again</h3>";
    } else {
        makePost($validLog);
        photo();
        makeTags();
    }

    function loginCheck(){
        //Checks if login is valid
        $chk_user_sql = "select * from mumbo_user where user_name = '" . $clean_username . "'
            and login_token = '" . $clean_token . "'";
        $chk_user_res = mysqli_query($connect, $chk_user_sql)
            or die (mysqli_error($connect) . "Error checking username and token");
        
        if ($chk_user_res->num_rows == 1) {
            return $chk_user_res;
            
        } else {
            return false;
    }

    function makePost($chk_user_res){
        $user_info = mysqli_fetch_array($chk_user_res);
        $user_id = $user_info['user_id'];
        
        //Gets profile ID (posts are linked to profiles not users)===============================
        $get_prof_id_sql = "select profile_id_key from user_profile_key
            where user_id_key = '" . $user_id . "'";
        $get_prof_id_res =  mysqli_query($connect, $get_prof_id_sql)
            or die (mysqli_error($connect) . "Error getting profile id");
        $key_info = mysqli_fetch_array($get_prof_id_res);
        $profile_id = $key_info['profile_id_key'];
        //Above will get messed up if multiple profiles for same user.
        //Will need to implement more specific query and use session with 
        //a where clause to fix, but at a later date.
          
        //Creating MySQL query for new Article==============================================
        $add_post_sql = "insert into post (post_title, post_text, post_date)
            values ('" . $clean_title . "', '" . $clean_text . 
            "', now())";
        //Actual query for entering above
        $add_post_res = mysqli_query($connect, $add_post_sql)
            or die (mysqli_error($connect) . "\n Adding post had eror");

        //Gets Post ID
        $post_id = mysqli_insert_id($connect);

        //Links article & profile=========================================================
        $post_profile_sql = "insert into post_profile_key values (
            '" . $profile_id . "', '" . $post_id . "')";
        mysqli_query($connect, $post_profile_sql)
            or die (mysqli_error($connect) . "/n Connecting post and profile had error.");
    }

    function photo(){
        
    }

    function makeTags() {
        
    }


   
                                                
     {
        
        
        //Moves photo from temp folder to month dated folders==============================
        $folderName ="static/img/User-Submitted/" . $profile_id . "/" . date('yy-M', time()) . "/";
        $img_name = substr(strrchr($_GET['name'], "/"), 1);
        
        //If folder isn't made yet
        if (!file_exists($folderName)) {
            mkdir ($folderName, 0777, true);
            //echo "folder created";
        }
        
        //If image name isn't duplicated in folder
        if (!file_exists($folderName . $img_name)) {
            rename ($_GET['name'], $folderName . $img_name)
                or die("Error moving photo");
        }        
        
        //Preps for MySQL inclusion
        $clean_folder_name =  mysqli_real_escape_string($connect, $folderName) . 
            mysqli_real_escape_string($connect, $img_name);        
        
        //Links article & photo============================================================
        $post_photo_sql = "insert into post_images (post_id, filepath) values (
            '" . $post_id . "', '" . $clean_folder_name . "')";
        mysqli_query($connect, $post_photo_sql)
            or die (mysqli_error($connect) . "/n Connecting post and photo had error.");        
        
        //Time for tags!====================================================================
        $add_tags_sql = "insert into post_tag_key (post_id, tag_id) values ";
        
        for ($i = 0; $i < $_SESSION['numTags']; $i = $i +1) {
            $clean_tag = mysqli_real_escape_string($connect, $_SESSION['tag' . $i]); 
            
            //Makes new tag if it doesn't exist-----------------------------------------
            $search_tag_sql = "select * from post_tags where tag_name = '" . 
                $clean_tag . "' limit 1";
            $search_tag_res = mysqli_query($connect, $search_tag_sql)
                or die (mysqli_error($connect) . "\n Searching tags had error");
            
            if ($search_tag_res->num_rows < 1) {
                //If tag doesn't already exist in db, make tag
                $new_tag_sql = "insert into post_tags (tag) values " . 
                    $clean_tag . "'";
                $new_tag_res = mysqli_query($connect, $new_tag_sql)
                    or die (mysqli_error($connect) . "\n Making new tags had error");
                $search_tag_res = mysqli_query($connect, $search_tag_sql)
                    or die (mysqli_error($connect) . 
                            "\n Searching tags had error after making new tag");
            } //-----------------------------------------------------------------------
            
            /*$key_info = mysqli_fetch_array($get_prof_id_res);
            $profile_id = $key_info['profile_id_key'];*/
            $tag_info = mysqli_fetch_array($search_tag_res);
            $tag_id = $tag_info['tag_id'];
            
            //SQL for attaching tags to posts
            $add_tags_sql .= "(" . $post_id . ", '" . $tag_id . "'),";
        }        
        //Gets rid of last ,
        $add_tags_sql = rtrim($add_tags_sql, ",");
        
        $add_tags_res = mysqli_query($connect, $add_tags_sql)
            or die (mysqli_error($connect) . "\n Adding tags had error");

        
        /*if (isset($_SESSION['numTags'])) {//Saves tags if error w/photo upload
            echo "<input id = 'savedTagNum' type = 'hidden' value = '" . $_SESSION['numTags'] . "'>";
            for ($i = 0; $i < $_SESSION['numTags']; $i++) {
                echo "<input id = 'savedTag" . $i . "' type = 'hidden' value = '" . $_SESSION['tag' . $i] . "'>";
            }
        }*/
        
        
        //Results & Cleanup================================================================
        $post_success = "Successful!";
        $display_block = "<a href = article.php?artID=" . $post_id . " style = 
        'font-weight: bold; text-decoration: underline;'>Go to your article here!";        
        
        for ($i = 0; i < $_SESSION['numTags']; $i = $i +1) {
            unset($_SESSION['tag' . $i]);            
        }
        unset($_SESSION['title'], $_SESSION['article'], $_SESSION['numTags']);
      

    } else {
 
    }





                                                
    //Closes connection to SQL
    mysqli_close($connect);
?>

<!DOCTYPE html>
<html>
    <head>
        <?php include ("header.php")?>
        
        <title>Post <?php echo $post_success; ?> </title>
    </head>
    
    <body>
        <?php include ("nav.php")?>

        <h1>Post <?php echo $post_success; ?> </h1>
        <h3><?php echo $display_block; ?> </h3>
        
        <?php include ("footer.php")?>

    </body>
</html>