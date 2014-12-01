// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/sstephenson/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require_tree .

// $(document).ready(function(){
// 	$('#login-trigger').on("click", dropDown("#login-trigger", "#login-content"));
// 	$('#signup-trigger').on("click", dropDown("#signup-trigger", "#signup-content"));
// });

// function dropDown(tag, content){
// 	$(content).slideToggle();
//     $(tag).toggleClass('active');          
    
//     if ($(tag).hasClass('active')) $(tag).find('span').html('&#x25B2;')
//       else $(tag).find('span').html('&#x25BC;')
// };

$(document).ready(function(){
  $('#login-trigger').click(function(){
    $(this).next('#login-content').slideToggle();
    $(this).toggleClass('active');          
    
    if ($(this).hasClass('active')) $(this).find('span').html('&#x25B2;')
      else $(this).find('span').html('&#x25BC;')
    })
  $('#signup-trigger').click(function(){
    $(this).next('#signup-content').slideToggle();
    $(this).toggleClass('active');          
    
    if ($(this).hasClass('active')) $(this).find('span').html('&#x25B2;')
      else $(this).find('span').html('&#x25BC;')
    })
  $('#login-content').mouseout(function(){
  	$('#login-trigger').removeClass('active');
  	$('#login-trigger').find('span').html('&#x25BC;');
  	$(this).hide();
  });
});

