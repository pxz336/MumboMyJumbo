<meta charset="utf-8">
<meta name = "viewport" content="width = device-width, initial-scale=1, shrink-to-fit=no">

<!--Link for BoostrapCSS-->            
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">

<!-- Custom CSS-->
<link rel = "stylesheet" type = text/css href = "static/css/mumboformatting.css?ts=<?=time()?>"/>

<!--TFOD Script-->

<!--If you're logged in, hides some buttons-->
<script src = "static/js/loginButtonsHomepage.js"></script>


<!--Boostrap Scripts-->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

        
<!--If you're logged in, hides some buttons-->
<script> 
    $(document).ready(function(){
        alterLoginButtons();
        artAsync();
    });
</script>