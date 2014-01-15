class ApartmentController < ApplicationController

  def index
    @apts = Apartment.all
  end

end