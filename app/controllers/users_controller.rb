class UsersController < ApplicationController

  def index

    if current_user == nil
      redirect_to "/users/sign_up"
    elsif current_user.is_a_broker
      render :"broker/index"
    else 
      render :"renter/index"
    end

  end

    def add_favorite 
      # render json: {:params => params, :current_user => current_user}
      # {"params":{"controller":"users","action":"add_favorite","apartment_id":"1"},"current_user":{"created_at":"2014-01-15T19:22:51Z","email":"julie@renter.com","id":6,"is_a_broker":false,"name":"Julie Renter","updated_at":"2014-01-16T21:51:45Z"}}
      user_id = current_user.id
      apartment_id = params[:apartment_id]

      user = User.find(user_id)
      apartment = Apartment.find(apartment_id)

      favorite = Favorite.create(user: user, apartment: apartment)

      redirect_to renter_home_path 
    end

    def unfavorite
      # no
      # @apt = Apartment.find(params[:apartment_id])
      # @favorite = Favorite.find(params[:favorite_id])

      favorite = Favorite.where(user_id: current_user.id, apartment_id: params[:apartment_id]).first
      favorite.destroy

      redirect_to renter_home_path 
      # render json: {:params => params, :current_user => current_user}
    end

end









