define([
  'base/application',
  'dashboard/dashboard.controller'
], function(BaseApplication, DashboardController) {

  var DashboardApplication = BaseApplication.extend({

    start: function() {
      this.controller = new DashboardController();
      this.controller.setupViewProperties(this.$el);
    }

  });

  return DashboardApplication;
});