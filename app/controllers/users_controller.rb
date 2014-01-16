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

end









