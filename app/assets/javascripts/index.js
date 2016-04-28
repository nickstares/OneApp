$(document).ready(function(){
  $('.popover-signup').popover({
     'placement':'bottom',
  }).popover('show');
  console.log("hello")
  $('body').on('click', function (e) {
    console.log("clicked");
    $('.popover-signup').popover('hide')
  });

})
