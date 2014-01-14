class RemoveColumnsEmailPhoneUsernameFromRenter < ActiveRecord::Migration
  def change
    remove_column :renters, :email
    remove_column :renters, :username
    remove_column :renters, :phone
  end
end
