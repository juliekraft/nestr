class Apartment < ActiveRecord::Base
  attr_accessible :address, :bathrooms, :bedrooms, :photo, :price
end
