class AddRideToUser < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :ride_id, :integer
    add_index :users, :ride_id
  end
end
