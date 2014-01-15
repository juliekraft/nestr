class AddColumnBrokerBooleanToUser < ActiveRecord::Migration
  def change
    add_column :users, :is_a_broker, :boolean, default: false
  end
end
