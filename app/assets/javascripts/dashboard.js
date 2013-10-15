define([
  'dashboard/app',
  'jquery',
  'backbone'
], function(PageApplication, $, Backbone) {
  $(function() {
    var app = new PageApplication($('#app'));

    app.start();

    window.app = app;
  });
});