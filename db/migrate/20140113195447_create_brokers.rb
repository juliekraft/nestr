class CreateBrokers < ActiveRecord::Migration
  def change
    create_table :brokers do |t|
      t.string :username
      t.string :name
      t.string :firm
      t.string :phone
      t.string :certification

      t.timestamps
    end
  end
end
