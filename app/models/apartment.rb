class Apartment < ActiveRecord::Base
  attr_accessible :bathrooms, :bedrooms, :photo, :price, :street, :city, :state, :zipcode, :region, :longitude, :latitude

  has_many :favorites
  has_many :users, through: :favorites
end
