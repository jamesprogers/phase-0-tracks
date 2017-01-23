

$(document).ready(function(){
  alert("So you want to learn to Code!");
  $("a").click(function(){
    alert("You're leaving this website!");
  });

  $("h2").hover(function(){
    $(this).addClass(".red");
  }, function(){
      $(this).removeClass(".red");
  });

});
