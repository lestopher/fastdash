define([
  'backbone',
  'underscore',
  'jquery'
], function(Backbone, _, $) {
  var Application = function() {

    this.initialize();

    return this;
  };

  Application.prototype = {

    initialize: function(el) {
      this.$el = $(el);
      this.el = this.$el.get(0);
    },

    start: function() {

    }

  };



  Application.extend = function(proto) {
    proto.routes = _.extend({}, this.prototype.routes, proto.routes);

    return Backbone.Model.extend.apply(this, arguments);
  };

  return Application;
});