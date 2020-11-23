

<!DOCTYPE html>
<html>
    <head>
        <title>
            I am sad
        </title>
    </head>
    
    <body>
        <h1>This won't work</h1>
        <h3>Because...</h3>
        <div id = "phpErr">
            <?php
                foreach ($_POST as $key => $value) {
                    echo "<tr>";
                    echo "<td>";
                    echo $key;
                    echo "</td>";
                    echo "<td>";
                    echo $value;
                    echo "</td>";
                    echo "</tr>";
                }
            ?>
        </div>
    </body>
</html>