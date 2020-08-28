<?php

    include "dbConnect.php";
    dbConnect();

    //If missing a data field, returns to form page.
    if ((!$_POST['userEmail']) || 
        (!$_POST['password']) || 
        (!$_POST['firstName']) ||
        (!$_POST['lastName']) ||
        (!$_POST['userName'])) {
        header("Location: userSignupForm.html");
        exit;
    }

    $duplicate_email = false;
    $duplicate_username = false;
    $signup_success = "Successful!";

    //Creates safe values for input
    $clean_userEmail = mysqli_real_escape_string($connect, $_POST['userEmail']);
    $clean_password = mysqli_real_escape_string($connect, $_POST['password']);
    $clean_firstName = mysqli_real_escape_string($connect, $_POST['firstName']);
    $clean_lastName = mysqli_real_escape_string($connect, $_POST['lastName']);
    $clean_userName = mysqli_real_escape_string($connect, $_POST['userName']);

    //Checks for duplicate emails or usernames
    $check_dup_email_sql = "select * from mumbo_user where user_email = '" . $clean_userEmail . "'";
    $check_dup_email_res = mysqli_query($connect, $check_dup_email_sql)
        or die (mysqli_error($connect) . "\n Error checking email.");

    $check_dup_username_sql = "select * from mumbo_user where user_name = '" . $clean_userName . "'";
    $check_dup_username_res = mysqli_query($connect, $check_dup_username_sql)
        or die (mysqli_error($connect) . "\n Error checking email.");

    if ($check_dup_email_res->num_rows != 0) {
        $duplicate_email = true;
    } 

    if ($check_dup_username_res->num_rows != 0) {
        $duplicate_username = true;
    }

    if ($duplicate_email == false && $duplicate_username == false) {
    
        //Creating MySQL query for new Mumbo User
        $add_user_sql = "insert into mumbo_user 
            (user_email, password, first_name, last_name, user_name, create_date)
            values ('" . $clean_userEmail . "', '" . $clean_password . "', '" . 
            $clean_firstName . "', '" . $clean_lastName . "', '" . $clean_userName . "', now())";

        //Actual query for entering above
        $add_user_res = mysqli_query($connect, $add_user_sql)
            or die (mysqli_error($connect) . "\n Adding user had eror");

        //Gets User ID
        $user_id = mysqli_insert_id($connect);


        //Creating MySQL query for new Mumbo Profile
        $add_profile_sql = "insert into mumbo_profile 
            (first_name_profile, last_name_profile, user_name_profile, create_date_profile)
            values ('" . $clean_firstName . "', '" . $clean_lastName . "', '" . 
            $clean_userName . "', now())";

        //Actual query for entering above
        $add_post_res = mysqli_query($connect, $add_profile_sql)
            or die (mysqli_error($connect) . "\n Adding profile had error");

        $profile_id = mysqli_insert_id($connect);

        $add_user_profile_sql = "insert into user_profile_key values ('" . $user_id . "', '" . $profile_id . "')";
        $add_user_profile_res = mysqli_query($connect, $add_user_profile_sql)
            or die (mysqli_error($connect) . "\n Adding user-profile had error");

        //Closes connection to SQL
        mysqli_close($connect);


        $display_block = "<p>Welcome, <strong>" . $clean_firstName .
            "</strong> to the trash fire!";
    } else {
        $signup_success = "Unsuccessful.";
        $display_block = "<p>Sorry, that ";
        if ($duplicate_email == true){
            $display_block .= "email ";
            
            if ($duplicate_username == true) {
                $display_block .= "and username are ";
            } else {
                $display_block .= "is ";
            }
        } else {
            $display_block .= "username is ";
        }
        
        $display_block .= "in use.<br>
        <a href = 'userSignupForm.html'>Please try again!</a>";
        
    }
?>

<!DOCTYPE html>
<html>
    <head>
        <title>Signup <?php echo $signup_success; ?> </title>
        <link rel = "stylesheet" type = text/css href = "../static/css/mumboformatting.css">
    </head>
    
    <body>
        <h1>Signup <?php echo $signup_success; ?> </h1>
        <?php echo $display_block; ?>
        <br><br>
        <a href="homepage.php" style = "font-size: 25px; font-weight: bold">Return to MumboMyJumbo!</a>
    </body>
</html>