class DropColumnAddressFromApartment < ActiveRecord::Migration
  def change
    remove_column :apartments, :address
  end
end
