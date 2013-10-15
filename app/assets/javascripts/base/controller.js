define([
  'backbone'
], function(Backbone) {

  var BaseController = function() {
    this.initialize.apply(this, arguments);

    return this;
  };

  BaseController.prototype = {

    initialize: function() {
      this.setupView();
    },

    setupView: function() {

    },

    viewIsReady: function() {
      this.view.render();
    },

    setupViewProperties: function(el) {
      this.view.setElement(el);
      this.view.delegate = this;
      this.viewIsReady();

      return this;
    }

  };

  BaseController.extend = Backbone.Model.extend;

  return BaseController;
});