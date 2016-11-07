$(document).on('turbolinks:load', function() {
  $('.button-collapse').sideNav({
      menuWidth: 300, // Default is 240
      edge: 'left', // Choose the horizontal origin
      closeOnClick: true, // Closes side-nav on <a> clicks, useful for Angular/Meteor
      draggable: true // Choose whether you can drag to open on touch screens
    }
  );
  $.each($(':checkbox'), function(k, v) { var label = $('label[for="' + this.id + '"]');
  $(this).insertBefore(label); });
});
