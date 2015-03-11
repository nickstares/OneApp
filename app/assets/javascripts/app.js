$(document).on('ready',function(){

// $(".thumbnail").on ('mouseenter',function(){
//             $(this).find(".color-overlay").css("visibility", "visible");
//           });
//           $(".thumbnail").on ('mouseleave', function(){
//             $(this).find(".color-overlay").css("visibility", "hidden");
//           });

$(".hover").hover(
  function(){
    $(this).find(".color-overlay").css("visibility", "visible");
  },
  function(){
    $(this).find(".color-overlay").css("visibility", "hidden");
  })
});