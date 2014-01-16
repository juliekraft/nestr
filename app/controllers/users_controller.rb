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


# PARSE YR API USING RILLOW GEM
# rillow = Rillow.new('X1-ZWz1bb4i44az9n_7oq0o')
# result = rillow.get_search_results('#{address}','#{city, ST}')
# result.to_hash 
# street = result["response"][0]["results"][0]["result"][0]["address"][0]["street"][0]
# city = result["response"][0]["results"][0]["result"][0]["address"][0]["city"][0]
# state = result["response"][0]["results"][0]["result"][0]["address"][0]["state"][0]
# zipcode = result["response"][0]["results"][0]["result"][0]["address"][0]["zipcode"][0]
# longitude = result["response"][0]["results"][0]["result"][0]["address"][0]["longitude"][0]
# laitude = result["response"][0]["results"][0]["result"][0]["address"][0]["latitude"][0]
# region = result["response"][0]["results"][0]["result"][0]["localRealEstate"][0]["region"][0]["name"]

#apartment attr_accessors:::::> :address, :bathrooms, :bedrooms, :photo, :price
#drop address
#add region, longitude, latitude, street, city, state, zipcode










