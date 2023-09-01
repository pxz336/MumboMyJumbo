var image, title, author, postDate, commNum;

function dataObject(){
    this.image = "image";
    this.title = "title";
    this.author = "author";
    this.postDate = "today";
    this.commNum = "no comment";
    
    var getImage();
    var getTitle();
    var getAuthor();
    var getDate();
    var getCommNum();
}

function getImage(){
    return this.image;
}


function getTitle(){
    return this.title;
}

function getAuthor(){
    return this.author;
}

function getDate(){
    return this.postDate;
}

function getCommNum(){
    return this.commNum;
}

function tfodScript(){
    //get data object from database
    var dataObject = new dataObject();
    
    var toWrite = document.getElementById("tfodContent");
    
    var img = dataObject.getImage();
    var title = dataObject.getTitle();
    var author = dataObject.getAuthor();
    var postDate = dataObject.getDate();
    var commNum = dataObject.getCommNum();
    
    toWrite.write(img + "<br" + title + "<br" + "By " + author + " - " + postDate + " - " + commNum + " comments");
    
}