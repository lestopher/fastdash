define([
  'base/controller',
  './model'
], function(BaseController, ChartModel) {

  var BaseChart = BaseController.extend({

    initialize: function(slot, dashboard) {
      BaseController.prototype.initialize.apply(this, arguments);
      this.dashboard = dashboard;
      this.model = new ChartModel({ slot: slot });
    },

    setupView: function() {

    },

    requestSettings: function() {

    }

  });

  return BaseChart;
});