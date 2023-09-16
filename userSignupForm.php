<?php include ("sessions.php");?>

<!DOCTYPE html>
<html>
    <head>
        <?php include("header.php")?>        
        <title>Make a new Mumbo account!</title>
    </head>
    
    <body>
        <?php include("nav.php")?>
        
        <div class = "container-fluid">
            <h1 class = "form-center">Sign up for Mumbo My Jumbo!</h1>
            <br>
            <form method="post" action="userSignupPHP.php">
                <p class = "form-center">
                    <label for = "userEmail">Your Email Address: </label>
                    <br>
                    <input type="email" id = "userEmail" name = "userEmail"
                           size = "30" maxlength="320" placeholder = "  We won't spam you!" required = "required">
                </p>

                <p class = "form-center">
                    <label for = "password">Password: </label>
                    <br>
                    <input type="password" id = "password" name = "password"
                           size = "30" maxlength="30" placeholder= "  Don't forget it!" required = "required">
                </p>

                <p class = "form-center">
                    <label for = "firstName">First Name: </label>
                    <br>
                    <input type="text" id = "firstName" name = "firstName" 
                           size = "30" maxlength="30" placeholder = "  Please use your real first name." required = "required">
                </p>

                <p class = "form-center">
                    <label for = "lastName">Last Name: </label>
                    <br>
                    <input type="text" id = "lastName" name = "lastName" 
                           size = "30" maxlength="30" placeholder = "  Please use your real last name." required = "required">
                </p>

                <div class = "form-center">
                    <label for = "userName">User Name: </label>
                    <br>
                    <input type="text" id = "userName" name = "userName" 
                           size = "30" maxlength="30" placeholder= "  Can be changed later!" required = "required">
                </div>
                <div class = 'd-flex justify-content-center' style="font-size:10px;color:red">Please no email addresses</div>
                
                <div class = 'd-flex justify-content-center'>
                    <button class = "btn btn-outline-success my-2 my-sm-0" 
                            type="submit" name = "submit" 
                            value="submit">Sign Up!</button> 
                </div>
            </form>
            <div class = 'd-flex justify-content-center' id = "errorBox" name = "errorBox" style ="color:red;font-style:italic"></div>
        </div>
        
        <?php include("footer.php")?>
                
    </body>
</html>