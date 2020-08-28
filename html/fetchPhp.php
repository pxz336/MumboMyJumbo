<?php

include "dbConnect.php";
dbConnect();

$clean_post_num = mysqli_real_escape_string($connect, $_GET['artNum']);

$get_posts_sql = "select post_title, filepath, post.post_id from post 
    inner join post_images on 
    post.post_id = post_images.post_id
    order by post.post_date desc limit "
    . $clean_post_num . ", 6";

$get_posts_res = mysqli_query($connect, $get_posts_sql)
        or die (mysqli_error($connect) . "Error getting posts and images");

$get_posts_data = mysqli_fetch_all($get_posts_res, MYSQLI_ASSOC);

exit(json_encode($get_posts_data));

?>