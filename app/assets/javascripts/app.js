$(document).on('ready',function(){

$(".hover").on ('mouseenter',function(){
    $(this).find(".color-overlay").css("visibility", "visible");
  })

 $(".hover").on ('mouseleave',function(){
    $(this).find(".color-overlay").css("visibility", "hidden");
  })

 // $('li#navigation').on('click', function(g) {  // Starting the Game!
 //    console.log("poop")
    var pgurl = window.location.href.substr(window.location.href.lastIndexOf("/")+1);
    $('li#navigation').each(function(){
          if($(this).attr("href") == pgurl || $(this).attr("href") == '' )
          $(this).addClass("active");
     })
});



// var pgurl = window.location.href.substr(window.location.href
// .lastIndexOf("/")+1);
//      $("#nav ul li a").each(function(){
//           if($(this).attr("href") == pgurl || $(this).attr("href") == '' )
//           $(this).addClass("active");
//      })
// });