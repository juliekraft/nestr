class CreateApartments < ActiveRecord::Migration
  def change
    create_table :apartments do |t|
      t.string :address
      t.float :price
      t.integer :bedrooms
      t.integer :bathrooms
      t.string :photo

      t.timestamps
    end
  end
end
