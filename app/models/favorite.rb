class Favorite < ActiveRecord::Base
  attr_accessible :apartment_id, :user_id, :user, :apartment

  belongs_to :user #=> foreign key user_id (ActiveRecord knows to use the user_id)
  belongs_to :apartment #=> foreign key apartment_id (ActiveRecord knows to use the apartment_id)
end
