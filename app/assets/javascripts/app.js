$(document).on('ready',function(){

    console.log("POOOP")
$(".hover").on ('mouseenter',function(){
    $(this).find(".color-overlay").css("visibility", "visible");
  })

 $(".hover").on ('mouseleave',function(){
    $(this).find(".color-overlay").css("visibility", "hidden");
  })
});
