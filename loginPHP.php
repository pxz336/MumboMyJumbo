<?php include ("sessions.php");

    include "dbConnect.php";
    dbConnect();

    //If missing a data field, returns to form page.
    if ((!$_POST['user-name']) || (!$_POST['password'])) {
        header("Location: loginForm.php");
        exit;
    }

    //Creates safe values for input
    $clean_user_name = mysqli_real_escape_string($connect, $_POST['user-name']);
    $clean_password = mysqli_real_escape_string($connect, $_POST['password']);


    //Gets user from db
    $get_pass_sql = "select * from mumbo_user where user_name = '" . $clean_user_name . "'";
    $get_pass_res = mysqli_query($connect, $get_pass_sql)
        or die (mysqli_error($connect) . "\n Error checking username.");

    $login_success = "Unsuccessful.";

    if ($get_pass_res->num_rows !=0) {
        //Checks if duplicate usernames
        //Sends me an email if there are
        if ($get_pass_res->num_rows > 1){ 
            $recipient = "themalemonkey@yahoo.com";             
            $subject = "Duplicate username alert!";
            $msg = "Username: " . $clean_user_name . " is duplicated, not good!";
            $header = "From: Mumbo My Jumbo <localhost> \n";
            $header .= "Reply-To: " . $recipient;
            mail($recipient, $subject, $msg, $header);
                
        }
        
        $array = mysqli_fetch_array($get_pass_res, MYSQLI_ASSOC);
        
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
            
        } else {
            $display_block = "Sorry, incorrect password. 
            <a href = 'loginForm.php' style = 'font-weight: bold'>Please try again!</a>";
        }
        
    } else {        
        $display_block = "Sorry, username <strong>" . $clean_user_name . "</strong> not found,
        <a href = 'loginForm.php' style = 'font-weight: bold'>please try again!</a>";
    }

    //Closes connection to SQL
    mysqli_close($connect);    
?>

<!DOCTYPE html>
<html>
    <head>
        <?php include ("header.php")?>
        
        <title>Login <?php echo $login_success; ?> </title>
    </head>
    
    <body class = "form-center">
        
        <?php echo "<input type = 'hidden' id = 'login_bool' value = '"
            . $login_success . "'>"?>
        
        <?php include ("nav.php")?>
        
        <h1>Login <?php echo $login_success; ?> </h1>
        <h3><?php echo $display_block; ?></h3>
        
        <?php include ("footer.php")?>
        
        <script>
            $(document).ready(function(){
                if ($("#login-bool").value != "Unsuccessful.") {
                    $("#login-button").hide();
                    $("#signup-button").hide();
                    
                    $("#logout-button").show();
                    $("#new-post-button").show();
                }
            });
        </script>
    </body>
</html>