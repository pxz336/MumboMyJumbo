<?php

    function dbConnect () {
        
        global $connect;
    
        $connect = mysqli_connect("localhost", "mumbombo_user", "_b-7N@W@-~N-", "mumbombo_main");

       if (mysqli_connect_errno()) {
            printf("Connect failed: %s\n", mysqli_connect_error());
            exit();
        }        
    }
?>