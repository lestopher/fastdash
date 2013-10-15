define([
  'base/controller',
  'dashboard/dashboard.view',
  'dashboard/charts/index'
], function(BaseControler, DashboardView, Charts) {

  var DashboardController = BaseControler.extend({

    initialize: function() {
      BaseControler.prototype.initialize.apply(this, arguments);
      this.chartSlots = {};
    },

    setupView: function() {
      this.view = new DashboardView();
    },

    viewIsReady: function() {
      this.view.render();
    },

    requestChartLoadAtSlot: function(slot, type) {
      var ctor  = Charts.getChartByType(type);

      if (ctor) {
        this.destroyChartAtSlot(slot);
        this.setupChartAtSlot(slot, new ctor(slot, this));
      }
    },

    setupChartAtSlot: function(slot, chart) {
      var view = this.view;

      chart.setupViewProperties(view.getElementAtSlot(slot));
      view.chartDidSetupAtSlot(slot);
      this.chartSlots[slot] = chart;
    },

    destroyChartAtSlot: function(slot) {

    }

  });

  return DashboardController;
});