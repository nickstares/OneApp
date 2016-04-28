$(document).on('ready',function(){

$(".hover").on ('mouseenter',function(){
    $(this).find(".color-overlay").css("visibility", "visible");
  });

 $(".hover").on ('mouseleave',function(){
    $(this).find(".color-overlay").css("visibility", "hidden");
  });

$(".hover").on ('mouseenter',function(){
    $(this).find(".color-overlay2").css("visibility", "visible");
  });

 $(".hover").on ('mouseleave',function(){
    $(this).find(".color-overlay2").css("visibility", "hidden");
  });
    var pgurl = window.location.href.substr(window.location.href.lastIndexOf("/")+1);
    $('li#navigation').each(function(){
          if($(this).attr("href") == pgurl || $(this).attr("href") === '' )
          $(this).addClass("active");
     });

// $('[data-toggle="popover"]').popover();


  var pageDivider = document.getElementsByClassName('.page-divider');
  pageDivider.setAttribute('text-insert', 'New content here!');
});
