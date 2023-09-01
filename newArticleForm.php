<?php include ("sessions.php");

//If no user logged in
if (!isset($_SESSION['userName'])){
    header("Location: loginForm.php");
}

if (isset($_SESSION['title'])) { //Saves title if error w/ photo upload
    echo "<input type = 'hidden' id = 'savedTitle' name = 'savedTitle'
        value = '" . $_SESSION['title'] . "'>";
}

if (isset($_SESSION['article'])) { //Saves article if error w/ photo upload
    echo "<input type = 'hidden' id = 'savedArticle' name = 'savedArticle'
                  value = '" . $_SESSION['article'] . "'>";
}

if (isset($_SESSION['imgErr'])) { //Displays photo error msg if there is one
    echo "<input type = 'hidden' id = 'imgErrMsg' name = 'imgErrMsg'
                  value = '" . $_SESSION['imgErr'] . "'>";
}

if (isset($_SESSION['numTags'])) {//Saves tags if error w/photo upload
    echo "<input id = 'savedTagNum' type = 'hidden' value = '" . $_SESSION['numTags'] . "'>";
    for ($i = 0; $i < $_SESSION['numTags']; $i++) {
        echo "<input id = 'savedTag" . $i . "' type = 'hidden' value = '" . $_SESSION['tag' . $i] . "'>";
    }
}

/*if (isset($_SESSION['exten'])) {
    echo $_SESSION['exten'];
}*/

?>


<!DOCTYPE html>
<html>
    <head>        
        <?php include ("header.php")?>   
        
        <script src = "static/js/addTags.js"></script>
        <script src="https://cdn.tiny.cloud/1/no-api-key/tinymce/5/tinymce.min.js" referrerpolicy="origin"></script>


        <!--If error posting, replaces inputs and gives error message-->
        <script>            
           
            $(document).ready(function(){ 
                //Custom textarea
                tinymce.init({
                selector: '#artText',
                menubar: 'edit format',
                width: "60%"
                });
                
                //Default tagging state
                $("#otherInput").hide();
                $("#tagErr").hide();
                
                //Adds listener to tagbox for enter key
                document.getElementById("tagger").addEventListener("keyup", function(event) {
                    if (event.keyCode===13) {
                        event.preventDefault();
                        $("#tagBtn").click();
                    }                                   
                });
                
                //If saved content
                if ($("#savedTitle")) {
                    $("#artTitle").val($("#savedTitle").val());
                }                
                if ($("#savedArticle")) {
                    $("#artText").val($("#savedArticle").val());
                }
                if ($("#savedTagNum")) {
                    var i;
                    
                    for (i = 0; i < $("#savedTagNum").val(); i++) {
                        $("#presets").val("Other");
                        $("#otherInput").val($("#savedTag" + i).val());
                        tagger();
                    }
                    $("#presets").val("Politics");
                }
                
                //If img upload error
                if ($("#imgErrMsg")) {
                    $("#errMsg").show();
                    $("#errMsg").html($("#imgErrMsg").val());
                } else {
                    $("#errMsg").hide();
                } 
                
                /*$(document).on("keydown", ":input:not(textarea)", function(event) {
                    return event.key != "Enter";
                });*/
                
                $(document).on("keydown", ":input:not(textarea)", function(event) {
                    if (event.key == "Enter") {
                        event.preventDefault();
                    }
                });
            });        
        </script>        
        
        <title>Make a new Mumbo post!</title>
        
    </head>
    
    <body>
        <?php include ("nav.php")?>  
        <div class = "container-fluid form-center">
            <form method="post" action="imgUpload.php" enctype="multipart/form-data">
                <div>
                    <label for = "artTitle" style = "text-decoration: underline;">Article Title: </label>
                    <br>
                    <input type="text" id = "artTitle" name = "artTitle" 
                           size = "40" maxlength="300" placeholder = 
                           "Runnin through the six with my woas." required = "required"
                           autofocus = "true">
                    <!--Want to add an onblur which will post info to session-->
                    <br><br>
                    <label for = "img">Select a photo: </label>
                    <input type = "file" id = "img" name = "img" class="btn btn-outline-success my-2 my-sm-0">
                    <br>
                    <label for = "img" style = "color: gray">(JPG, JPEG, PNG, or GIF images under 5MB)</label>
                </div>
                <div id = "errMsg" name = "errMsg" style = "color: red"></div>
                <div>
                    <label for = "artText" style = "text-decoration: underline;">Article Content: </label>
                    <br>
                    <textarea id = "artText" name = "artText" cols = "65" rows = "10"
                              placeholder = "Give us that good good."></textarea>
                </div>
               
                <div id = "tags-vis">
                    Click tags to remove them:
                </div>
                <input id = "numTagsPage" name = "numTagsPage" type = "hidden" value = "0">
                <div id = "tags-inputs"></div>
                
                <div id = "tagger">
                    <select class = "btn btn-outline-success my-2 my-sm-0" name = "presets"
                            id = "presets" onmouseup ="otherCheck();">
                        <option value = "Politics">Politics</option>
                        <option value = "Sports">Sports</option>
                        <option value = "Technology">Technology</option>
                        <option value = "World">World</option>
                        <option value = "Lifestyle">Lifestyle</option>
                        <option value = "Other">Other</option>                        
                    </select>   
                    
                    <input value = "" id = "otherInput">
                    
                    <button class="btn btn-outline-success my-2 my-sm-0" id = "tagBtn"
                            type = "button" onclick = "tagger();">Add tag</button>
                    <div style="color: red;" id = "tagErr">Sorry, that tag is reserved.</div>                                            
                </div>
                <br>         
                <button class="btn btn-outline-success my-2 my-sm-0" 
                        type="submit" name = "submit" value="submit">New Post!</button>        
            </form>
        </div>        
        
        <?php include ("footer.php")?>  
        
    </body>
</html>