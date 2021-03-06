json.array! @pets do |pet| 
  json.extract! pet, :id, :owner_id, :name, :age, :color, :gender, :gender, :image_url, :bio, :animal, :address, :city, :state, :zipcode, :lat, :lng


  json.pet_rental_requests pet.pet_rental_requests do |pet_rental_request|
    json.start_date pet_rental_request.start_date
    json.end_date pet_rental_request.end_date
    json.status pet_rental_request.status
    json.requester_id pet_rental_request.requester_id
    json.pet_id pet_rental_request.pet_id
  end

end