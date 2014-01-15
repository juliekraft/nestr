class DropBrokersTable < ActiveRecord::Migration
  def change
    drop_table :brokers
  end
end
