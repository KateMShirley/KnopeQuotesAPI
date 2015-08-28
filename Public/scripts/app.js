//NAMESPACING//
var quotes = quotes || {};
var active = active || {};


// blueprints
quotes.model = Backbone.Model.extend();
quotes.collection = Backbone.Collection.extend({
  //binds to get all route
  model: quotes.model,
  url: '/api/quotes'
});

quotes.modelView = Backbone.View.extend({
  initialize: function(){
    //every modelView should have a model
    //this.model
    this.template = _.template($('#quote-template').html());
    this.render();
  },
  render: function(){
    var data = this.model.attributes;
    this.$el.append(this.template(data));
  }
});

quotes.collectionView = Backbone.View.extend({
  events: {
    'click button': 'render',
    'click .randoInspo': 'renderRandoInspo'
  },
  initialize: function() {
    var that = this;
    // every collectionView should have a collection
    this.collection.on('sync', function(){
      //that.render();
    });
    this.collection.fetch();
    this.$el.html(''); //empty out any content inside of el
    this.$el.html("<button type='submit' id = 'random'>Click for Random Quote</button>")
  },

  render: function() {
    //render function in collection has responsiblity of looping through all models and applying modle views
      this.$el.html("<button type='submit' id = 'random'>Click for Random Quote</button>")
      var collection = this.collection.models;
      // filtering using .where
      var inspoFilterResults = this.collection.where({ category: 'inspo' });
      // getting one random sample from filtered results
      var randoInspo = _.sample(inspoFilterResults);
      // logging them
      console.log('----');
      console.log(randoInspo.attributes);
      console.log('----');
      // var inspoQuote = _.where(collection, {category: 'inspo'})
          // var randomQuote = _.sample(collection)_.where (collection, {category: 'inspo'})
      new quotes.modelView({
          el: $('#quote-list'),
          model: randoInspo
      });
    },
    renderRandoInspo: function() {
      console.log('hai k8')
      //render function in collection has responsiblity of looping through all models and applying modle views
        this.$el.html("<button type='submit' id = 'random'>Click for Random Quote</button>")
        var collection = this.collection.models;
        // filtering using .where
        var inspoFilterResults = this.collection.where({ category: 'inspo' });
        // getting one random sample from filtered results
        var randoInspo = _.sample(inspoFilterResults);
        // logging them
        console.log('----');
        console.log(randoInspo.attributes);
        console.log('----');
        // var inspoQuote = _.where(collection, {category: 'inspo'})
            // var randomQuote = _.sample(collection)_.where (collection, {category: 'inspo'})
        new quotes.modelView({
            el: $('#quote-list'),
            model: randoInspo
        });
      }
});

// end blueprints

$(document).ready(function(event) {
    //instantiate collection + collectionView
    active.collection = new quotes.collection();
    active.collectionView = new quotes.collectionView({
      collection: active.collection,
      el: $('#quote-list')
    });

    $('.randoInspo').on('click', function() {
      active.collectionView.renderRandoInspo();
    })
});
