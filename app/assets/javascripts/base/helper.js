define([

], function() {
  var Helper = {

    template: function(name, data) {
      if (HandlebarsTemplates[name]) {

        return HandlebarsTemplates[name](data);
      }

      return '';
    }
  };

  return Helper;
});