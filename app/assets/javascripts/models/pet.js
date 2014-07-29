RentMyKitty.Models.Pet = Backbone.Model.extend({
  urlRoot: "/api/pets",
  
  initialize: function() {
  },
  
  petRentalRequests: function () {
    this._petRentalRequests = this._petRentalRequests ||
      new RentMyKitty.Collections.PetRentalRequests([], { pet: this });
    return this._petRentalRequests;
  },

  parse: function (payload) {
    if (payload.pet_rental_requests) {
      this.petRentalRequests().set(payload.pet_rental_requests, { parse: true });
      delete payload.pet_rental_requests;
    }
    return payload;
  },
    
  unavailableDates: function() {
    var dates = [];  
    var approved = this.petRentalRequests().filter(function(request) { 
      return request.get('status') === "Approved";
    });
    approved.forEach(function(res) {
      var current = res.get('start_date');
      while (current <= res.get('end_date')) {
        dates.push(current);
        var tmp = current.getTime() + 60*60*24*1000;
        current = new Date(tmp);
      }
    });
  
    dates = dates.map(function (date) {
      d = new Date(date);
        return d.setMinutes(d.getTimezoneOffset());
    });
    return dates;
  }
    // if (payload.owner) {
    //   this.owner().set(payload.owner, { parse: true });
    //   delete payload.owner;
    // }

  // owner: function() {
  //   this._owner = this._owner || new RentMyKitty.Models.User({}, { id: this.owner_id, pet: this })
  //   return this._owner;
  // }
});