var postNum = 0;
var numArticles = 10;

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
                    nextArts(data,i);                                       
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
            console.log("postNum: " + postNum + " numArticles: " + numArticles);            
        });    
}

function nextArts(jsonData,index) {        
    output += "<div class = 'row' style = 'border: 1px solid gray;' id = 'art" + postNum + "'>";    
    output += "<img class = 'admin-specialfit' src = '" + jsonData[index].filepath + "' alt = 'uh oh'>";
    output += "<button>Change<br>Photo</button>";
    output += "<div><a href = 'article.php?artID=" + jsonData[index].post_id +
        "' style = 'font-weight: bold'>" + jsonData[index].post_title + "</a></div>";
    output += "<div id = 'buttons'><button>Edit</button>" + 
              "<button onclick = adminDelete(" + jsonData[index].post_id + 
              ">Delete</button><button>TFOD</button>" + 
              "</div></div><br>";
    //Creates small column per post
    //Uses post # as post ID for DOM
    //Puts image in first, then title @ bottom

    
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


