// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require geocomplete
//= require turbolinks
//= require bootstrap
//= require moment
//= require bootstrap-datetimepicker
//= require bootstrap_datetimepicker/dates
//= require_tree .


$(function() {
  var options = {
    map: "#map",
    location: "Skokie, IL",
    mapOptions: {
      zoom: 10
    },
    markerOptions: {
      draggable: true
    },
  };

  $("#address").geocomplete(options);

  $("#find").click(function() {
    $("address").trigger("geocode")
  });
});
