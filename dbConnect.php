<?php

    function dbConnect () {
        
        global $connect;
    
        $connect = mysqli_connect("localhost", "username", "password", "mumbo_my_jumbo");

       if (mysqli_connect_errno()) {
            printf("Connect failed: %s\n", mysqli_connect_error());
            exit();
        }        
    }
?>