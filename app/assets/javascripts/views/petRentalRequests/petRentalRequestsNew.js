RentMyKitty.Views.PetRentalRequestsNew = Backbone.CompositeView.extend({
  template: JST["pet_rental_requests/new"],
  error_message: JST["pet_rental_request/error"],
  className: this,
  
  events: {
    "click #submit-rental-request" : "submit",
    "changeDate #start-date" : "showMessage",
    "changeDate #end-date" : "showMessage"
  },
  
  initialize: function() {
    view = this;
  },
  
  render: function () {
    var renderedContent = this.template({
      rental: this.model
    });
    this.$el.html(renderedContent);    
    this.delegateDatepicker();    
    return this;
  },
  
  delegateDatepicker: function () {
    var unavailable = this.model.pet().unavailableDates().map(function(date) {
      return [date.getDate(), date.getMonth(), date.getFullYear()].join("-");
    });

    this.$('#datepicker').datepicker({
        minDate: new Date(),
        startDate: "today",
        // format: "mm/dd/yy",
        beforeShowDay: function(date) {
          var d = [date.getDate(), date.getMonth(), date.getFullYear()].join("-");
          return ($.inArray(d, unavailable) < 0);
        }
    });
  },
  
  delegateEvents: function () {
    Backbone.View.prototype.delegateEvents.call(this);
    this.delegateDatepicker();
  },

  validDates: function(start_date, end_date) {   
    var unavailable = this.model.pet().unavailableDates();
    var unavailable_times = unavailable.map(function(date) {
      return date.getTime();
    });
    var start = new Date(start_date).getTime();
    var end = new Date(end_date).getTime();
    var tmp = true;
    unavailable_times.forEach(function(date) {
      if (date >= start && date <= end) {
        tmp = false;
      }
    })
    return tmp;
  },

  showMessage: function() {
    var start = this.$("#start-date").val();
    var end = this.$("#end-date").val();
    if ((start == "") || (end == "")) {
      this.$('.message').html("");
    } else if (this.validDates(start, end)) {
        this.$('.message').html(
          "<div class='valid-request'><span class='glyphicon glyphicon-ok'></span> These dates are available</div>"
        );
    } else {
      this.$('.message').html(        
        "<div class='invalid-request'>Sorry, those dates are unavailable. Please try again.</div>"
      );
    }
  },
  
  clearInputs: function() {
    this.$("#start-date").val("");
    this.$("#end-date").val("");
  }, 
  
  checkExistingRequests: function(start, end) {
    console.log(new Date(start))
    console.log(new Date(end))
    var view = this;
    this.model.pet().petRentalRequests().forEach(function(rental) {
      console.log(rental.get('start_date'))
      console.log(rental.get('end_date'))
      if (rental.get('start_date') === new Date(start) && rental.get('end_date') == new Date(end) && rental.get('owner_id') == window.current_user_id) {
        alert("You already submitted a request for these dates");
        view.clearInputs();
        return false;
      } 
    });
    return true;
  },
  
  submit: function (event) {
    event.preventDefault();
    var view = this;
    var start_date = this.$("#start-date").val();
    var end_date = this.$("#end-date").val();
    if (this.validDates(start_date, end_date) && this.checkExistingRequests(start_date, end_date)) {
      var rental = this.model;
      rental.set({start_date: new Date(start_date), end_date: new Date(end_date)});
      rental.save({}, {
        success: function () {
          view.$('.message').html("");
          rental.pet().petRentalRequests().add(rental);
          alert("Your request has been submitted!");
          view.clearInputs();
        }
      });
    }
  }
});


// new Date(new Date(this.$("#start-date").val()).getTime() + new Date().getTimezoneOffset()*60*1000)