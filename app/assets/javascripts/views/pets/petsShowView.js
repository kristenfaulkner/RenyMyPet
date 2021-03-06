RentMyKitty.Views.PetsShowView = Backbone.CompositeView.extend({
  
  template: JST['pets/show'],
  
  initialize: function() {
    this.listenTo(this.model, "sync", this.render);
    
    var newRental = new RentMyKitty.Models.PetRentalRequest({ pet_id: this.model.get('id'), pet: this.model });
    var newRentalView = new RentMyKitty.Views.PetRentalRequestsNew({ model: newRental });
    this.addSubview(".new-rental-request", newRentalView);
    
  
    var rentals = new RentMyKitty.Views.PetRentalRequestsIndex({
      collection: this.model.petRentalRequests(),
      model: this.model
    });
    this.addSubview(".rental-request-list", rentals);
    
    
    var photos = new RentMyKitty.Views.ImagesIndex({
      collection: this.model.images(),
      pet: this.model
    });
    this.addSubview(".images", photos);
  },
  
  render: function () {
    var view = this;
    var renderedContent = view.template({ pet: this.model });
    view.$el.html(renderedContent);
    view.attachSubviews();
    return view;
  }
  
});






























// this.listenTo(this.model.petRentalRequests(), "sync", this.render);
// this.listenTo(this.model.petRentalRequests(), "add", this.render);
// this.listenTo(this.model.petRentalRequests(), "remove", this.render);

// var indexView = new RentMyKitty.Views.PetRentalRequestsIndex();
// this.attachSubview(".new-rental-request", indexView);


// removePetRentalRequest: function (request) {
//     var subview = _.find(
//       this.subviews(".new-rental-request"),
//       function (request) {
//         return subview.model === request;
//       }
//     );
//
//     this.removeSubview(".new-rental-request", subview);
// },