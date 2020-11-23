<div class = "container-fluid" id = "navbar-div" name = "navbar-div">            
    <nav class="navbar navbar-expand-xl navbar-light" id = "main-nav-bar">                
        <a class = "navbar-brand" href = "/" id = "mumboLogo"><img id = "logo" 
            src = "static/img/Cropped/logomumbo250x%20crop.bmp" alt = "Mumbo Logo"
            height = '90'></a>

        <button class="navbar-toggler" type="button" data-toggle="collapse"
                data-target="#navbarTogglerDemo03" aria-controls="navbarTogglerDemo03"
                aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
        </button>


        <div class="collapse navbar-collapse" id="navbarTogglerDemo03">
            <ul class="navbar-nav mr-auto">
                <li class="nav-item active">
                    <a class="nav-link" href="/">Home<span class="sr-only">(current)</span></a></li>
                <li class="nav-item">
                     <a class="nav-link" href="search.php?tag=tfod" id = "tfod-page">TFOD</a></li>
                <li class="nav-item">
                     <a class="nav-link" href="search.php?tag=politics" id = "politics-page">Politics</a></li>
                <li class="nav-item">
                     <a class="nav-link" href="search.php?tag=sports" id = "sports-page">Sports</a></li>
                <li class="nav-item">
                     <a class="nav-link" href="search.php?tag=technology" id = "tech-page">Technology</a></li>    
                <li class="nav-item">
                     <a class="nav-link" href="search.php?tag=world" id = "world-page">World</a></li>
                <li class="nav-item">
                 <a class="nav-link" href="search.php?tag=lifestyle" id = "life-page">Lifestyle</a></li>

                <form class="form-inline" method="get" action="search.php">
                    <input class="form-control mr-sm-2" type="search" placeholder=
                        "Search the Trash Heap" aria-label="Search" name = "tag">
                    <button class="btn btn-outline-success my-2 my-sm-0" type="submit">
                        Rummage </button>
                </form>
            </ul>

            <ul class="navbar-nav mr-right">
                <form class = "form-inline" action = "userSignupForm.php" 
                  id = "signup-form" >
                    <button class = "btn btn-outline-success my-2 my-sm-0" 
                        type = "submit" id = "signup-button">
                        Signup</button>
                </form>

                <form class = "form-inline" action = "loginForm.php" 
                      id = "login-form" >
                    <button class = "btn btn-outline-success my-2 my-sm-0" 
                            type = "submit" id = "login-button">
                        Login</button>
                </form>                       

                <form class = "form-inline" action = "newArticleForm.php"
                      id = "new-post-form">
                    <button class = "btn btn-outline-success my-2 my-sm-0"
                            type = "submit" id = "new-post-button">
                    Make Post</button>                       
                </form>

                <form class = "form-inline" action = "logout.php" 
                      id = "logout-form" >
                    <button class = "btn btn-outline-success my-2 my-sm-0" 
                            type = "submit" id = "logout-button">
                        Log out</button>
                </form>
            </ul>
        </div>

        <div id = "userNameHome" name  = "userNameHome">This is garbage</div>

        <!-- For social section of website, not yet made
        <a class = "navbar-brand" href = "index.php" id = "mumboSocial"><img id = "social" 
            src = "static/img/Cropped/mumboSocial%20crop.bmp" alt = "Mumbo Social"
            height = '90'></a>-->
    </nav>            
</div>