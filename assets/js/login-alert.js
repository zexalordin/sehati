$(function(){
var username = $("input[name=user]");
var password = $("input[name=password]");
            $('button[type="submit"]').click(function(e) {
                e.preventDefault();
                //little validation just to check username
                if (username.val() == "" || password.val() == "") {
                    //remove success mesage replaced with error message
                    $("#output").removeClass(' alert alert-success');
                    $("#output").addClass("alert alert-danger animated fadeInUp").html("sorry enter a username and password");
                }
                //console.log(textfield.val());

            });
});