function alterLoginButtons(){

    if ($("#loginBoolean").val() == "true"){

        $("#logout-button").show();   

        var username = $("#userNameSession").val();                        
        $("#userNameHome").html("Welcome, <strong>" +
            username + "</strong>");
        $("#userNameHome").show();
        $("#new-post-button").show();

        $("#signup-button").hide();
        $("#login-button").hide();  

    } else {
        $("#logout-button").hide();
        $("#userNameHome").hide();
        $("#new-post-button").hide();

        $("#signup-button").show();
        $("#login-button").show();
    }
}