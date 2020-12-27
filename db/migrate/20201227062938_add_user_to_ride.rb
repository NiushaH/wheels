class AddUserToRide < ActiveRecord::Migration[6.0]
  def change
    add_column :rides, :hitchhiker_user_id, :integer
    add_index :rides, :hitchhiker_user_id
    add_column :rides, :driver_user_id, :integer
    add_index :rides, :driver_user_id
  end
end
