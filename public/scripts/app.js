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
  initialize: function() {
    var that = this;
    // every collectionView should have a collection
    this.collection.on('sync', function(){
      //that.render();
    });
    this.collection.fetch();
    this.$el.html(''); //empty out any content inside of el
    // this.$el.html("<button type='submit' id = 'random'>Click for Random Quote</button>")
  },

  render: function() {
    //render function in collection has responsiblity of looping through all models and applying modle views
      // this.$el.html("<button type='submit' id = 'random'>Click for Random Quote</button>")
      this.$el.html('');
      var collection = this.collection.models;
      var random = _.sample(collection);
      new quotes.modelView({
          el: $('#quote-list'),
          model: random
      });
    },
    renderRandoInspo: function() {
        this.$el.html('');
        var collection = this.collection.models;
        var inspoFilterResults = this.collection.where({ category: 'inspo' });
        // getting one random sample from filtered results
        var randoInspo = _.sample(inspoFilterResults);
        new quotes.modelView({
            el: $('#quote-list'),
            model: randoInspo
        });
      },

      renderRandoObs: function() {
          this.$el.html('');
          var collection = this.collection.models;
          var obsFilterResults = this.collection.where({ category: 'obs' });
          // getting one random sample from filtered results
          var randoObs = _.sample(obsFilterResults);
          new quotes.modelView({
              el: $('#quote-list'),
              model: randoObs
          });
        },

        renderRandoGurl: function() {
            this.$el.html('');
            var collection = this.collection.models;
            var gurlFilterResults = this.collection.where({ category: 'gurl' });
            // getting one random sample from filtered results
            var randoGurl = _.sample(gurlFilterResults);
            new quotes.modelView({
                el: $('#quote-list'),
                model: randoGurl
            });
          },

          renderRandoMen: function() {
              this.$el.html('');
              var collection = this.collection.models;
              var menFilterResults = this.collection.where({ category: 'men' });
              // getting one random sample from filtered results
              var menInspo = _.sample(menFilterResults);
              new quotes.modelView({
                  el: $('#quote-list'),
                  model: menInspo
              });
            },
});

// end blueprints

$(document).ready(function(event) {
    //instantiate collection + collectionView
    active.collection = new quotes.collection();
    active.collectionView = new quotes.collectionView({
      collection: active.collection,
      el: $('#quote-list')
    });
    $('.random').on('click', function() {
      active.collectionView.render();
    })
    $('.inspo').on('click', function() {
      active.collectionView.renderRandoInspo();
    })
    $('.obs').on('click', function() {
      active.collectionView.renderRandoObs();
    })
    $('.gurl').on('click', function() {
      active.collectionView.renderRandoGurl();
    })
    $('.men').on('click', function() {
      active.collectionView.renderRandoMen();
    })

    $('.leslie').fadeIn("fast",function() {
    });
});
