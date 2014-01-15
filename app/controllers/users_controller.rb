class UsersController < ApplicationController

  # def login

  # end

  # def create

  # end

  def index
    # if current_user[:is_a_broker]
    #   redirect_to_root_path
    # else
    #   redirect_to '/users/renter_index'
    # end
    #THIS IF STATEMENT ISN'T WORKING -- it just goes to root path
    # @is_broker = current_user.find(params[:is_a_broker]) #???
    if current_user.is_a_broker
      render :"broker/index"
    elsif current_user == nil
      redirect_to new_user_registration_path
    else 
      render :"renter/index"
    end
  end

end