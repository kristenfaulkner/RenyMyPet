module Api
  class PetsController < ApplicationController
    def create
      @pet = Pet.new(pet_params)
      @pet.owner_id = current_user.id
        
      if @pet.save
        render json: @pet
      else
        flash[:notice] = "Invalid Pet! Please Try Again"
        render json: @pet.errors.full_messages, status: :unprocessable_entity
      end
    end
  
    def show
      @pet = Pet.find(params[:id])
      @pet_rental_requests = PetRentalRequest.all.select {|rental| rental.pet_id == @pet.id }
      @user = current_user
      render :show
      # render json: @pet, include: [:owner, :pet_rental_requests, :images]
    end
    
    def index
      @pets = Pet.all
      user_token = session[:session_token]
      @user = current_user
      render :index
    end
    
    def edit
      @pet = Pet.find(params[:id])
      render :edit
    end
    
    def update
      @pet = Pet.find(params[:id])
      if @pet.update(pet_params)
        render :json => @pet
      else
        render :json => @pet.errors.full_messages, status: :unprocessable_entity
      end
    end
  
    def destroy
      @pet = Pet.find(params[:id])
      @pet.destroy
      render :json => {}
    end
    
    private
  
    def pet_params
      params.require(:pet).permit(:owner_id, :name, :age, :color, :gender, :gender, :image_url, :bio, :animal, :address, :city, :state, :zipcode, :lat, :lng)
    end
  end
end