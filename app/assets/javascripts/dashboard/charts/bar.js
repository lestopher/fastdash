define([
  './base',
  './bar.view'
], function(BaseChart, BarView) {

  var BarChart = BaseChart.extend({

    setupView: function() {
      this.view = new BarView();
    }

  });

  return BarChart;
});