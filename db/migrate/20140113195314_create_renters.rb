class CreateRenters < ActiveRecord::Migration
  def change
    create_table :renters do |t|
      t.string :username
      t.string :name
      t.string :phone
      t.string :email

      t.timestamps
    end
  end
end
