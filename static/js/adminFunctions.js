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

