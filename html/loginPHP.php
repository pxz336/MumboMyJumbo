<?php

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
    $get_pass_sql = "select password from mumbo_user where user_name = '" . $clean_user_name . "'";
    $get_pass_res = mysqli_query($connect, $get_pass_sql)
        or die (mysqli_error($connect) . "\n Error checking username.");

    $login_success = "Unsuccessful.";

    if ($get_pass_res->num_rows !=0) {
        
        if ($get_pass_res->num_rows > 1){ //Checks if somehow databse sucks
            $recipient = "themalemonkey@yahoo.com";             
            $subject = "Duplicate username alert!";
            $msg = "Username: " . $clean_user_name . " is duplicated, not good!";
            $header = "From: Mumbo My Jumbo <localhost> \n";
            $header .= "Reply-To: " . $recipient;
            mail($recipient, $subject, $msg, $header);
                
        }
        
        $array = mysqli_fetch_array($get_pass_res, MYSQLI_ASSOC);
        
        if ($clean_password == $array['password']) {
            $login_success = "Successful!";
            $display_block = "Weclome, " . $clean_user_name . "!";
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
        <h1>Login <?php echo $login_success; ?> </h1>
        <?php echo $display_block; ?>
        <br><br>
        <a href="homepage.html" style = "font-size: 25px; font-weight: bold">Return to MumboMyJumbo!</a>
    </body>
</html>