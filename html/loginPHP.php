<?php
<<<<<<< HEAD
session_start();
    
=======
>>>>>>> 3f3af980fd6bbb600de27a5e09853e9443ae2dac

    include "dbConnect.php";
    dbConnect();

    //If missing a data field, returns to form page.
    if ((!$_POST['user-name']) || (!$_POST['password'])) {
        header("Location: loginForm.html");
        exit;
    }

    //Creates safe values for input
    $clean_user_name = mysqli_real_escape_string($connect, $_POST['user-name']);
    $clean_password = mysqli_real_escape_string($connect, $_POST['password']);


    //Gets user from db
<<<<<<< HEAD
    $get_pass_sql = "select * from mumbo_user where user_name = '" . $clean_user_name . "'";
=======
    $get_pass_sql = "select password from mumbo_user where user_name = '" . $clean_user_name . "'";
>>>>>>> 3f3af980fd6bbb600de27a5e09853e9443ae2dac
    $get_pass_res = mysqli_query($connect, $get_pass_sql)
        or die (mysqli_error($connect) . "\n Error checking username.");

    $login_success = "Unsuccessful.";

    if ($get_pass_res->num_rows !=0) {
<<<<<<< HEAD
        //Checks if duplicate usernames
        //Sends me an email if there are
        if ($get_pass_res->num_rows > 1){ 
=======
        
        if ($get_pass_res->num_rows > 1){ //Checks if somehow databse sucks
>>>>>>> 3f3af980fd6bbb600de27a5e09853e9443ae2dac
            $recipient = "themalemonkey@yahoo.com";             
            $subject = "Duplicate username alert!";
            $msg = "Username: " . $clean_user_name . " is duplicated, not good!";
            $header = "From: Mumbo My Jumbo <localhost> \n";
            $header .= "Reply-To: " . $recipient;
            mail($recipient, $subject, $msg, $header);
                
        }
        
        $array = mysqli_fetch_array($get_pass_res, MYSQLI_ASSOC);
        
<<<<<<< HEAD
        if ($clean_password == $array['password']) { //Checks for correct pass
            $login_success = "Successful!";
            $display_block = "Weclome, " . $clean_user_name . "!";
            
            //Makes unique login token
            $token = hash("tiger192,4", password_hash(time() . $_SERVER['REMOTE_ADDR'] .
                "Dont touch my salt dude.", PASSWORD_DEFAULT), false);
            $set_token_sql =  "update mumbo_user set login_token = '" . $token . "' where
                user_name = '" . $clean_user_name . "' and password = '" . $clean_password . "'"; 
                
                //and password = '".$clean_password."'"; 
            $set_token_res = mysqli_query($connect, $set_token_sql)
                or die (mysqli_error($connect) . "\nError inserting token");
            
            //Adds session variables
            $_SESSION['firstName'] = $array['first_name'];
            $_SESSION['lastName'] = $array['last_name'];
            $_SESSION['userName'] = $array['user_name'];
            $_SESSION['loginToken'] = $token;
            
=======
        if ($clean_password == $array['password']) {
            $login_success = "Successful!";
            $display_block = "Weclome, " . $clean_user_name . "!";
>>>>>>> 3f3af980fd6bbb600de27a5e09853e9443ae2dac
        } else {
            $display_block = "Sorry, incorrect password. 
            <a href = 'loginForm.html' style = 'font-weight: bold'>Please try again!</a>";
        }
        
    } else {        
        $display_block = "Sorry, username <strong>" . $clean_user_name . "</strong> not found,
        <a href = 'loginForm.html' style = 'font-weight: bold'>please try again!</a>";
    }

    //Closes connection to SQL
    mysqli_close($connect);    
?>

<!DOCTYPE html>
<html>
    <head>
        <title>Login <?php echo $login_success; ?> </title>
    </head>
    
    <body>
<<<<<<< HEAD
        <?php 
        echo "Session ID  = " . session_id() . " ";
        echo $_SESSION['userName'] . " ";
        echo $_SESSION['firstName'] . " ";
        echo $_SESSION['lastName'] . " ";        
        ?>
        
        <h1>Login <?php echo $login_success; ?> </h1>
        <?php echo $display_block; ?>
        <br><br>
        <a href="homepage.php" style = "font-size: 25px; font-weight: bold">Return to MumboMyJumbo!</a>
=======
        <h1>Login <?php echo $login_success; ?> </h1>
        <?php echo $display_block; ?>
        <br><br>
        <a href="homepage.html" style = "font-size: 25px; font-weight: bold">Return to MumboMyJumbo!</a>
>>>>>>> 3f3af980fd6bbb600de27a5e09853e9443ae2dac
    </body>
</html>