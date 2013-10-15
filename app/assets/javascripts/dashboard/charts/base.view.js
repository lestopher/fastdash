define([
  'base/view',
  'base/helper'
], function(BaseView, helper) {

  var BaseChartView = BaseView.extend({

    visibleSettings: false,

    events: {
      'click .settings-icon': 'handleSettingsClick'
    },

    render: function() {
      this.$el.html(helper.template('dashboard/charts/init'));
    },

    toggleSettings: function() {
      this.visibleSettings = !this.visibleSettings;
      this.$('.chart-settings').slideToggle();
    },

    handleSettingsClick: function(ev) {
      if (this.visibleSettings) {
        this.toggleSettings();
      } else {
        this.delegate.requestSettings();
      }
    }

  });

  return  BaseChartView;
});