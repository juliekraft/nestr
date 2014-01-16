class Apartment < ActiveRecord::Base
  attr_accessible :bathrooms, :bedrooms, :photo, :price, :street, :city, :state, :zipcode, :region, :longitude, :latitude


end
