$(document).ready(function() {
  
  $('#signup-button').click(function() {
       $('#log').hide(),
       $('#profile').hide(),
       $('#signup').fadeIn();
  }),
    
  $('#login-button').click(function() {
      $('#signup').hide(),
      $('#profile').hide(),
      $('#log').fadeIn();
  }),
    
 $('#profile-button').click(function() {
       $('#log').hide(),
       $('#profile').fadeIn();
  }),  
  
 $('#cancelSignup').click(function() {
      $('#signup').hide()
 }),

 $('#cancelLogin').click(function() {
      $('#log').hide()
 });
   
 loadCaptcha();
     
});