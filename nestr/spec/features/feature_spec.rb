require 'spec_helper'

describe "#index" do 

  describe "Given that I visit the home page" do
    before do
      visit root_path
    end

    it "should display link to renter login" do
      find_link('I am a Renter!').click
      # locate('input#name').value eq('I am a Renter!')
      # redirect_to renter_path
      visit('/renter/login')
    end

    it "should display link to broker login" do 
      find_link('I am a Broker!').click
      visit('/broker/login')
      # .click
      # redirect_to broker_path
    end

  end

end