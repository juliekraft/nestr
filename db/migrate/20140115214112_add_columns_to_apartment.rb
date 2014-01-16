class AddColumnsToApartment < ActiveRecord::Migration
  def change
      add_column :apartments, :street, :string
      add_column :apartments, :city, :string
      add_column :apartments, :state, :string
      add_column :apartments, :zipcode, :string
      add_column :apartments, :region, :string
      add_column :apartments, :longitude, :string
      add_column :apartments, :latitude, :string
  end
end