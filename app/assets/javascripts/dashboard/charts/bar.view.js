define([
  './base.view'
], function(BaseView) {

  var BarView = BaseView.extend({

    render: function() {
      BaseView.prototype.render.apply(this, arguments);
      this.$el.addClass('bar-chart');
    }

  });

  return BarView;
});