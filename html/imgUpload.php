<?php
session_start();

//Makes it so article text and title aren't lost if photo is invalid
$_SESSION['title'] = $_POST['artTitle'];
$_SESSION['article'] = $_POST['artText'];


$target_dir = "../static/img/User-Submitted/";
$target_file = $target_dir . basename($_FILES["img"]["name"]);
$uploadOk = 1;

// Check if image file is a actual image or fake image
$imageFileType = strtolower(pathinfo($target_file,PATHINFO_EXTENSION));

if(isset($_POST["submit"])) {
    $check = getimagesize($_FILES["img"]["tmp_name"]);
    if($check !== false) {
      //echo "File is an image - " . $check["mime"] . ".";
      $uploadOk = 1;
    } else {
        $_SESSION['imgErr'] = "File is not an image.";
        //echo "File is not an image.";
        $uploadOk = 0;
    }
} else { //If submit button not pressed?
    $_SESSION['imgErr'] = "You somehow got here without pressing the submit button. What are you up to?";
    header ("Location: newArticleForm.php");
}

// Check if file already exists
if (file_exists($target_file)) {
    //echo "Sorry, file already exists.";
    $_SESSION['imgErr'] = "Sorry, file already exists.";
    $uploadOk = 0;
} 

// Check file size
if ($_FILES["img"]["size"] > 5000000) {
    $_SESSION['imgErr'] = "Sorry, your file is too large.";
    //echo "Sorry, your file is too large.";
    $uploadOk = 0;
} 

// Allow certain file formats
if($imageFileType != "jpg" && $imageFileType != "png" && $imageFileType != "jpeg"
   && $imageFileType != "gif" ) {
    $_SESSION['imgErr'] = "Sorry, only JPG, JPEG, PNG & GIF files are allowed.";
    //echo "Sorry, only JPG, JPEG, PNG & GIF files are allowed.";
    $uploadOk = 0;
} 

if ($uploadOk == 0) { // Check if $uploadOk is set to 0 by an error
    header("Location: newArticleForm.php");

} else { // if everything is ok, try to upload file
    if (move_uploaded_file($_FILES["img"]["tmp_name"], $target_file)) {
        //Then goes on to db to make post
        unset($_SESSION['imgErr']);
        header("Location: newArticlePHP.php?name=" . $target_file);    
  } else {
        $_SESSION['imgErr'] = "Error moving file from temp folder";
        header("Location: newArticleForm.php");
  }
}

?>