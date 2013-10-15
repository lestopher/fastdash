define([
  'base/view',
  'base/helper',
  'jquery.ui.all'
], function(BaseView, helper, jqueryui) {

  var DashboardView = BaseView.extend({

    render: function() {
      this.$el.html(helper.template('dashboard/init'));
      this.setupDrag();
      this.setupDrop();
    },

    getElementAtSlot: function(slot) {

      return this.$('[data-slot="' + slot + '"] .spot-inner');
    },

    chartDidSetupAtSlot: function(slot) {
      var el = this.getElementAtSlot(slot);

      el.parent().removeClass('empty');


    },

    setupDrag: function() {
      var that = this;

      this.$('.entity-choice').draggable({
        helper: 'clone',
        cursor: 'move',
        revert: 'invalid'
      });
    },

    setupDrop: function() {
      var that = this;
      this.$('.dashboard-spot').droppable({
        accept: '.entity-choice',
        hoverClass: "drop-hover",
        drop: function() { that.handleChartDrop.apply(that, arguments); }
      });
    },

    handleChartDrop: function(ev, ui) {
      var type   = ui.draggable.data('type'),
          target = ev.target,
          slot   = target ? $(target).data('slot') : null;

      if (slot != null) {
        this.delegate.requestChartLoadAtSlot(slot, type);
      }

    }

  });

  return DashboardView;
});