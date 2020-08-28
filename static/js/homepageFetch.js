var postNum = 0;

function artAsync(){
    console.log("Get me my damn json you pig fuck");

    fetch("fetchPhp.php?artNum=" + postNum)
        .then(response => response.json())
        .then(data => {
            console.log(data);                    
            var output = "<div class='row'>";

            for (var i = 0; i < data.length; i++) {                        
                if (i !=0 && i%4 == 0) {
                    output += "</div><div class = 'row'>";
                }
                output += "<div class='col-md'><a href = 'article.php?artID="
                    + data[i].post_id + "' style = 'font-weight: bold'>" + 
                    data[i].post_title + "<br><img src = " +
                    data[i].filepath + " width = '169'></a></div>";
            }        
            output += "</div>";                  
            $("#fourGroup").html(output);                
            postNum += 6;
        });    
}
