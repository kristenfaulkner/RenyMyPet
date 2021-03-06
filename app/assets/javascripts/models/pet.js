RentMyKitty.Models.Pet = Backbone.Model.extend({
  urlRoot: "/api/pets",
  
  initialize: function() {
  },
  
  petRentalRequests: function () {
    this._petRentalRequests = this._petRentalRequests ||
      new RentMyKitty.Collections.PetRentalRequests([], { pet: this});
    return this._petRentalRequests;
  },

  images: function () {
    this._images = this._images ||
      new RentMyKitty.Collections.Images([], { pet: this});
    return this._images;
  },
  
  parse: function (payload) {
    var pet  = this;
    if (payload.pet_rental_requests) {
      this.petRentalRequests().set(payload.pet_rental_requests, { parse: true });
      delete payload.pet_rental_requests;
    }
    if (payload.images) {
      this.images().set(payload.images, {  parse: true });
      delete payload.images;
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
  },
  
  validDates: function(start_date, end_date) {

    var unavailable = this.unavailableDates();
    var unavailable_times = unavailable.map(function(date) {
      return (new Date(date)).getTime();
    });
    var start = (new Date(start_date)).getTime();
    var end = (new Date(end_date)).getTime();
    var tmp = true;
    unavailable_times.forEach(function(date) {
      if (date >= start && date <= end) {
        tmp = false;
      }
    })
    return tmp;
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