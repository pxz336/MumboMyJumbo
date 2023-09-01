var tagNum = 0; 
var highestTagNum = 0;
var tagInput;
var tagVisible;

var rsvdList = ["TFOD","T.F.O.D.","PAT'S PICKS",
                "PATS PICKS","PAT'SPICKS","PATSPICKS",
                "TOM'S TRASH","TOM'STRASH","TOMSTRASH",
                "TOMS TRASH"];

function otherCheck() {
    if ($("#presets").val() == "Other") {
        $("#otherInput").show();
    } else {
        $("#otherInput").hide();
    }
 }

function tagger() {
    
    newIndex = createElements();
    if (newIndex > highestTagNum){
        highestTagNum = newIndex;
    }
    
    //If custom tag    
    if (other = ($("#presets").val() == "Other")) {        
        var custTag = $("#otherInput").val();
        console.log("custom tag: " + custTag);
       
        tagInput.value = custTag;           
        tagVisible.innerHTML = custTag;        
        $("#otherInput").val("");//Resets tag input box       
    } else { //Otherwise preset tag
        console.log("preset tag: " + $("#presets").val());
        tagInput.value = $("#presets").val();           
        tagVisible.innerHTML = $("#presets").val();         
    }
    
    //Checks for blank or duplicate tags
    //Returns true if there are problems
    if (notBad = checkBad(other, custTag, tagInput) == false) {
        //Adds tags to page
        $("#tags-inputs").append(tagInput);
        $("#tags-vis").append(tagVisible);
        tagNum++;
        errMsg(69,69);
        console.log("numTags: " + tagNum);
    }
    
    console.log("Tag bad = " + notBad);
    $("#numTagsPage").val(tagNum);
    
    //Resets variables for next go around
    tagInput = null;
    tagVisible = null;
    custTag = null;
}

function createElements(){
    var i = 0;
    while (document.getElementById("hid-tag" + i)){
        i++;
    }
    
    //creates tag for form
    tagInput = document.createElement("input");
    tagInput.setAttribute("id", "hid-tag" + i);
    tagInput.setAttribute("type", "hidden");
    tagInput.setAttribute("name", "hid-tag" + i);
    
    //creates tag for user to see
    tagVisible = document.createElement("button");
    tagVisible.setAttribute("id", "tag" + i);
    tagVisible.setAttribute("class", "btn btn-outline-success my-2 my-sm-0");
    tagVisible.setAttribute("type", "button");
    tagVisible.setAttribute("onclick", "deleteTag(this.id);");
    
    return i;
}

function checkBad(chkOther, chkCust, chkInput) {
    //Disallows blank custom tags
    if (chkOther == true && !chkCust) {
        errMsg(0, 0);
        return true;
    } else if (tagNum > 0) { //Checks for duplicate tags         
        var i;
        for (i = 0; i < highestTagNum; i++) {
            console.log("Checking tag" + i);
            try {
                if (document.getElementById("hid-tag" + i).value.toUpperCase() == (chkInput.value.toUpperCase())) {
                    console.log("Match on tag" + i);
                    errMsg(1, chkInput.value);
                    return true;
                } else {
                    console.log("No match on tag" + i);
                }                
            } catch (e) {
                if (e instanceof TypeError){
                    console.log("Blank tag, index " + i);
                    continue;
                } else {
                    console.log("Well we found an error, but it's not a TypeError");
                }                
            }            
        }        
    }    
    //Checks for reserved tags
    console.log("input value for switch: " + chkInput.value.toUpperCase());    
    var j;
    for (j = 0; j < rsvdList.length; j++) {
        if (chkInput.value.toUpperCase() == rsvdList[j]){
            errMsg(2, chkInput.value);
            return true;
        }
    }
    //If only 1 tag, and isn't a reserved tag. Or if there are no duplicates.
    return false;
}

function deleteTag(tagId) {
    console.log("delete tagID: " + tagId);
    
    $("#" + tagId).remove();
    $("#hid-" + tagId).remove();
    
    tagNum--;
    $("#numTagsPage").val(tagNum);
    console.log("numTags: " + tagNum);
}

function errMsg(errCode, tagName){
    console.log("errMsg tagName = " + tagName);
    $("#tagErr").show();
    switch(errCode) {
        case 0:
            $("#tagErr").html("Please no blank tags!");
            break;
        case 1:
            $("#tagErr").html("You've already added the " + tagName + " tag!");
            break;
        case 2:
            $("#tagErr").html("Sorry, " + tagName + " is a reserved tag!");
            break;
        default:
            $("#tagErr").hide();
    }
    
}