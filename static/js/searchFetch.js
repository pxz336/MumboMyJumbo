var postNum = 0;
var numArticles = 8;

function artAsync(){
    console.log("Get me my damn json you pig fuck");
    
    fetch("fetchPhp.php?postNum=" + postNum + 
         "&numArts=" + numArticles + 
         "&srchTag=" + $("#srchTag").val())
        .then(response => response.json())
        .then(data => {
            console.log(data);
         
            if (data.length > 0) {                
                output = "";                
                for (var i = 0; i < data.length; i++) {
                    nextArts(data,i);                                       
                    postNum += 1;
                }                
                printArticles(output); 

                if (postNum > 8) {
                    scrollPage(); 
                }                
            } else {
                $("#moreArtButt").hide();
                $("#bottomButt").show();
            }            
            console.log("postNum: " + postNum + " numArticles: " + numArticles);             
        });    
}

function nextArts(jsonData,index) {        
    //4 posts per row 
    if (postNum == 0 || postNum %4 == 0) {
        output += "<div class = 'row' style = 'height 50px;'>";
    }
       
    //Creates small column per post
    //Uses post # as post ID for DOM
    //Puts image in first, then title @ bottom
    output += "<div class='col-sm mh-3' id = 'art" + postNum + 
        "'><a href = 'article.php?artID="
        + jsonData[index].post_id + "' style = 'font-weight: bold'>" + 
        "<img class = 'home-specialfit' src = '" +
        jsonData[index].filepath + "'><br>" + 
        jsonData[index].post_title + "</a></div>";
        
    //If the next article will be the 5th on the row, close the div
    if ((postNum + 1) %4 == 0) {
        output += "</div>";
    }    
}

function scrollPage(){
    var elmnt = document.getElementById("art" + (postNum - 7));
    elmnt.scrollIntoView(true); 
    console.log("Post Scrolled to: " + elmnt.id);
}

function printArticles(printOutput){
    printOutput += "</div>";
    $("#fourGroup").html($("#fourGroup").html() + output);
}


