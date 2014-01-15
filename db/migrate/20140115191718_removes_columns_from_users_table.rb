class RemovesColumnsFromUsersTable < ActiveRecord::Migration
  def change
    remove_column :users, :broker
    remove_column :users, :username
  end
end

#<User id: nil, email: "", encrypted_password: "", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 0, current_sign_in_at: nil, last_sign_in_at: nil, current_sign_in_ip: nil, last_sign_in_ip: nil, name: nil, username: nil, broker: nil, created_at: nil, updated_at: nil, is_a_broker: false>
