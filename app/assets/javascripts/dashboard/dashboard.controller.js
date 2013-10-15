define([
  'base/controller',
  'dashboard/dashboard.view',
  'dashboard/charts/index'
], function(BaseControler, DashboardView, Charts) {

  var DashboardController = BaseControler.extend({

    setupView: function() {
      this.view = new DashboardView();
    },

    viewIsReady: function() {
      this.view.render();
    },

    requestChartLoadAtSlot: function(slot, type) {
      var ctor = Charts.getChartByType(type);

      if (ctor) {

      }
    }

  });

  return DashboardController;
});