var submitForm = function() {
  
  var username = $('#username').val();
  var email = $('#email').val();
  var password = $('#password').val();
  var captcha = grecaptcha.getResponse();

$.ajax({
      url: 'signup.php',
      type: 'post',
      data: { 'action': 'saveNewUser',
             'username': username,
             'email': email,
             'password': password,
             'g-recaptcha-response': captcha
            },
      success: function(data, status) {
        if(status == "success") {
          if(data == "New user saved OK") {
            
            //$('#sign_form').reset();
            $("#sign_form")[0].reset();
            $('#signup').hide();
            $('#profile-button').removeClass('hidden');
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
  $("#sign_form").validate({
    rules: {
      username: {
        required: true
      },
      email: {
        required: true
      },
      password: {
        required: true
      },
      confPass: {
        equalTo: password
      }
    },
    
  submitHandler: function() {
    if(grecaptcha.getResponse() == "") {
        alert("reCaptcha challenge required!");
      } else {
        submitForm();
      }
    }
    
  });
});


