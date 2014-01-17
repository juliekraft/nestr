class FavoritesController < ApplicationController

  #DOES THIS NEED TO GO HERE OR STAY IN THE APTS CONTROLLER???
  # def index
  #   user_id = params[:user_id]
  #   apartment_id = params[:apartment_id]

  #   @user = User.find(user_id)
  #   apartment = Apartment.find(apartment_id)

  #   favorite = Favorite.create(user: user, apartment: apartment)

  #   redirect_to renter_home_path
  # end
  
end

# THIS IS IN APARTMENTS CONTROLLER
  # def favorite
  #   user_id = params[:user_id]
  #   apartment_id = params[:apartment_id]

  #   user = User.find(user_id)
  #   apartment = Apartment.find(apartment_id)

  #   favorite = Favorite.create(user: user, apartment: apartment)

  #   redirect_to users_index_path
  # end