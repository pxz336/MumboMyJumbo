var postNum = 0;
var numArticles = 6;

/*if(postNum > 0) {
    
}*/

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
                    } else {                        
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
            
            numArticles = 8;
            console.log("postNum: " + postNum + " numArticles: " + numArticles);
            
        });    
}

function firstTwoArts(jsonData,index) {    
                            
    firstOutputs = "<figure><a class = 'figure-caption' href = 'article.php?artID="
        + jsonData[index].post_id + "' style = 'font-weight: bold'>" + 
        jsonData[index].post_title + "<br><img class = 'col-sm art-img figure-image' src = '" +
        jsonData[index].filepath + "'></a></figure></div>";

    if (postNum == 0) {
        $("#art0").html(firstOutputs);
    } else {
        $("#art1").html(firstOutputs);
    }
    
}

function nextArts(jsonData,index) {        
    //Because 1st 2 posts are next to TFOD
    //And then 4 posts per row thereafter
    if (postNum == 2 || (postNum - 2) %4 == 0) {
        output += "<div style = 'height 50px; background-color: rgba(255,0,0,0.1);'><div class = 'row' height = 250px>";
    }
       
    //Creates small column per post
    //Uses post # as post ID for DOM
    //Puts image in first, then title @ bottom
    output += "<div class='col-sm mh-3' id = 'art" + postNum + 
        "'><figure><a class = 'figure-caption' href = 'article.php?artID="
        + jsonData[index].post_id + "' style = 'font-weight: bold'>" + 
        "<img class = 'col-sm art-img figure-image' src = '" +
        jsonData[index].filepath + "'>" + 
        jsonData[index].post_title + "<br></a></figure></div>";
        
        //If the next article will be the 5th on the row, close the div
        //(postNum + 1, then -2 because of arts next to TFOD, so -1)
        if ((postNum - 1) %4 == 0) {
            output += "</div></div>";
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


