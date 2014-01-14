class DropColumnsUsernameFirmPhoneCertificationFromBrokers < ActiveRecord::Migration
  def change
    remove_column :brokers, :username
    remove_column :brokers, :firm
    remove_column :brokers, :phone
    remove_column :brokers, :certification
  end
end
