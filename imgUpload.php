<?php session_start();
//ob_start();

//Makes it so article text and title aren't lost if photo is invalid
$_SESSION['title'] = $_POST['artTitle'];
$_SESSION['article'] = $_POST['artText'];


//Collects tags for sql insertion using sessions
$numTags = $_POST['numTagsPage'];
$tagsLeft = $numTags;
$validTags = 0;

if ($numTags > 0) { //Not 100% sure I need this if statement.
   $j = 0;
    for ($i = 0; $i < $numTags; $i = $i + 1) {
        if ($tagsLeft < 1 || $i > 1000) {
            break; //to prevent infinite loop
        }
        
        if (isset($_POST['hid-tag' . $i])) {  
            $_SESSION['tag' . $j] = $_POST['hid-tag' . $i];
            $j = $j + 1; //If exception, j won't increment, so will be smooth #s later
            $tagsLeft = $tagsLeft - 1;
            $validTags = $validTags + 1;
        } else {
            $numTags = $numTags + 1;
            //if there is a deleted tag, that means 
            //index number will be 1 greater than # of posts
        }
    }
    $_SESSION['numTags'] = $validTags;
    $uploadOk = 1;
} else {
    $uploadOk = 0;
}

$target_dir = "static/img/User-Submitted/Temp/";
$orig_path = pathinfo($_FILES["img"]["name"]);

$_SESSION['exten'] = $orig_path['extension'];
$target_file = $target_dir . rand(0,99999) . date("YmdHis") . "." . $orig_path['extension'];
    
//basename($_FILES["img"]["name"]);

// Check if image file is an actual image or fake image
$imageFileType = strtolower(pathinfo($_FILES["img"]["name"],PATHINFO_EXTENSION));

if(isset($_POST["submit"])) { //If submit button pressed
    $check = getimagesize($_FILES["img"]["tmp_name"]);
    if($check !== false) { //If file is an image
        //echo "File is image";
        //$uploadOk = 1;
    } else {
        $_SESSION['imgErr'] = "File is not an image.";
        $uploadOk = 0;
    }
} else { //If submit button not pressed?
    $_SESSION['imgErr'] = "You somehow got here without pressing the submit button. What are you up to?";
    header ("Location: newArticleForm.php");
}

// Check if file already exists
if (file_exists($target_file)) {
    
    //echo "File exists";
    $_SESSION['imgErr'] = "Sorry, file already exists.";
    $uploadOk = 0;
} 

// Check file size
if ($_FILES["img"]["size"] > 5000000) {
    $_SESSION['imgErr'] = "Sorry, your file is too large.";   
    $uploadOk = 0;
} 

// Allow certain file formats
if($imageFileType != "jpg" && $imageFileType != "png" && $imageFileType != "jpeg"
   && $imageFileType != "gif" ) {
    $_SESSION['imgErr'] = "Sorry, only JPG, JPEG, PNG & GIF files are allowed.";
    $uploadOk = 0;
} 

if ($uploadOk == 0) { // Check if $uploadOk is set to 0 by an error
    //echo $uploadOk;
    header("Location: newArticleForm.php");

} else { // if everything is ok, try to upload file
    if (move_uploaded_file($_FILES["img"]["tmp_name"], $target_file)) {
        //Then goes on to db to make post
        unset($_SESSION['imgErr']);
        header("Location: newArticlePHP.php?name=" . $target_file);
        echo "Should have redirected, success";
        //exit;
  } else {
        $_SESSION['imgErr'] = "Error moving file from temp folder";
        header("Location: newArticleForm.php");
        echo "Should have redirected, failed";
        //exit;
  }
    
    //echo "Code shouldn't reach here";
}

?>

<!DOCTYPE html>
<html>
    <head>
        <title>I hope you never see this</title>
    </head>
    
    <body>
        <h1>What is going on</h1>
        <?php 
            if (isset($_SESSION['imgErr'])){
                echo $_SESSION['imgErr'];
            } else {
                echo "error unset";
            }
            
            echo "<br>target_dir: " . $target_dir;
            echo "<br>orig_path: " . $orig_path['extension'];
            echo "<br>target_file: " . $target_file;
            echo "<br>FILES[img][tmp_name]: " . $_FILES["img"]["tmp_name"];
            
            echo "<br><img src = '" . $_FILES["img"]["tmp_name"] . "'";
        ?>
    </body>
</html>