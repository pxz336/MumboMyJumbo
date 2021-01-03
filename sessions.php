<?php session_start();

    //Block for testing $_SESSION values
    //echo "Session ID  = " . session_id();

    if ($test = isset($_SESSION['userName'])) {//
        /*echo " " . $_SESSION['userName'] . " ";//
        echo $_SESSION['firstName'] . " ";//Test code
        echo $_SESSION['lastName'] . " ";//
        
        echo " There is a man who is logged in and his name is " .
            $_SESSION ['firstName'];//*/
        
        //Actual code to keep
        echo "<!DOCTYPE html><input type = 'hidden' id = 'loginBoolean' name = 'loginBoolean' value = 'true'>";
        
        echo "<input type = 'hidden' id = 'userNameSession' name = 'userNameSession'
                  value = '" . $_SESSION['userName'] . "'>
              <input type = 'hidden' id = 'firstNameSession' name = 'firstNameSession'
                  value = '" . $_SESSION['firstName'] . "'>
              <input type = 'hidden' id = 'lastNameSession' name = 'lastNameSession'
                  value = '" . $_SESSION['lastName'] . "'>";
    } else { 
        $conv_test = $test ? "true" : "false";
        /*echo " There is no man that is logged in and the session is set is " . 
            $conv_test;*/
    } 

?>