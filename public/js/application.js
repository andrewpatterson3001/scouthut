$(document).ready(function() {
  displaySignUp();
  showSignUp();
  showSignIn();
});

var displaySignUp = function(){
  $('.signin').hide();
};

var showSignUp = function(){
  $('#signup').on("click", function(){
      $('.signup').show()
      $('.signin').hide()
  });
};

var showSignIn = function(){
  $('#signin').on("click", function(){
      $('.signin').show()
      $('.signup').hide()
  });
};