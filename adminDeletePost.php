<?php

include "dbConnect.php";
dbConnect();

$clean_post_num = mysqli_real_escape_string($connect, $_POST['postID']);


$img_sql = "select filepath from post_images where post_id = " . $clean_post_num;
$img_res = mysqli_query($connect, $img_sql)
        or die (mysqli_error($connect) . "Error getting posts and images");
$img_data = mysqli_fetch_all($get_posts_res, MYSQLI_ASSOC);

if (sizeof($img_data) == 1){
    //Actual file on server
    unlink($img_data[0].filepath);
    //Unlinks Filepath
    $post_images_sql = "delete from post_images where post_id = " . $clean_post_num;
    //Unlinks post from profile
    $post_profile_key_sql = "delete from post_profile_key where post_id = " . $clean_post_num;
    //Deletes comments
    $comments_sql = "delete from comments where comment_post_key.post_id_key = " . $clean_post_num . 
        "and comments.comment_id = comment_post_key.comment_id_key";
    //Unlinks comments from post
    $comment_post_key = "";
    //Finally deletes actual post
    $post_sql = "";
}




?>