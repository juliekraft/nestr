class UsersController < ApplicationController

  def index
    # if current_user[:is_a_broker]
    #   redirect_to_root_path
    # else
    #   redirect_to '/users/renter_index'
    # end
    #THIS IF STATEMENT ISN'T WORKING -- it just goes to root path
    # @is_broker = current_user.find(params[:is_a_broker]) #???

    # new_user_registration GET    /users/sign_up(.:format)       devise/registrations#new

    if current_user == nil
      redirect_to "/users/sign_up" #IDK
      #render :""
    elsif current_user.is_a_broker
      render :"broker/index"
    else 
      render :"renter/index"
    end
  end

end