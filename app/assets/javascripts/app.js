$(document).on('ready',function(){

$(".hover").hover(
  function(){
    $(this).find(".color-overlay").css("visibility", "visible");
  },
  function(){
    $(this).find(".color-overlay").css("visibility", "hidden");
  })
});