# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


Guest = User.create(username: "guestlogin", password: "guestlogin")
Kristen = User.create(username: "kristen", password: "kristen" )
AppAcademy = User.create(username: "appacademy", password: "appacademy" )
ParisHilton = User.create(username: "parishilton", password: "parishilton")
Obama = User.create(username: "obamaobama", password: "obamaobama")


Gizmo  = Pet.create( name: "Gizmo",    owner_id: 1, animal: "cat", age: 1,  color: "black", gender: "Male", bio: "Not yet potty trained", image_url: "http://upload.wikimedia.org/wikipedia/commons/2/22/Turkish_Van_Cat.jpg", address: "Pier 15" , city: "San Francisco" , state: "CA", lat: 37.80197, lng: -122.39623)
Sandy  = Pet.create( name: "Sandy",    owner_id: 1, animal: "cat", age: 5,  color: "gray",  gender: "Female", bio: "Rescued from the streets", image_url: "http://lolomoda.com/wp-content/uploads/30192_1600x1200-4-cute-cats.jpg", address: "800 N Point St", city: "San Francisco" , state: "CA", zipcode: 94109, lat: 37.80580, lng: -122.42058  )
Jaguar = Pet.create( name: "Jaguar",   owner_id: 1, animal: "cat", age: 5,  color: "white", gender: "Male", bio: "Professionally trained", image_url: "http://jasonlefkowitz.net/wp-content/uploads/2013/07/Cute-Cats-cats-33440930-1280-800.jpg", address: "584 Washington Street", city: "San Francisco" , state: "CA", zipcode:  94111, lat: 37.79560, lng: -122.40296 )
Bella  = Pet.create( name: "Bella",    owner_id: 1, animal: "cat", age: 10, color: "gray",  gender: "Female", bio: "Likes to chase mice", image_url: "http://reaganpluscats.com/wp-content/uploads/2013/07/Current-Event-Cat-Royal-Baby.png", address: "178 Townsend St.", city: "San Francisco" , state: "CA", zipcode: 94107, lat: 37.76182, lng: -122.39859  )
Ginger = Pet.create( name: "Ginger",   owner_id: 2, animal: "cat", age: 7,  color: "yellow",gender: "Male", bio: "Very jumpy, likes to climb on people", image_url: "http://static.baubau.bg/resources/neverni-mitove-za-kotkite.jpg", address: "1700 Post St." , city: "San Francisco" , state: "CA", zipcode: 94115, lat: 37.78775, lng: -122.43823 )
Lily   = Pet.create( name: "Lily",     owner_id: 2, animal: "cat", age: 2,  color: "black", gender: "Female", bio: "Likes to go on longs walks", image_url: "http://www.foodiggity.com/wp-content/uploads/2013/05/sushi-cats-2.jpeg", address: "2316 Polk St.", city: "San Francisco" , state: "CA" , zipcode: 94109, lat: 37.79298, lng: -122.42124   )
Oscar  = Pet.create( name: "Oscar",    owner_id: 2, animal: "cat", age: 8,  color: "brown",  gender: "Male", bio: "Sleeps all day long" , image_url: "http://www.blogcdn.com/www.pawnation.com/media/2013/10/cat-smartoriginal-1382023522.jpg", address: "1 Mission Street", city: "San Francisco" , state: "CA" , zipcode: 94105, lat: 37.78902, lng: -122.39151)
Tiger  = Pet.create( name: "Tiger",    owner_id: 3, animal: "cat", age: 5,  color: "black", gender: "Male", bio: "Behaves well if not hungry", image_url: "http://static.tumblr.com/81b6d42b4064def5e9062d5f4410c820/betml74/Yl5ml0lia/tumblr_static_impress.jpg", address: "1 Kearny St.", city: "San Francisco" , state: "CA" , zipcode: 94108, lat: 37.79094, lng:	-122.40850   )
Coco   = Pet.create( name: "Coco",     owner_id: 3, animal: "cat", age: 7,  color: "white", gender: "Female", bio: "Digs holes outside on the ground"  , image_url: "http://www.vpfunworld.com/wp-content/uploads/2014/06/pics-of-cute-cats-and-dogs-1.jpg", address: "3640 Sacramento St.", city: "San Francisco" , state: "CA" , zipcode: 94118, lat: 37.78229, lng:	-122.46371 )
Simba  = Pet.create( name: "Simba",    owner_id: 3, animal: "cat", age: 5,  color: "brown", gender: "Male", bio: "Very gentle with people, likes to be held", image_url: "http://4pet.com/us/wp-content/uploads/2014/05/cat-book.gif", address: "1722 Sacramento St." , city: "San Francisco" , state: "CA" , zipcode: 94109, lat: 37.79298, lng:	-122.42124  )
Misty  = Pet.create( name: "Misty",    owner_id: 4, animal: "cat", age: 10, color: "gray",  gender: "Female", bio: "Very calm and well mannered", image_url: "https://pbs.twimg.com/profile_images/453366560455794688/sG8SKhkg.jpeg", address: "3859 Piedmont Ave", city: "San Francisco" , state: "CA" , zipcode: 94611, lat: 37.83363, lng:	-122.20298   )
Smokey = Pet.create( name: "Smokey",   owner_id: 4, animal: "cat", age: 7,  color: "yellow",gender: "Male", bio: "Will follow you if you leave the house", image_url: "http://1.bp.blogspot.com/-V1uCSn-iILU/UOcThPUToXI/AAAAAAAABQk/fpk3pH5ir70/s1600/Cats_wallpapers_160.jpg", address: "178 Townsend St.", city: "San Francisco" , state: "CA" , zipcode: 94107, lat: 37.76182, lng:	-122.39859 )
Lucy   = Pet.create( name: "Lucy",     owner_id: 4, animal: "cat", age: 2,  color: "black", gender: "Female", bio: "Does not like to be startled", image_url: "http://homemadeadventure.files.wordpress.com/2011/04/yoga-cats.jpg", address: "16 Washington St", city: "San Francisco" , state: "CA" , zipcode: 94015, lat: 37.68000, lng:	-122.48635   )
Max    = Pet.create( name: "Max", owner_id: 5, animal: "cat", age: 8,  color: "brown",  gender: "Male", bio: "Likes to play with tennis balls" , image_url: "http://images.boomsbeat.com/data/images/full/24386/cat_6-jpg.jpg", address: "7031 Mission St.", city: "San Francisco" , state: "CA" , zipcode: 94014, lat: 37.69046, lng:	-122.45239   )
DrEvil = Pet.create( name: "Dr. Evil", owner_id: 5, animal: "cat", age: 8,  color: "gray",  gender: "Male", bio: "EATS MICE" , image_url: "http://images.boomsbeat.com/data/images/full/37630/cat_3-jpg.jpg", address: "101 S Mayfair Ave" , city: "San Francisco" , state: "CA" , zipcode:  94015, lat: 37.68000, lng:	-122.48635  )


PetRentalRequest.create(pet_id: 1,  requester_id: 2, start_date: "01/08/2014".to_datetime, end_date:"09/08/2014".to_datetime)
PetRentalRequest.create(pet_id: 1,  requester_id: 3,  start_date: "03/08/2014".to_datetime,  end_date:"08/08/2014".to_datetime)
PetRentalRequest.create(pet_id: 2,  requester_id: 4, start_date: "08/08/2014".to_datetime,  end_date:"08/08/2014".to_datetime)
PetRentalRequest.create(pet_id: 2,  requester_id: 5, start_date: "08/08/2014".to_datetime,  end_date:"11/08/2014".to_datetime)
PetRentalRequest.create(pet_id: 3, requester_id: 2, start_date: "04/08/2014".to_datetime,  end_date:"08/08/2014".to_datetime)
PetRentalRequest.create(pet_id: 3, requester_id: 3,  start_date: "10/08/2014".to_datetime,  end_date:"12/08/2014".to_datetime)
PetRentalRequest.create(pet_id: 4,  requester_id: 4, start_date: "12/08/2014".to_datetime, end_date:"21/08/2014".to_datetime)
PetRentalRequest.create(pet_id: 4,  requester_id: 5, start_date: "14/08/2014".to_datetime, end_date:"16/08/2014".to_datetime)
PetRentalRequest.create(pet_id: 4,  requester_id: 2, start_date: "27/08/2014".to_datetime, end_date:"30/08/2014".to_datetime)
PetRentalRequest.create(pet_id: 4,  requester_id: 3, start_date: "29/08/2014".to_datetime, end_date:"31/08/2014".to_datetime)
PetRentalRequest.create(pet_id: 4,  requester_id: 5, start_date: "31/08/2014".to_datetime, end_date:"01/09/2014".to_datetime)
PetRentalRequest.create(pet_id: 5, requester_id: 4, start_date: "01/08/2014".to_datetime,  end_date:"14/08/2014".to_datetime)
PetRentalRequest.create(pet_id: 6,   requester_id: 3, start_date: "06/08/2014".to_datetime, end_date:"08/08/2014".to_datetime)
PetRentalRequest.create(pet_id: 7,  requester_id: 3, start_date: "12/08/2014".to_datetime,  end_date:"14/08/2014".to_datetime)
PetRentalRequest.create(pet_id: 8, requester_id: 4, start_date: "08/08/2014".to_datetime, end_date:"16/08/2014".to_datetime)
PetRentalRequest.create(pet_id: 9, requester_id: 4, start_date: "04/08/2014".to_datetime,  end_date:"08/08/2014".to_datetime)
PetRentalRequest.create(pet_id: 10,  requester_id: 2, start_date: "16/08/2014".to_datetime,  end_date:"17/08/2014".to_datetime)
PetRentalRequest.create(pet_id: 11,  requester_id: 3,  start_date: "23/08/2014".to_datetime,  end_date:"25/08/2014".to_datetime)
PetRentalRequest.create(pet_id: 12,  requester_id: 3, start_date: "26/08/2014".to_datetime,  end_date:"27/08/2014".to_datetime)
PetRentalRequest.create(pet_id: 13, requester_id: 2,start_date: "21/08/2014".to_datetime, end_date:"22/08/2014".to_datetime)
PetRentalRequest.create(pet_id: 13,   requester_id: 3, start_date: "23/08/2014".to_datetime,  end_date:"24/08/2014".to_datetime)
PetRentalRequest.create(pet_id: 14, requester_id: 4, start_date: "29/08/2014".to_datetime,  end_date:"30/08/2014".to_datetime)


# White
Image.create(pet_id: 1, image_url: "https://www.filepicker.io/api/file/sasdZV3NQCCqF3CnOOsC")
Image.create(pet_id: 1, image_url: "https://www.filepicker.io/api/file/a3HewrbLTISaI6pbiLRl")
Image.create(pet_id: 1, image_url: "https://www.filepicker.io/api/file/GrXktTJtSNWfSkJgbO3L")
Image.create(pet_id: 1, image_url: "https://www.filepicker.io/api/file/ny18x79T7eeeBYzY4mtQ")
Image.create(pet_id: 1, image_url: "https://www.filepicker.io/api/file/EWFwc2JFTCK46fx8rvFc" )

#gray
Image.create(pet_id: 2, image_url: "https://www.filepicker.io/api/file/GrXktTJtSNWfSkJgbO3L")
Image.create(pet_id: 2, image_url: "https://www.filepicker.io/api/file/ny18x79T7eeeBYzY4mtQ")
Image.create(pet_id: 2, image_url: "https://www.filepicker.io/api/file/EWFwc2JFTCK46fx8rvFc" )
Image.create(pet_id: 2, image_url: "https://www.filepicker.io/api/file/Scl7DR2GSlWMYICUnzur")
Image.create(pet_id: 2, image_url: "https://www.filepicker.io/api/file/MFt4DSooT3OYgz0qgzDN")
Image.create(pet_id: 2, image_url: "https://www.filepicker.io/api/file/iVdLS4O4TuSMPTpR6vUb")
Image.create(pet_id: 2, image_url: "https://www.filepicker.io/api/file/LemJSjkQDarroUjgOhgX" )
Image.create(pet_id: 2, image_url: "https://www.filepicker.io/api/file/NycIc5hRRKeYahyfBq5j" )
Image.create(pet_id: 2, image_url: "https://www.filepicker.io/api/file/biMqxMEQMSoB0WCDHx1A")
Image.create(pet_id: 2, image_url: "https://www.filepicker.io/api/file/mIsXMLT5ROWRxspclyL9")
Image.create(pet_id: 2, image_url: "https://www.filepicker.io/api/file/K0tf8T6Q8CMd0p5xHJlY")
Image.create(pet_id: 2, image_url: "https://www.filepicker.io/api/file/U95SsxgKSAOgyoybnaiT")


Image.create(pet_id: 3, image_url: "https://www.filepicker.io/api/file/dIIJQKyDSFGph56SgTFu" )
Image.create(pet_id: 3, image_url: "https://www.filepicker.io/api/file/GrXktTJtSNWfSkJgbO3L")
Image.create(pet_id: 3, image_url: "https://www.filepicker.io/api/file/ny18x79T7eeeBYzY4mtQ")
Image.create(pet_id: 3, image_url: "https://www.filepicker.io/api/file/EWFwc2JFTCK46fx8rvFc" )


#other
Image.create(pet_id: 4, image_url: "https://www.filepicker.io/api/file/ljL4rfmS8Kd4N7Ouo0MB" )
Image.create(pet_id: 4, image_url: "https://www.filepicker.io/api/file/qn0tGwfTL25t0B9jcrLG" )
Image.create(pet_id: 4, image_url: "https://www.filepicker.io/api/file/8obQjZUxSCCwTQ1GOQOf" )
Image.create(pet_id: 5, image_url: "https://www.filepicker.io/api/file/0QXrqZtSSCGkI79NIHxi" )
Image.create(pet_id: 5, image_url: "https://www.filepicker.io/api/file/lnaDahiYSSinhiAbDGGD" )
Image.create(pet_id: 5, image_url: "https://www.filepicker.io/api/file/00SIrxuMS4qsMYQ7KKPg" )
Image.create(pet_id: 6, image_url: "https://www.filepicker.io/api/file/yYm4cCgpSL6MqYTp6znV" )
Image.create(pet_id: 6, image_url: "https://www.filepicker.io/api/file/qn0tGwfTL25t0B9jcrLG" )
Image.create(pet_id: 6, image_url: "https://www.filepicker.io/api/file/8obQjZUxSCCwTQ1GOQOf" )
Image.create(pet_id: 7, image_url: "https://www.filepicker.io/api/file/84X79mzQjey05aSHUs8S" )
Image.create(pet_id: 7, image_url: "https://www.filepicker.io/api/file/ljL4rfmS8Kd4N7Ouo0MB" )

#red
Image.create(pet_id: 8, image_url: "https://www.filepicker.io/api/file/gNnqFFVSjORvVVjcEUZQ")
Image.create(pet_id: 8, image_url: "https://www.filepicker.io/api/file/0g0LuvuySqGLKFUVpvFg")
Image.create(pet_id: 8, image_url: "https://www.filepicker.io/api/file/NoIJUrdS0O0pH0lq0pog")
Image.create(pet_id: 8, image_url: "https://www.filepicker.io/api/file/TEzho6n9TSObrp8zOZlg" )
Image.create(pet_id: 8, image_url: "https://www.filepicker.io/api/file/YS6Zu0ADQ72MoRRTkYLr")
Image.create(pet_id: 8, image_url: "https://www.filepicker.io/api/file/Ha3CzBtTflLKrtw1amkA" )
Image.create(pet_id: 8, image_url: "https://www.filepicker.io/api/file/qA2PQikFQ621lsZaZ7eO")
Image.create(pet_id: 8, image_url: "https://www.filepicker.io/api/file/1UZOtOmmR26JVS6kFv1P")
Image.create(pet_id: 8, image_url: "https://www.filepicker.io/api/file/ohf2ME6DRDKSYMQIHwwP" )
Image.create(pet_id: 8, image_url: "https://www.filepicker.io/api/file/Ea3JFaSdWmnGnIEG7R9Q")
Image.create(pet_id: 8, image_url: "https://www.filepicker.io/api/file/uCzRWSQIRuulsOYPuYIa")
Image.create(pet_id: 8, image_url: "https://www.filepicker.io/api/file/ep8u0sSwuYeC1Fiq7X9A" )
Image.create(pet_id: 8, image_url: "http://www.foodiggity.com/wp-content/uploads/2013/05/sushi-cats-2.jpeg" )

Image.create(pet_id: 9, image_url: "https://www.filepicker.io/api/file/ohf2ME6DRDKSYMQIHwwP" )
Image.create(pet_id: 9, image_url: "https://www.filepicker.io/api/file/Ea3JFaSdWmnGnIEG7R9Q")
Image.create(pet_id: 10, image_url: "https://www.filepicker.io/api/file/uCzRWSQIRuulsOYPuYIa")
Image.create(pet_id: 10, image_url: "https://www.filepicker.io/api/file/8cWj3ZLSIOXLypKvtggK" )
Image.create(pet_id: 11, image_url: "https://www.filepicker.io/api/file/lnaDahiYSSinhiAbDGGD" )
Image.create(pet_id: 11, image_url: "https://www.filepicker.io/api/file/00SIrxuMS4qsMYQ7KKPg" )
Image.create(pet_id: 12, image_url: "https://www.filepicker.io/api/file/PBqo02RrQIOuAKO43Pej" )
Image.create(pet_id: 12, image_url: "https://www.filepicker.io/api/file/FmvUk9RQk2xIn7nHDCkw" )
Image.create(pet_id: 13, image_url: "https://www.filepicker.io/api/file/K0tf8T6Q8CMd0p5xHJlY" )
Image.create(pet_id: 13, image_url: "https://www.filepicker.io/api/file/ohf2ME6DRDKSYMQIHwwP" )
Image.create(pet_id: 14, image_url: "https://www.filepicker.io/api/file/qn0tGwfTL25t0B9jcrLG" )
Image.create(pet_id: 14, image_url: "https://www.filepicker.io/api/file/8obQjZUxSCCwTQ1GOQOf" )
Image.create(pet_id: 9, image_url: "https://www.filepicker.io/api/file/NycIc5hRRKeYahyfBq5j" )
Image.create(pet_id: 10, image_url: "https://www.filepicker.io/api/file/biMqxMEQMSoB0WCDHx1A")
Image.create(pet_id: 11, image_url: "https://www.filepicker.io/api/file/mIsXMLT5ROWRxspclyL9")
Image.create(pet_id: 12, image_url: "https://www.filepicker.io/api/file/K0tf8T6Q8CMd0p5xHJlY")
Image.create(pet_id: 9, image_url: "https://www.filepicker.io/api/file/U95SsxgKSAOgyoybnaiT")


# Dr. evil
Image.create(pet_id: 15, image_url: "https://www.filepicker.io/api/file/jiXCK0RvTfCOW9RHOYaV")
Image.create(pet_id: 15, image_url: "https://www.filepicker.io/api/file/q5WBG57oQSnuY8jJl5fd")
Image.create(pet_id: 15, image_url: "https://www.filepicker.io/api/file/FmvUk9RQk2xIn7nHDCkw" )
Image.create(pet_id: 15, image_url: "https://www.filepicker.io/api/file/F0SKnMdTaO0cqM9Kxczp")
Image.create(pet_id: 15, image_url: "https://www.filepicker.io/api/file/s6Rj6JnsQ6ysULTTSjkl")