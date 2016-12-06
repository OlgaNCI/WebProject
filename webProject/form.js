$(document).ready(function() {
   $('#signup-button').click(function() {
     $('#log').hide(),
     $('#signup').fadeIn();
  }),
  $('#login-button').click(function(){
      $('#signup').hide(),
      $('#log').fadeIn();
  });
                           
});