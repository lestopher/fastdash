define([
  'base/application'
], function(BaseApplication) {

  var DashboardApplication = BaseApplication.extend({

    start: function() {
      alert("here");
    }

  });

  return DashboardApplication;
});