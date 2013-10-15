define([
  './bar'
], function(Bar) {

  var Charts = {
    charts: {
      bar: Bar
    },

    getChartByType: function(type) {

      return this.charts[type];
    }

  };

  return Charts;
});