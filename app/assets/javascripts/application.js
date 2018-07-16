// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, or any plugin's
// vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery3
//= require jquery_ujs
//= require_tree .

$(function() {
  $('.all-posts-link').click(function(event){
    event.preventDefault();
    $('#all-posts').show();
    $('#my-posts').hide();
    $('.all-posts-link').hide();
    $('.my-posts-link').show();
  });
  $('.my-posts-link').click(function(event){
    event.preventDefault();
    $('#all-posts').hide();
    $('#my-posts').show();
    $('.my-posts-link').hide();
    $('.all-posts-link').show();
  });
});