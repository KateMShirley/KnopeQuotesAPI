var app = app || {};
var active = active || {};

app.model = Backbone.Model.extend();

$(document).ready(function(event) {
  active.modelTest = new app.model();
});
