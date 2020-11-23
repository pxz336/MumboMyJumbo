var postNum = 0;
var numArticles = 6;

function artAsync(){
    console.log("Get me my damn json you pig fuck");
    
    fetch("fetchPhp.php?postNum=" + postNum + 
         "&numArts=" + numArticles)
        .then(response => response.json())
        .then(data => {
            console.log(data);
        
            if (data.length > 0) {                
                output = "";                
                for (var i = 0; i < data.length; i++) {
                    if (postNum < 2) { 
                        firstTwoArts(data,i);                    
                    } else { //Specific to homepage                       
                        nextArts(data,i);
                    }                    
                    postNum += 1;
                }                
                printArticles(output); 

                if (postNum > 6) {
                    scrollPage(); 
                }                
            } else {
                $("#moreArtButt").hide();
                $("#bottomButt").show();
            }            
            numArticles = 8; //Specific to homepage
            console.log("postNum: " + postNum + " numArticles: " + numArticles);            
        });    
}

function firstTwoArts(jsonData,index) {    
                            
    firstOutputs = "<a href = 'article.php?artID="
        + jsonData[index].post_id + "' style = 'font-weight: bold'>" + 
        jsonData[index].post_title + "<br><img class = 'home-specialfit' src = '" +
        jsonData[index].filepath + "'></a></div>";

    if (postNum == 0) {
        var patPick = "<h3>Pat's Picks</h3>"
        $("#art0").html(patPick + firstOutputs);
    } else {
        var tomTrash = "<h3>Tom's Trash</h3>"
        $("#art1").html(tomTrash + firstOutputs);
    }
    
}

function nextArts(jsonData,index) {        
    //Because 1st 2 posts are next to TFOD
    //And then 4 posts per row thereafter
    if (postNum == 2 || (postNum - 2) %4 == 0) {
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
        //(postNum + 1, then -2 because of arts next to TFOD, so -1)
        if ((postNum - 1) %4 == 0) {
            output += "</div>";
        }
    
}

function scrollPage(){
    var elmnt = document.getElementById("art" + (postNum - 9));
    elmnt.scrollIntoView(true); 
    console.log("Post Scrolled to: " + elmnt.id);
}

function printArticles(printOutput){
    printOutput += "</div>";
    $("#fourGroup").html($("#fourGroup").html() + output);
}


