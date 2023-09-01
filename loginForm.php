<?php include ("sessions.php");?>

<!DOCTYPE html>
<html>
    <head>        
        <?php include ("header.php")?>
        
        <title>Log In To Mubmo My Jumbo!</title>
        
    </head>
    
    <body>
        <?php include ("nav.php")?>
        <div class = "container-fluid">
            <div class = "form-center">
                <h1>Log in!</h1>
                <form method="post" action="loginPHP.php">
                    <div>
                        <label for = "user-name">Username: </label>
                        <br>
                        <input type="text" id = "user-name" name = "user-name" 
                               size = "30" maxlength="30" placeholder = 
                               "Username" required = "required"
                               autofocus = "true">
                    </div>
                    <br>
                    <div>
                        <label for = "password">Password: </label>
                        <br>
                        <input type="password" id = "password" name = "password" 
                               size = "30" maxlength="30" placeholder = 
                               "Password" required = "required">
                    </div>
                    <br>
                    <button class="btn btn-outline-success my-2 my-sm-0" type="submit" name = "submit" value="submit">Log In!</button>        
                </form>
            </div>
        </div>
        
        <?php include ("footer.php")?>
        
    </body>
</html>