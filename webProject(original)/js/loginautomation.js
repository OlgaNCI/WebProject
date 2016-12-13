var loginForm = function() {
  
  var loginName = $('#loginName').val();
  var loginPassword = $('#loginPassword').val();
  
  $.ajax({
      url: 'login.php',
      type: 'post',
      data: { 'action': 'loginUser',
              'loginName': loginName,
              'loginPassword': loginPassword
            },
      success: function(data, status) {
        if(status == "success") {
            switch(data) {
                 case "User Does not exist":
                   alert("User Does not exist");
                   break;
                 case "Password Incorrect":
                   alert("Password Incorrect");
                   break;
                 case "User Login success":
                   alert("User Login success");
                   $('#log').hide();
                   $('#profile-button').removeClass('hidden');
                   break;
               }
        }
      },
      error: function(xhr, desc, err) {
        console.log(xhr);
        console.log("Details: " + desc + "\nError:" + err);
      }  
  });
};

$(function() {
  $("#log_form").validate({
    rules: {
      username: {
        required: true
      },
      password: {
        required: true
      } 
    },
   
    submitHandler: function() {
      loginForm();
    }
  });
});


  