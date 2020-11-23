<?php

include "dbConnect.php";
dbConnect();

$clean_post_num = mysqli_real_escape_string($connect, $_GET['postNum']);
$clean_fetch_num = mysqli_real_escape_string($connect, $_GET['numArts']);



if (isset($_GET['srchTag'])) {
    $get_posts_sql = searchedFetch($clean_post_num, $clean_fetch_num);    
} else {    
    $get_posts_sql = standardFetch($clean_post_num, $clean_fetch_num);     
}

$get_posts_res = mysqli_query($connect, $get_posts_sql)
        or die (mysqli_error($connect) . "Error getting posts and images");

$get_posts_data = mysqli_fetch_all($get_posts_res, MYSQLI_ASSOC);
exit(json_encode($get_posts_data));

function standardFetch($post_num, $fetch_num) {
    $sql = "select post_title, filepath, post.post_id from post
        inner join post_images on post.post_id = post_images.post_id
        order by post.post_date desc limit " . $post_num . ", " . $fetch_num;
    return ($sql);
}

function searchedFetch($post_num, $fetch_num) {
    $clean_srch_tag = mysqli_real_escape_string($connect, $_GET['srchTag']);
    $get_tagId_sql = "select tag_id from post_tags where tag_name = '" . 
        $clean_srch_tag . "'order by post.post_date desc limit " . $post_num . ", " . $fetch_num;
    $get_tagId_res = mysqli_query($connect, $get_tagId_sql)
        or die (mysqli_error($connect) . "Error getting tag");
    
    if ($get_tagId_res->num_rows < 1) {
       //mysqli_close($connect);
       //exit();
    }
    
    $tag_id = mysqli_fetch_row();
    $tag_id = $tag_id[0];
    
    $sql = "select post_title, filepath, post.post_id from post
        inner join post_tags_key on post.post_id = post_tags_key.post_id
        where post_tags_key.tag_id = '" . $tag_id . "'
        inner join post_images on post.post_id = post_images.post_id
        order by post.post_date desc limit " . $post_num . ", " . $fetch_num;
    
}

?>