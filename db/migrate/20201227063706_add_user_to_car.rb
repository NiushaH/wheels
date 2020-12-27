class AddUserToCar < ActiveRecord::Migration[6.0]
  def change
    add_column :cars, :driver_user_id, :integer
    add_index :cars, :driver_user_id
  end
end
